Hooks:PostHook(WeaponTweakData, "init", "U100ModInit", function(self)
	self.ultimax_crew = deep_clone(self.scar_crew)
if self.SetupAttachmentPoint then
	self:SetupAttachmentPoint("ultimax", {
		name = "a_b",
		base_a_obj = "a_b",
		position = Vector3(0, -22, 0.675)
	})
	self:SetupAttachmentPoint("ultimax", {
		name = "a_b_long",
		base_a_obj = "a_b",
		position = Vector3(0, -15, 0.675)
	})
	self:SetupAttachmentPoint("ultimax", {
		name = "a_fl",
		base_a_obj = "a_fl",
		position = Vector3(0.1, 2.75, -1.775)
	})
	self:SetupAttachmentPoint("ultimax", {
		name = "a_o",
		base_a_obj = "a_o",
		position = Vector3(0, -13, 0)
	})
end
end)