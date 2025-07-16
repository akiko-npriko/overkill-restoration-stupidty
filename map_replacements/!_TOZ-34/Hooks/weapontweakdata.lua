Hooks:PostHook(WeaponTweakData, "init", "TOZ34ModInit", function(self)
	self.toz34_crew = deep_clone(self.b682_crew)
if self.SetupAttachmentPoint then
	self:SetupAttachmentPoint("toz34", {
		name = "a_fl",
        base_a_obj = "a_b",
		part_attach_data = {{"wpn_fps_shot_toz34_barrel","wpn_fps_upg_toz34_barrel_short"},"g_barrel_lod0"},
		position = Vector3(0.0, 32, -0.2),
		rotation = RotationCAP(0, 0, 90)
	})
	self:SetupAttachmentPoint("toz34", {
		name = "a_o",
        base_a_obj = "a_b",
		part_attach_data = {{"wpn_fps_shot_toz34_barrel","wpn_fps_upg_toz34_barrel_short"},"g_barrel_lod0"},
		position = Vector3(-0.022, 7.5, 4.8775)
	})
end
end)