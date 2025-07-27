Hooks:PostHook(WeaponTweakData, "init", "t1000x5ModInit", function(self)
if BeardLib.Utils:FindMod("Custom Attachment Points") and self.t1000x5 then
	self:SetupAttachmentPoint("t1000x5", {
		name = "a_fl",
		base_a_obj = "a_fl",
		position = Vector3(-3.25, 40, -0.5),
		rotation = Rotation(0, 0, 90)
	})
	self:SetupAttachmentPoint("t1000x5", {
		name = "a_b",
		base_a_obj = "a_b",
		position = Vector3(0, 24.5, 0.45),
		rotation = Rotation(0, 0, 0)
	})
	self:SetupAttachmentPoint("t1000x5", {
		name = "a_ns",
		base_a_obj = "a_b",
		position = Vector3(0, -24.5, 0),
		rotation = Rotation(0, 0, 0)
	})
end
end)