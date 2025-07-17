Hooks:PostHook( WeaponFactoryTweakData, "init", "mg34ModInit", function(self)
	local custom_wpn_id = "wpn_fps_lmg_mg34"
	local stance_wpn_id = "wpn_fps_ass_g36"
	for _, part_id in pairs(self[custom_wpn_id].uses_parts) do
		if self.parts[part_id].stance_mod then
			if self.parts[part_id].stance_mod[stance_wpn_id] then
				self.parts[part_id].stance_mod[custom_wpn_id] = deep_clone(self.parts[part_id].stance_mod[stance_wpn_id])
			end
		end
	end
	local switch_id = {
		"wpn_fps_upg_o_specter_piggyback",
		"wpn_fps_upg_o_cs_piggyback",
		"wpn_fps_upg_o_hamr_reddot",
		"wpn_fps_upg_o_atibal_reddot"
	}
	for index, part_id in pairs(switch_id) do
		if self.parts[part_id].stance_mod[stance_wpn_id] then
			self.parts[part_id].stance_mod[custom_wpn_id] = deep_clone(self.parts[part_id].stance_mod[stance_wpn_id])
		end
	end
end )
Hooks:PostHook(WeaponFactoryTweakData, "create_charms", "mg34ModInit", function(self)
	for _, charm_id in pairs(self.wpn_fps_lmg_mg34.uses_parts) do
		if self.parts[charm_id].type == "charm" then
			self.wpn_fps_lmg_mg34.override[charm_id] = {parent="upper_reciever"}
		end
	end
end)