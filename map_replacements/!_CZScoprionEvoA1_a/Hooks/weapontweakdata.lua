Hooks:PostHook(WeaponTweakData, "init", "czevoModInit", function(self)
if self.SetupAttachmentPoint then
	self:SetupAttachmentPoint("czevo", {
		name = "a_fl",
		base_a_obj = "a_fl",
		position = Vector3(-1.1, 5, 0.6),
		rotation = Rotation(0, 0, 0)
	})
	self:SetupAttachmentPoint("czevo", {
		name = "a_b",
		base_a_obj = "a_b",
		position = Vector3(0, -0.9, 0),
		rotation = Rotation(0, 0, 0)
	})
	self:SetupAttachmentPoint("czevo", {
		name = "a_o",
		base_a_obj = "a_o",
		position = Vector3(0, -1, 1.5),
		rotation = Rotation(0, 0, 0)
	})
		self:SetupAttachmentPoint("czevo", {
		name = "a_b_long",
		base_a_obj = "a_b",
		position = Vector3(0, 7, 0),
		rotation = Rotation(0, 0, 0)
	})
	self:SetupAttachmentPoint("x_czevo", {
		name = "a_fl",
		base_a_obj = "a_fl",
		position = Vector3(-1.1, 5, 0.6),
		rotation = Rotation(0, 0, 0)
	})
	self:SetupAttachmentPoint("x_czevo", {
		name = "a_b",
		base_a_obj = "a_b",
		position = Vector3(0, -0.9, 0),
		rotation = Rotation(0, 0, 0)
	})
	self:SetupAttachmentPoint("x_czevo", {
		name = "a_o",
		base_a_obj = "a_o",
		position = Vector3(0, -1, 1.5),
		rotation = Rotation(0, 0, 0)
	})
		self:SetupAttachmentPoint("x_czevo", {
		name = "a_b_long",
		base_a_obj = "a_b",
		position = Vector3(0, 7, 0),
		rotation = Rotation(0, 0, 0)
	})
end
end)