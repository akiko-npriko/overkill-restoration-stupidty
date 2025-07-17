
Hooks:PreHook(NewRaycastWeaponBase, "_update_stats_values", "reoilgunn_update_stats_values", function(self, disallow_replenish, ammo_data)
	local custom_stats = managers.weapon_factory:get_custom_stats_from_weapon(self._factory_id, self._blueprint)
	for part_id, stats in pairs(custom_stats) do
		if stats.railgunsttat then
			self._railgunsttat = deep_clone(stats.railgunsttat)
		end
	end
end)



Hooks:PreHook(NewRaycastWeaponBase, "get_damage_falloff", "insanidamagebuff", function(self, damage, col_ray, user_unit, dot_only)
	if self._parts.wpn_fps_special_roach_barrel and self._fire_mode == ids_volley and base:get_ammo_remaining_in_clip() == 10 then
		damage = damage * 10
	end
end)