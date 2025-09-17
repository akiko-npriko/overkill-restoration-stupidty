Hooks:PostHook(WeaponFactoryTweakData, "init", "PASAM_Submachine_Gun_Init", function(self)
	local custom_wpn_id = "wpn_fps_smg_c96carbine"
	local stance_wpn_id = "wpn_fps_pis_packrat"
	for _, part_id in pairs(self[custom_wpn_id].uses_parts) do
		if self.parts[part_id].type == "sight" or self.parts[part_id].type == "gadget" then
			if self.parts[part_id].stance_mod and self.parts[part_id].stance_mod[stance_wpn_id] then
				self.parts[part_id].stance_mod[custom_wpn_id] = deep_clone(self.parts[part_id].stance_mod[stance_wpn_id])
			end
		end
	end
end)