Hooks:PostHook(WeaponTweakData, "init", "ashot", function (self)
if self.SetupAttachmentPoint then
	self:SetupAttachmentPoint("ashot", {
        name = "a_b",
        base_a_obj = "a_b",
        position = Vector3(-0.1, 10, 0.3)
    })
end
end)