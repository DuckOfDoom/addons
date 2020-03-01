local itemsInSets = {}

local locations = {}

local function DumpTable(t)
    for k,v in pairs(t) do
        print ("Key:".. k .. "Value:" .. v);
    end
end

local function FillItems()
    sets = GetNumEquipmentSets();

    print("sets: " .. sets);

    if (sets == 0) then
        itemsInSets = {}
        return;
    end

    for i = 1,sets do
        setName = GetEquipmentSetInfo(i)
        print(setName);
        ids = GetEquipmentSetItemIDs(setName);

        --        DumpTable(ids);

        for key,value in pairs(ids) do 
            if (itemsInSets[value] == nil) then
                itemsInSets[value] = info
            else
                itemsInSets[value].insert(info)
            end
        end

    end
end

local function UpdateItemSets()
--    FillItems();


end

local function UpdateContainerFrame(frame, bag, slot)
if (not frame.equipmentinfo) then
		frame.equipmentinfo = frame:CreateFontString(nil, "OVERLAY")
		frame.equipmentinfo:FontTemplate(E.media.font, 12, "THINOUTLINE")
		frame.equipmentinfo:SetWordWrap(true)
		frame.equipmentinfo:SetJustifyH('CENTER')
		frame.equipmentinfo:SetJustifyV('MIDDLE')
	end

end

local frame = CreateFrame("Frame", nil, UIParent);
--frame:SetScript("OnShow", function(self)
--    UpdateItemSets(self)
--end)

frame:SetScript("OnEvent", function(self, event, ...)
    if (event == "BAG_UPDATE") then
        UpdateItemSets(self)
    end
end)

frame:RegisterEvent("BAG_UPDATE");
frame:Show();
