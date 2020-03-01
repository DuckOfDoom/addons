SLASH_DUCKOFDOOMADDON1 = "/dodstart"

SlashCmdList["DUCKOFDOOMADDON"] = function(msg)
    Show();
end

function Show()
    print "this is show"
end

local settings;

local frame;
local text


function Init()
    frame = CreateFrame("Frame", nil, UIParent, "UIPanelDialogTemplate")
    frame:RegisterEvent("ADDON_LOADED")
    frame:RegisterEvent("PLAYER_XP_UPDATE")
    frame:SetScript("OnEvent", OnEvent)

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

local prevExp = UnitXP('player')
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

function OnEvent(self, event, arg1, ...)
    if (event == "ADDON_LOADED") then
        settings = DUCK_OF_DOOM_SETTINGS

        if (settings == nil) then
            settings = {}
            settings.position = {0, 0}

            DUCK_OF_DOOM_SETTINGS = settings
        end

        local p = settings.position 
        frame:SetPoint("TOPLEFT", p[1], p[2])
    end

    if (event == "PLAYER_XP_UPDATE") then
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
end


Init();
