Hooks:PostHook(WeaponTweakData, "init", "LSATModInit", function(self)
if not self.lsat_crew then
	self.lsat_crew = deep_clone(self.m249_crew)
end
if self.SetupAttachmentPoint then
	self:SetupAttachmentPoint("lsat", {
		name = "a_b",
		base_a_obj = "a_b",
		position = Vector3(0, -11.75, 0)
	})
	self:SetupAttachmentPoint("lsat", {
		name = "a_b_long",
		base_a_obj = "a_b",
		position = Vector3(0, 0.2, 0)
	})
	self:SetupAttachmentPoint("lsat", {
		name = "a_b_short",
		base_a_obj = "a_b",
		position = Vector3(0, -23.1, 0)
	})
	self:SetupAttachmentPoint("lsat", {
		name = "a_fl",
		base_a_obj = "a_fl",
		position = Vector3(0.6, 2, -1.3)
	})
	self:SetupAttachmentPoint("lsat", {
		name = "a_m2",
        base_a_obj = "a_m",
		part_attach_data = {{"wpn_fps_lmg_lsat_mag_anim"},"g_mag_lod0"}
	})
	self:SetupAttachmentPoint("lsat", {
		name = "a_o",
		base_a_obj = "a_o",
		position = Vector3(0, -1, -1.15)
	})
end
end)