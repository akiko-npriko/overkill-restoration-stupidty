Hooks:PostHook(WeaponTweakData, "init", "qbs09ModInit", function(self)
	self.qbs.attachment_points = {
		{
				name = "a_b",
				base_a_obj = "a_b",
				position = Vector3(0, -8.4, 0),
				rotation = Rotation(0, 0, 0)
		},
	    {
				name = "a_sb",
				base_a_obj = "a_b",
				position = Vector3(0, -3, 0),
				rotation = Rotation(0, 0, 0)
		},
		{
				name = "a_fl",
				base_a_obj = "a_fl",
				position = Vector3(2, -16, 5),
				rotation = Rotation(0, 0, -90)
		}
	}
end)