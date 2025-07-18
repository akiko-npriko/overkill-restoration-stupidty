Hooks:PostHook(WeaponFactoryTweakData, "init", "BigGlockModInit", function(self)
	local wpn_id = "wpn_fps_pis_bigglock"
	for _, part_id in pairs(self.parts) do
		if part_id.type == "sight" and part_id.stance_mod and part_id.a_obj == "a_rds" then
			if part_id.stance_mod[wpn_id] and part_id.stance_mod[wpn_id].translation then
				part_id.stance_mod[wpn_id].translation = (part_id.stance_mod[wpn_id].translation * 2.5)
			end
		end
	end
end)