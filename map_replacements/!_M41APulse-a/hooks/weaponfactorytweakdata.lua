Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "XenoModInit", function(self)
	local custom_wpn_id = "wpn_fps_ass_xeno"
	local offset = Vector3(1.2, -3, 2.01)
	for _, part_id in pairs(self.parts) do
		if part_id.type == "second_sight" and part_id.a_obj == "a_o" and part_id.stance_mod[custom_wpn_id] then
			if part_id.stance_mod[custom_wpn_id].translation and not part_id.stance_mod[custom_wpn_id].offset_applied then
				part_id.stance_mod[custom_wpn_id].translation = (part_id.stance_mod[custom_wpn_id].translation + offset)
				part_id.stance_mod[custom_wpn_id].offset_applied = true
			end
		end
	end
end)