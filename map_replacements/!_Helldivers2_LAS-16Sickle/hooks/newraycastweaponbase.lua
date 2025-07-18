
Hooks:PreHook(NewRaycastWeaponBase, "_update_stats_values", "pewpew_update_stats_values", function(self, disallow_replenish, ammo_data)
	local custom_stats = managers.weapon_factory:get_custom_stats_from_weapon(self._factory_id, self._blueprint)
	for part_id, stats in pairs(custom_stats) do
		if stats.sweetliberty then
			self._sweetliberty = deep_clone(stats.sweetliberty)
		end
	end
end)
