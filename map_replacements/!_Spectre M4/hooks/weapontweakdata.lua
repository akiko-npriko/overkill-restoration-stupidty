Hooks:PostHook( WeaponTweakData, "init", "Specter_M4_ModInit", function(self)
		self:SetupAttachmentPoint( "spectre_m4", {
					name = "a_o",
					base_a_obj = "a_o",
					position = Vector3(0, -5, -1.5),
					rotation = Rotation(0, 0, 0)
		})
		self:SetupAttachmentPoint( "spectre_m4", {
					name = "a_ns",
					base_a_obj = "a_ns",
					position = Vector3(-0, 1.25, -1),
					rotation = Rotation(0, 0, 0)
		})
		self:SetupAttachmentPoint( "spectre_m4", {
					name = "a_fl",
					base_a_obj = "a_fl",
					position = Vector3(-1.3, 15.5, -0),
					rotation = Rotation(0, 0, 0)
		})	
		self:SetupAttachmentPoint( "x_spectre_m4", {
					name = "a_ns",
					base_a_obj = "a_ns",
					position = Vector3(-0, 1.25, -1),
					rotation = Rotation(0, 0, 0)
		})
		self:SetupAttachmentPoint( "x_spectre_m4", {
					name = "a_fl",
					base_a_obj = "a_fl",
					position = Vector3(-1.3, 15.5, -0),
					rotation = Rotation(0, 0, 0)
		})
	--[[
	if not self.CustomWeaponsRebalanceEnabled then
		if self.spectre_m4 then
		--self.spectre_m4.AMMO_PICKUP = deep_clone(self.olympic.AMMO_PICKUP)
		end
	end
	]]
end )