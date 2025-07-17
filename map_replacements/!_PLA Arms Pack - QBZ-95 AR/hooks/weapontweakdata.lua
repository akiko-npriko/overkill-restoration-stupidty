Hooks:PostHook( WeaponTweakData, "init", "qbz95ModInit", function(self)
if self.qbz95 then
	self:SetupAttachmentPoint( "qbz95", {
				name = "a_o",
				base_a_obj = "a_o",
				position = Vector3(0, -5, -1.5),
				rotation = Rotation(0, 0, 0)
	})
	self:SetupAttachmentPoint( "qbz95", {
                name = "a_lo",
                base_a_obj = "a_o",
                position = Vector3(0, 0, 0),
                rotation = Rotation(0, 0, 0)
	})
	self:SetupAttachmentPoint( "qbz95", {
                name = "a_fgo",
                base_a_obj = "a_o",
                position = Vector3(0, 7.5, -2),
                rotation = Rotation(0, 0, 0)
	})
	self:SetupAttachmentPoint( "qbz95", {
				name = "a_fl",
				base_a_obj = "a_fl",
				position = Vector3(0.4, 2, -2.35),
				rotation = Rotation(0, 0, 30)
	})
	self:SetupAttachmentPoint( "qbz95", {
				name = "a_fgfl",
				base_a_obj = "a_fl",
				position = Vector3(0.4, 3, 0.4),
				rotation = Rotation(0, 0, 30)
	})
end
if not self.CustomWeaponsRebalanceEnabled then
if self.qbz95 then
	self.qbz95.AMMO_PICKUP = self:_pickup_chance((self.qbz95.AMMO_MAX - 10), 2)
end
end
end )