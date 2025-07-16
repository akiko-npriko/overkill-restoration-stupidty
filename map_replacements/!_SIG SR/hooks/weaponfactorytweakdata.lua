Hooks:PostHook(WeaponFactoryTweakData, "init", "simp_sausage_romeo4t_mod_init", function(self)

	local custom_sight_id = "wpn_fps_upg_o_sig_sauer_romeo4t"
	local based_on_id = "wpn_fps_upg_o_specter"
	local offset = Vector3(0, 0, 0.1)
	if self.parts[custom_sight_id].stance_mod then
		for _, wpn_id in pairs(self.parts[custom_sight_id].stance_mod) do
			wpn_id.translation = (wpn_id.translation + offset)
	end
	end
	for _, part_id in pairs(self.parts) do
		if part_id.override and part_id.override[based_on_id] then
			part_id.override[custom_sight_id] = deep_clone(part_id.override[based_on_id])
			if part_id.override[custom_sight_id].stance_mod then
			for _, wpn_id in pairs(part_id.override[custom_sight_id].stance_mod) do
					wpn_id.translation = (wpn_id.translation + offset)
				end
			end
		end
	end 


	
end)