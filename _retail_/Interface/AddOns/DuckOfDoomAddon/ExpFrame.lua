SLASH_DUCKOFDOOMADDON1 = "/dodshow"

SlashCmdList["DUCKOFDOOMADDON"] = function(msg)
  Init();
end

local settings;

local frame;
local text
local Events = { }

function Init()
    frame = CreateFrame("Frame", nil, UIParent, "UIPanelDialogTemplate")
    frame:RegisterEvent("ADDON_LOADED")
    frame:RegisterEvent("PLAYER_XP_UPDATE")
    frame:RegisterEvent("UNIT_AURA")
    frame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
    frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
--    frame:SetScript("OnEvent", OnEvent)
    frame:SetScript("OnEvent", function (_,e,arg1, arg2, arg3) Events[e](arg1, arg2, arg3) end)

    frame:SetPoint("TOPLEFT")
    frame:SetSize(300, 100)

    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", OnFrameMoveStop)

    text = frame:CreateFontString(nil, "OVERLAY");
    text:SetFont("Fonts\\FRIZQT___CYR.TTF", 16, "OUTLINE");
    text:SetPoint("LEFT", 25, 0);

    text:SetJustifyH("LEFT");
    text:SetTextColor(.75, .75, 1)
end

function OnFrameMoveStop()
    local p, rel, rp, x, y = frame:GetPoint()
    settings.position = {x, y} --frame:GetPoint()
    frame:StopMovingOrSizing()
end

function f(value)    
   local w = 4
   local p = math.ceil(math.log10(value))
   local prec = value <= 1 and w - 1 or p > w and 0 or w - p
   return string.format('%.' .. prec .. 'f', value)
end

local prevExp = UnitXP('player')

function Events.ADDON_LOADED(...)
    settings = DUCK_OF_DOOM_SETTINGS

    if (settings == nil) then
        settings = {}
        settings.position = {0, 0}

        DUCK_OF_DOOM_SETTINGS = settings
    end

    local p = settings.position 
    frame:SetPoint("TOPLEFT", p[1], p[2])
end

function Events.PLAYER_XP_UPDATE(arg1, ...)
    if (arg1 ~= "player") then
            return
    end

    local max = UnitXPMax('player')
    local curr = UnitXP('player')
    local perccurr = curr / max * 100
    local diff = curr - prevExp
    local percdiff = diff / max * 100
    local t = f(diff) .. "(" .. f(percdiff) .. "%) - " .. f(perccurr) .. "% " .. f((max - curr) / diff)
    text:SetText(t)

    prevExp = curr
end

function Events.UNIT_AURA(unit, ...)
  if (unit ~= "player") then return end

  for i = 1, 40 do 
    name = UnitAura("player", i)
    if name then
--      print(name)
    end
  end
end

-- https://wow.gamepedia.com/COMBAT_LOG_EVENT
function Events:COMBAT_LOG_EVENT_UNFILTERED(guid, name, ...)
  --print(name)
end

function Events.UNIT_SPELLCAST_SUCCEEDED(caster, _, spellId)
    if (caster ~= "player") then return end

    name, rank, icon, castTime, minRange, maxRange, spellId = GetSpellInfo(spellId)
--    print(name)

    text:SetText(name)
end

Init();
