Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "M1894ModInit", function(self)
	local custom_wpn_id = "wpn_fps_snp_m1894"
	local stance_wpn_id = "wpn_fps_snp_tti"
	local offset = Vector3(0.48, 6, -1.8)
	for _, part_id in pairs(self[custom_wpn_id].uses_parts) do
		if self.parts[part_id].type == "sight" or self.parts[part_id].type == "gadget" then
			if self.parts[part_id].stance_mod and self.parts[part_id].stance_mod[stance_wpn_id] then
				self.parts[part_id].stance_mod[custom_wpn_id] = deep_clone(self.parts[part_id].stance_mod[stance_wpn_id])
			end
		end
	end
	for _, part_id in pairs(self.parts) do
		if part_id.type == "second_sight" and part_id.a_obj == "a_o" then
			if not part_id.stance_mod[custom_wpn_id] and part_id.stance_mod[stance_wpn_id] then
				part_id.stance_mod[custom_wpn_id] = part_id.stance_mod[stance_wpn_id]
			end
			if part_id.stance_mod[custom_wpn_id].translation and not part_id.stance_mod[custom_wpn_id].offset_applied then
				part_id.stance_mod[custom_wpn_id].translation = (part_id.stance_mod[custom_wpn_id].translation + offset)
				part_id.stance_mod[custom_wpn_id].offset_applied = true
			end
		end
	end
end)