
Ext.Osiris.RegisterListener("EnteredCombat", 2, "after", function (object, combatGuid)

    -- Remove Cloaker Lord Invis
    if (object == "IE_Cloaker_Lord_b81dd088-141f-4dc6-89ec-1376aaf55303") then
        RemoveStatus(object,"INVISIBLE", "")
    end
end)

Ext.Osiris.RegisterListener("StartAttack", 4, "before", function(defender, attacker, storyActionID, attackOwner) 
    if (HasPassive(attacker, "IE_Source_Hunger") == 1) then
        ApplyDamage(defender, Osi.GetActionResourceValuePersonal(attacker, "SorceryPoint", 0) * 2, "Necrotic", attacker)
        PlaySound(attacker, "Spell_Impact_Damage_Necrotic_ChillTouch_L1to3")
    end
end)
