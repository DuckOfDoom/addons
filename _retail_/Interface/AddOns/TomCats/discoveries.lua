--[[ See license.txt for license and copyright information ]]
local addonName, addon = ...

local AlertFrame = AlertFrame
local BlizzardOptionsPanel_OnLoad = BlizzardOptionsPanel_OnLoad
local C_Map = C_Map
local C_VignetteInfo = C_VignetteInfo
local CreateFrame = CreateFrame
local InterfaceAddOnsList_Update = InterfaceAddOnsList_Update
local InterfaceOptions_AddCategory = InterfaceOptions_AddCategory
local InterfaceOptionsPanel_Cancel = InterfaceOptionsPanel_Cancel
local InterfaceOptionsPanel_Default = InterfaceOptionsPanel_Default
local InterfaceOptionsPanel_Refresh = InterfaceOptionsPanel_Refresh
local PlaySound = PlaySound
local SOUNDKIT = SOUNDKIT

local checkedVignetteGUIDs
local discoveredVignettes
local discoveredVignetteAtlases
local interval = 3
local lastVignetteMapID
local timeSinceLastUpdate = 0
local vignettes
local TomCatsDiscoveryAlertSystem
local TomCats_Config = TomCats_Config
local TomCats_ConfigDiscoveries = TomCats_ConfigDiscoveries

local atlasNameBlackList = { }
local atlasNameWhiteList = { }

do
	local tmp1 = {
		["Warfront-NeutralHero"] = true, -- special events in the maw
		["poi-nzothpylon"] = true, -- minor n'zoth vision
		["VignetteEventElite"] = true, -- special events in the n'zoth zones
		["VignetteLoot"] = true, -- Black Empire Cache
		["VignetteKillElite"] = true, -- special elite in the n'zoth zones
		["nazjatar-nagaevent"] = true, -- purple skulls esp. in Nazjatar
		["PortalRed"] = true, -- chaotic riftstone (maw)
		["PortalBlue"] = true, -- animaflow teleporter (maw)
		["poi-soulspiritghost"] = true, -- souls in the maw
		["VignetteKillElite"] = true, -- Beastwarrens in the maw
		["Profession"] = true, -- Soulsteel Anvil in the maw
		["poi-graveyard-neutral"] = true, -- player's corpse location in the maw
	}
	for k in pairs(tmp1) do
		atlasNameBlackList[string.lower(k)] = true
	end
	local tmp2 = {
		["VignetteEvent"] = true, -- star icon (sl)
		["VignetteKill"] = true, -- star icon (bfa)
	}
	for k in pairs(tmp2) do
		atlasNameWhiteList[string.lower(k)] = true
	end
	TomCats_ConfigDiscoveries.name = "Discoveries"
	TomCats_ConfigDiscoveries.parent = "TomCat's Tours"
	TomCats_ConfigDiscoveries.controls = { }
	TomCats_ConfigDiscoveries.Header.Text:SetFont(TomCats_ConfigDiscoveries.Header.Text:GetFont(), 64)
	BlizzardOptionsPanel_OnLoad(
			TomCats_ConfigDiscoveries,
			function(self)
				for _, v in ipairs(self.controls) do
					if (v.okay) then v:okay() end
				end
			end,
			InterfaceOptionsPanel_Cancel,
			InterfaceOptionsPanel_Default,
			InterfaceOptionsPanel_Refresh
	)
	InterfaceOptions_AddCategory(TomCats_ConfigDiscoveries)
	InterfaceAddOnsList_Update()
end

local function serializeTable(val, key)
	local tmp
	if (key) then
		if (type(key) == "string") then
			tmp = "[\"" .. key .. "\"]="
		else
			tmp = "[" .. key .. "]="
		end
	else
		tmp = ""
	end
	if type(val) == "table" then
		tmp = tmp .. "{"
		for k, v in pairs(val) do
			tmp =  tmp .. serializeTable(v, k) .. ","
		end
		tmp = tmp .. "}"
	elseif type(val) == "number" then
		tmp = tmp .. tostring(val)
	elseif type(val) == "string" then
		tmp = tmp .. string.format("%q", val)
	elseif type(val) == "boolean" then
		tmp = tmp .. (val and "true" or "false")
	else
		tmp = tmp .. "\"[inserializeable datatype:" .. type(val) .. "]\""
	end
	return tmp
end

local function OnHyperlinkClick(self, link)
	if (self.popup:IsShown() and link == self.popup.lastLink) then
		self.popup.lastLink = nil
		self.popup:Hide()
		return
	end
	self.popup.lastLink = link
	if (link == "discoveries") then
		self.popup.editbox.text = addon.base64.encode(serializeTable(_G["TomCats_Account"].discoveries))
		self.popup.info:SetText("Press Control-C to copy the data")
	else
		self.popup.editbox.text = "https://" .. link
		self.popup.info:SetText("Press Control-C to copy the link")
	end
	self.popup.editbox:SetText(self.popup.editbox.text)
	self.popup.editbox:HighlightText()
	self.popup:Show()
	self.popup.editbox:SetFocus()
	self.popup:SetFrameStrata("TOOLTIP")
end

local function OnHyperlinkEnter(self, link, _, fontString)
	self.linksHighlight = self.linksHighlight or self:CreateFontString()
	self.links = fontString
	self.linksHighlight:ClearAllPoints()
	self.linksHighlight:SetFont(self.links:GetFont())
	local text = self.links:GetText()
	text = string.gsub(text, "(|H.-|h)", "")
	text = string.gsub(text, "(|h)", "")
	text = string.gsub(text, link, "|cFFFFD100" .. link .. "|r")
	self.linksHighlight:SetText(text)
	self.linksHighlight:Show()
	for i = 1, self.links:GetNumPoints() do
		self.linksHighlight:SetPoint(self.links:GetPoint(i))
	end
	self.linksHighlight:SetSpacing(self.links:GetSpacing())
	self.linksHighlight:SetJustifyH(self.links:GetJustifyH())
	self.linksHighlight:SetShadowOffset(self.links:GetShadowOffset())
	self.linksHighlight:SetSize(self.links:GetSize())
	self.links:SetAlpha(0.1)
end

local function OnHyperlinkLeave(self)
	self.linksHighlight:Hide()
	self.links:SetAlpha(1.0)
end

TomCats_ConfigDiscoveries.html:SetScript("OnHyperlinkClick", OnHyperlinkClick)
TomCats_ConfigDiscoveries.html:SetScript("OnHyperlinkEnter", OnHyperlinkEnter)
TomCats_ConfigDiscoveries.html:SetScript("OnHyperlinkLeave", OnHyperlinkLeave)
TomCats_ConfigDiscoveries.discoveriesButton:SetScript("OnClick", function()
	OnHyperlinkClick(TomCats_ConfigDiscoveries.html, "discoveries")
end)

local vignetteIDBlackList = {
	[4435] = true,
	[4481] = true,
}

local function GetExtendedVignetteInfo(vignetteInfo, mapID)
	vignetteInfo.mapID = mapID
	local vignettePosition = C_VignetteInfo.GetVignettePosition(vignetteInfo.vignetteGUID, mapID)
	if (vignettePosition) then
		vignetteInfo.x = vignettePosition.x
		vignetteInfo.y = vignettePosition.y
	end
	return vignetteInfo
end

local function updateDiscoveryCount(amount)
	addon.discoveries = addon.discoveries or 0
	addon.discoveries = addon.discoveries + amount
	TomCats_Config.discoveriesButton:SetText(("Discoveries: %d"):format(addon.discoveries))
	TomCats_ConfigDiscoveries.discoveriesButton:SetText(("Discoveries: %d"):format(addon.discoveries))
	if (addon.discoveries == 0) then
		TomCats_ConfigDiscoveries.discoveriesButton:Disable()
	else
		TomCats_ConfigDiscoveries.discoveriesButton:Enable()
	end
end

local function OnUpdate(_, elapsed)
	timeSinceLastUpdate = timeSinceLastUpdate + elapsed
	if (timeSinceLastUpdate >= interval) then
		timeSinceLastUpdate = 0
		local mapID = C_Map.GetBestMapForUnit("player")
		if (mapID ~= lastVignetteMapID) then
			lastVignetteMapID = mapID
			vignettes = addon.getVignettes(lastVignetteMapID)
			checkedVignetteGUIDs = { }
		end
		if (vignettes) then
			local vignetteGUIDs = C_VignetteInfo.GetVignettes()
			if (#vignetteGUIDs ~= 0) then
				for _, v in ipairs(vignetteGUIDs) do
					if (not checkedVignetteGUIDs[v]) then
						checkedVignetteGUIDs[v] = true
						local vignetteInfo = C_VignetteInfo.GetVignetteInfo(v)
						if (vignetteInfo and not vignetteIDBlackList[vignetteInfo.vignetteID]) then
							local vignette = vignettes[vignetteInfo.vignetteID]
							if (vignetteInfo.type == 0) then
								local atlasName = string.lower(vignetteInfo.atlasName)
								if (atlasNameWhiteList[atlasName] and not vignette) then
									if (not discoveredVignettes[vignetteInfo.vignetteID]) then
										discoveredVignettes[vignetteInfo.vignetteID] = GetExtendedVignetteInfo(vignetteInfo, mapID)
										updateDiscoveryCount(1)
										TomCatsDiscoveryAlertSystem:AddAlert()
									end
								elseif (not atlasNameBlackList[atlasName] and not atlasNameWhiteList[atlasName]) then
									if (not discoveredVignetteAtlases[vignetteInfo.atlasName]) then
										discoveredVignetteAtlases[vignetteInfo.atlasName] = GetExtendedVignetteInfo(vignetteInfo, mapID)
										updateDiscoveryCount(1)
										TomCatsDiscoveryAlertSystem:AddAlert()
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

local function TomCatsDiscoveryAlertFrame_SetUp(frame)
	frame.Title:SetText("TomCat's Tours:");
	frame.Text:SetText("New discovery!");
	PlaySound(SOUNDKIT.UI_AZERITE_EMPOWERED_ITEM_LOOT_TOAST)
end

local function OnEvent(event, arg1)
	if (event == "ADDON_LOADED") then
		if (addonName == arg1) then
			TomCatsDiscoveryAlertSystem = AlertFrame:AddQueuedAlertFrameSubSystem("TomCatsDiscoveryAlertFrameTemplate", TomCatsDiscoveryAlertFrame_SetUp);
			if (addon.IsNewVersion) then
				_G["TomCats_Account"].discoveries.vignettes = { }
				_G["TomCats_Account"].discoveries.vignetteAtlases = { }
			end
			local discoveries = 0
			discoveredVignettes = _G["TomCats_Account"].discoveries.vignettes
			for _ in pairs(discoveredVignettes) do
				discoveries = discoveries + 1
			end
			discoveredVignetteAtlases = _G["TomCats_Account"].discoveries.vignetteAtlases
			for _ in pairs(discoveredVignetteAtlases) do
				discoveries = discoveries + 1
			end
			updateDiscoveryCount(discoveries)
			CreateFrame("Frame"):SetScript("OnUpdate", OnUpdate)
			addon.UnregisterEvent("ADDON_LOADED", OnEvent)
		end
	end
end

addon.RegisterEvent("ADDON_LOADED", OnEvent)
