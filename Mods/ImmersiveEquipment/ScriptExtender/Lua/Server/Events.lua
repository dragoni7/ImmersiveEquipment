
Ext.Osiris.RegisterListener("EnteredCombat", 2, "after", function (guid, combatid)

    -- Remove Cloaker Lord Invis
    if (guid == "IE_Cloaker_Lord_b81dd088-141f-4dc6-89ec-1376aaf55303") then
        RemoveStatus(guid,"INVISIBLE", "")
    end
end)