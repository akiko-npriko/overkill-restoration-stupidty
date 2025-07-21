Hooks:PostHook(WeaponTweakData, "init", "G11WeaponModInit", function(self)

	if self.temple then
		--self.temple.CAN_TOGGLE_FIREMODE = true
		--self.temple.FIRE_MODE = "auto"

		self:SetupAttachmentPoint ( "temple",
		{
			name = "a_m",
			base_a_obj = "a_m",
			position = Vector3(0.4, -15, 13.5),
			rotation = RotationCAP( 0, 0, 0)
		})
		self:SetupAttachmentPoint ( "temple",
		{
			name = "a_m_new",
			part_attach_data = 
			{
	            {"wpn_fps_ass_temple_dummymag"},
	            "g_bullet_1"
	        },
			position = Vector3(0, 0, 0), --Vector3(0.4, -15, 13.5),
			rotation = RotationCAP( 0, 90, 0)
		})
		self:SetupAttachmentPoint ( "temple",
		{
			name = "a_b",
			base_a_obj = "a_b",
			position = Vector3(0.3, -13.5, -0.2),
			rotation = RotationCAP( 0, 0, 0)
		})
		self:SetupAttachmentPoint ( "temple",
		{
			name = "a_fl",
			base_a_obj = "a_fl",
			position = Vector3(0.5, -10, -2.5),
			rotation = RotationCAP( 0, 0, 0)
		})
	end
	
end)