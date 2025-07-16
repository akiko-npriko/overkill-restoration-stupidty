Hooks:PostHook( WeaponTweakData, "init", "DP12ModInit", function(self)

if ( self.dp12 ) then	
	self:SetupAttachmentPoint( "dp12", {
		name = "a_fl",
		base_a_obj = "a_fl",
		position = Vector3( 3.73, 0, 4.6 ), 
        rotation = Rotation( 0, 0, -90 )
		})
	self:SetupAttachmentPoint( "dp12", {
		name = "a_o",
		base_a_obj = "a_o",
		position = Vector3( 0, 0, -1 ), 
        rotation = Rotation( 0, 0, 0 )
		})
	self:SetupAttachmentPoint( "dp12", {
		name = "a_o_r",
		base_a_obj = "a_o_r",
		position = Vector3( 0, 0, -1 ), 
        rotation = Rotation( 0, 0, 0 )
		})
	self:SetupAttachmentPoint( "dp12", {
		name = "a_o_f", -- oof
		base_a_obj = "a_o_f",
		position = Vector3( 0, 0, -1 ), 
        rotation = Rotation( 0, 0, 0 )
		})
	self:SetupAttachmentPoint( "dp12", {
		name = "a_bxt_long",
		base_a_obj = "a_body",
		position = Vector3( 0, 2, 0 ), 
        rotation = Rotation( 0, 0, 0 )
		})
	self:SetupAttachmentPoint( "dp12", {
        name = "a_fl_underrail",
        base_a_obj = "a_fg",
        part_attach_data = {
            {"wpn_fps_sho_dp12_fg_novg_rail"},
            "g_pump"
        },
        position = Vector3( 0.1, 4, -3.2 ),
        rotation = RotationCAP( 0, 0, 90 )
    })
end
		
end)