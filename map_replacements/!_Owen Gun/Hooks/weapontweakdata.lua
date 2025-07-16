Hooks:PostHook(WeaponTweakData, "init", "OwenGunModInit", function(self)
if BeardLib.Utils:FindMod("Custom Attachment Points") or BeardLib.Utils:FindMod("WeaponLib") then
    self:SetupAttachmentPoint( "owen", {
		name = "a_b",
		base_a_obj = "a_b",
		position = Vector3(-0, 5.77, 7.33),
		rotation = Rotation(0, 0, 0)
	})
	self:SetupAttachmentPoint( "owen", {
		name = "a_b_43",
		base_a_obj = "a_b",
		position = Vector3(-0, 7.62, 7.33),
		rotation = Rotation(0, 0, 0)
	})
	self:SetupAttachmentPoint("owen", {
		name = "a_o",
		base_a_obj = "a_o",
		position = Vector3(11.4, -6, -0.35),
		rotation = Rotation(0, 0, 0)
	})
	self:SetupAttachmentPoint("owen", {
		name = "a_fl",
		base_a_obj = "a_fl",
		position = Vector3(-1.8, 24.7, 7.33),
		rotation = Rotation(0, 0, 180)
	})
end
end)