Hooks:PostHook(WeaponTweakData, "init", "M2HBModInit", function(self)
if self.m2hb then
	self.m2hb.attachment_points = {
		{
				name = "a_ns",
				base_a_obj = "a_ns",
				position = Vector3(0, 7, -4.25),
				rotation = Rotation(0, 0, 0)
		},
	}
end
end)