Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "SVDModInit", function(self)
	if self.parts.wpn_fps_snp_svd_pso and self.parts.wpn_fps_upg_svd_irons then
		table.list_append(self.parts.wpn_fps_snp_svd_pso.forbids, {"wpn_fps_snp_svd_mount"})
		table.list_append(self.parts.wpn_fps_upg_svd_irons.forbids, {"wpn_fps_snp_svd_mount"})
	end
	local custom_wpn_id = "wpn_fps_snp_svd"
	local offset = Vector3(-0.375, -7, -0.175)
	for _, part_id in pairs(self.parts) do
		if part_id.type == "gadget" and part_id.sub_type == "second_sight" and part_id.stance_mod and part_id.a_obj == "a_o" then
			if part_id.stance_mod[custom_wpn_id] and part_id.stance_mod[custom_wpn_id].translation then
				part_id.stance_mod[custom_wpn_id].translation = (part_id.stance_mod[custom_wpn_id].translation + offset)
			end
		end
	end
end)