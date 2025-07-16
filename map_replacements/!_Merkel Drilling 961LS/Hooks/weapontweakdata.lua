Hooks:PostHook(WeaponTweakData, "init", "MerkelDrillingModInit", function(self)
	self.merkel_crew = deep_clone(self.b682_crew)
if self.SetupAttachmentPoint then
	self:SetupAttachmentPoint("merkel", {
		name = "a_fl",
        base_a_obj = "a_b",
		part_attach_data = {{"wpn_fps_snp_merkel_barrel","wpn_fps_upg_merkel_barrel_silver"},"g_barrel_lod0"},
		position = Vector3(-0.1, 66, -1),
		rotation = RotationCAP(0, 0, 90)
	})
	self:SetupAttachmentPoint("merkel", {
		name = "a_o",
        base_a_obj = "a_b",
		part_attach_data = {{"wpn_fps_snp_merkel_barrel","wpn_fps_upg_merkel_barrel_silver"},"g_barrel_lod0"},
		position = Vector3(-0.022, 9.5, 5.875)
	})
	self:SetupAttachmentPoint("merkel", {
		name = "a_o_sn3",
        base_a_obj = "a_b",
		part_attach_data = {{"wpn_fps_snp_merkel_barrel","wpn_fps_upg_merkel_barrel_silver"},"g_barrel_lod0"},
		position = Vector3(-0.022, 11.5, 6.28)
	})
end
end)