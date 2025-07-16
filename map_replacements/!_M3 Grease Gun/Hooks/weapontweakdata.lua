Hooks:PostHook( WeaponTweakData, "init", "m3ModInit", function(self)
if not self.m3_crew then
	self.m3_crew = deep_clone(self.m45_crew)
end
if not self.x_m3_crew then
	self.x_m3_crew = deep_clone(self.x_m45_crew)
end
if self.SetupAttachmentPoint then
	self:SetupAttachmentPoint("m3", {
		name = "a_b",
		base_a_obj = "a_b",
		position = Vector3(0, 1, 0.85),
		rotation = Rotation(0, 0, 0)
	})
    self:SetupAttachmentPoint("m3", {
		name = "a_fl",
		base_a_obj = "a_fl",
		position = Vector3(0.2, -21, 0.5),
		rotation = Rotation(0, 0, 0)
	})
    self:SetupAttachmentPoint("m3", {
		name = "a_o",
		base_a_obj = "a_o",
		position = Vector3(0, -17, 1),
		rotation = Rotation(0, 0, 0)
	})
	self:SetupAttachmentPoint("x_m3", {
		name = "a_b",
		base_a_obj = "a_b",
		position = Vector3(0, 1, 0.85),
		rotation = Rotation(0, 0, 0)
	})
    self:SetupAttachmentPoint("x_m3", {
		name = "a_fl",
		base_a_obj = "a_fl",
		position = Vector3(0.2, -21, 0.5),
		rotation = Rotation(0, 0, 0)
	})
end
end )