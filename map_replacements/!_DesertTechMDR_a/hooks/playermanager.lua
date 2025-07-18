Hooks:PreHook(PlayerManager, "spawned_player", "00567b33-3144-4b0f-a96e-34e1f7eebf6b", function(self)

    local primary = managers.blackmarket:equipped_primary()
    if primary and primary.weapon_id == "mdr_308" then
        tweak_data.weapon.contraband_m203.AMMO_MAX = 4
        tweak_data.weapon.contraband_m203.AMMO_PICKUP = {0.5,0.99}
    end
	
end)