Hooks:PostHook(WeaponTweakData, "init", "CBJMSModInit", function(self)
if not self.cbjms_crew then
	self.cbjms_crew = deep_clone(self.mp9_crew)
end
if self.SetupAttachmentPoint then
	self:SetupAttachmentPoint("cbjms",{
		name = "a_fl",
		base_a_obj = "a_fl",
		position = Vector3(3.9, 0.7, -0.6),
		rotation = RotationCAP(0, 0, 180)
	})
end
end)