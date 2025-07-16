Hooks:PostHook(WeaponTweakData, "init", "abzats", function (self)
if self.SetupAttachmentPoint then
    self:SetupAttachmentPoint("abzats", {
        name = "a_m",
        base_a_obj = "a_m",
        position = Vector3(6.6, 2.9, -1.6)
    })
	self:SetupAttachmentPoint("abzats", {
        name = "a_body",
        base_a_obj = "a_body",
        position = Vector3(3.4, 5, -6.4)
    })
	self:SetupAttachmentPoint("abzats", {
        name = "a_upper",
        base_a_obj = "a_upper",
        position = Vector3(4, 1, -1.6)
    })
	self:SetupAttachmentPoint("abzats", {
        name = "a_b",
        base_a_obj = "a_b",
        position = Vector3(4.3, 70, -3.4)
    })
	self:SetupAttachmentPoint("abzats", {
        name = "a_ns",
        base_a_obj = "a_ns",
        position = Vector3(0, -2, 0)
    })
end
end)