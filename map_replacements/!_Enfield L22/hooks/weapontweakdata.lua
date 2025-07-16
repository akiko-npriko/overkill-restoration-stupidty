Hooks:PostHook(WeaponTweakData, "init", "IDontCareAboutMyFingersModInit", function(self)
if self.SetupAttachmentPoint then	
	self:SetupAttachmentPoint( "fckmyfingers", {
		name = "a_fl",
		base_a_obj = "a_fl",
		position = Vector3(-0.25, 0, -0.1),
		rotation = Rotation( 0, 0, 0 )
	})	
	self:SetupAttachmentPoint( "fckmyfingers", {
		name = "a_vg",
		base_a_obj = "a_body",
		position = Vector3(0, 20, 2.5),
		rotation = Rotation( 0, 0, 0 )
	})
	self:SetupAttachmentPoint( "enfieldl22", {
		name = "a_fl",
		base_a_obj = "a_fl",
		position = Vector3(-0.25, 0, -0.1),
		rotation = Rotation( 0, 0, 0 )
	})	
	self:SetupAttachmentPoint( "enfieldl22", {
		name = "a_vg",
		base_a_obj = "a_body",
		position = Vector3(0, 20, 2.5),
		rotation = Rotation( 0, 0, 0 )
	})
end
	self.fckmyfingers_crew = deep_clone(self.l85a2_crew)
	self.enfieldl22_crew = deep_clone(self.olympic_crew)
end)