Hooks:PostHook(WeaponTweakData, "init", "M1919A6ModInit", function(self)
if not self.m1919a6_crew then
	self.m1919a6_crew = deep_clone(self.par_crew)
end
if self.SetupAttachmentPoint then
	self:SetupAttachmentPoint("m1919a6",{
		name = "a_b",
		base_a_obj = "a_b",
		position = Vector3(0, 0, -3.8)
	})
	self:SetupAttachmentPoint("m1919a6",{
		name = "a_b_m1917",
		base_a_obj = "a_b",
		position = Vector3(0, -6.525, -3.8)
	})
	self:SetupAttachmentPoint("m1919a6",{
		name = "a_bp",
		base_a_obj = "a_bp",
		position = Vector3(0, 36.35, -2.2)
	})
	self:SetupAttachmentPoint("m1919a6",{
		name = "a_body",
		base_a_obj = "a_body",
		position = Vector3(-0.075, 0, 0.2)
	})
	self:SetupAttachmentPoint("m1919a6",{
		name = "a_fl",
		base_a_obj = "a_fl",
		position = Vector3(-2, 5, 2.7),
		rotation = RotationCAP(0, 0, -90)
	})
	self:SetupAttachmentPoint("m1919a6",{
		name = "a_fl_m1917",
		base_a_obj = "a_fl",
		position = Vector3(-7.7, 5, 2.2),
		rotation = RotationCAP(0, 0, 180)
	})
	self:SetupAttachmentPoint("m1919a6",{
		name = "a_m",
		base_a_obj = "a_m",
		position = Vector3(1.925, 0.2, -2.8)
	})
	self:SetupAttachmentPoint("m1919a6",{
		name = "a_upper",
		base_a_obj = "a_upper",
		position = Vector3(0.075, -2.5, -2.2)
	})
end
end)