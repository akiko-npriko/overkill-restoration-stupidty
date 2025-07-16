Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "FNSCARLModInit", function(self)
	if self.parts.wpn_fps_ass_scarl_ironsights then
		table.list_append(self.parts.wpn_fps_ass_scarl_ironsights.forbids, {"wpn_fps_ass_scarl_ironsights_fold","wpn_fps_upg_scarl_rail_midwest_ext"})
	end
	local custom_wpn_id = "wpn_fps_ass_scarl"
	local offset = Vector3(0, -5, 0)
	for _, part_id in pairs(self.parts) do
		if part_id.type == "second_sight" and part_id.a_obj == "a_o" and part_id.stance_mod[custom_wpn_id] then
			if part_id.stance_mod[custom_wpn_id].translation and not part_id.stance_mod[custom_wpn_id].offset_applied then
				part_id.stance_mod[custom_wpn_id].translation = (part_id.stance_mod[custom_wpn_id].translation + offset)
				part_id.stance_mod[custom_wpn_id].offset_applied = true
			end
		end
	end
end)