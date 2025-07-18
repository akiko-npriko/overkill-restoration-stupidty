Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "M200ModInit", function(self)
	local custom_wpn_id = "wpn_fps_snp_m200"
	local offset = Vector3(2.35, 0, -1.15)
	for _, part_id in pairs(self.parts) do
		if part_id.type == "second_sight" and part_id.a_obj == "a_o" and part_id.stance_mod[custom_wpn_id] then
			if part_id.stance_mod[custom_wpn_id].translation and not part_id.stance_mod[custom_wpn_id].offset_applied then
				part_id.stance_mod[custom_wpn_id].translation = (part_id.stance_mod[custom_wpn_id].translation + offset)
				part_id.stance_mod[custom_wpn_id].offset_applied = true
			end
		end
	end
end)