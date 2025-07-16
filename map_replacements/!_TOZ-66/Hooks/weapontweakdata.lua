Hooks:PostHook(WeaponTweakData, "init", "TOZ66ModInit", function(self)
	self.toz66_crew = deep_clone(self.coach_crew)
if self.SetupAttachmentPoint then
	self:SetupAttachmentPoint("toz66", {
		name = "a_o",
		base_a_obj = "a_b",
		part_attach_data = {{"wpn_fps_shot_toz66_barrel"},"g_short_barrel"},
		position = Vector3(0.025, 12, 2.18)
	})
end
end)