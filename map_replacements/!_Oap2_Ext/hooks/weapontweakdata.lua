Hooks:PostHook( WeaponTweakData, "init", "daniel_fg_fix", function(self)

	-- IM DOING THE SHITTY KLUGE AGAIN BOTTOM TEXT I HATE MYSELF.
	self:SetupAttachmentPoint( "ak74", {
        name = "a_fg_zenit",
        base_a_obj = "a_fg",
        position = Vector3( 0, 7.55, 0.5 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	self:SetupAttachmentPoint( "ak74", {
        name = "a_body_zenit",
        base_a_obj = "a_body",
        position = Vector3(0.65, -0.1, 0 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	self:SetupAttachmentPoint( "akm", {
        name = "a_fg_zenit",
        base_a_obj = "a_fg",
        position = Vector3( 0, 7.55, 0.5 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	self:SetupAttachmentPoint( "akm", {
        name = "a_body_zenit",
        base_a_obj = "a_body",
        position = Vector3( 0.65, -0.1, 0 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	self:SetupAttachmentPoint( "akm_gold", {
        name = "a_fg_zenit",
        base_a_obj = "a_fg",
        position = Vector3( 0, 7.55, 0.5 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	self:SetupAttachmentPoint( "akm_gold", {
        name = "a_body_zenit",
        base_a_obj = "a_body",
        position = Vector3( 0.65, -0.1, 0 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	self:SetupAttachmentPoint( "saiga", {
        name = "a_body_zenit",
        base_a_obj = "a_body",
        position = Vector3( 0.65, -0.1, 0 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	
	self:SetupAttachmentPoint( "saiga", {
        name = "a_s_zenit",
        base_a_obj = "a_s",
        position = Vector3( -0.25, 0, 0 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	self:SetupAttachmentPoint( "akm", {
        name = "a_s_zenit",
        base_a_obj = "a_s",
        position = Vector3( -0.25, 0, 0 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	self:SetupAttachmentPoint( "akm_gold", {
        name = "a_s_zenit",
        base_a_obj = "a_s",
        position = Vector3( -0.25, 0, 0 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	self:SetupAttachmentPoint( "flint", {
        name = "a_s_zenit",
        base_a_obj = "a_s",
        position = Vector3( -0.25, 0, 0 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	self:SetupAttachmentPoint( "coal", {
        name = "a_s_zenit",
        base_a_obj = "a_s",
        position = Vector3( -0.25, 0, 0 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	self:SetupAttachmentPoint( "ak74", {
        name = "a_s_zenit",
        base_a_obj = "a_s",
        position = Vector3( -0.25, 0, 0 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	self:SetupAttachmentPoint( "akmsu", {
        name = "a_s_zenit",
        base_a_obj = "a_s",
        position = Vector3( -0.25, 0, 0 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	
	self:SetupAttachmentPoint( "vityaz", {
        name = "a_s_zenit",
        base_a_obj = "a_s",
        position = Vector3( -0.25, 2, -2.15 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	self:SetupAttachmentPoint( "vityaz", {
        name = "a_fg_zenit",
        base_a_obj = "a_fg",
        position = Vector3( 0, 6.7, 0.35 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })


-- alright so here's the ddm4 foregrip front sight tweak thing
	self:SetupAttachmentPoint( "amcar", {
        name = "a_poon", -- "...what the hell kind of name is poon?"
        base_a_obj = "a_fg",
        position = Vector3( 0, 21, 0 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	self:SetupAttachmentPoint( "m4", {
        name = "a_poon", -- "it's comanche indian."
        base_a_obj = "a_fg",
        position = Vector3( 0, 21, 0 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
		-- fun fact: this code accidentally didn't do its job and it turns out that's a good thing
    })
	self:SetupAttachmentPoint( "m16", {
        name = "a_poon",
        base_a_obj = "a_fg",
        position = Vector3( 0, 21, 0 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	--[[
	self:SetupAttachmentPoint( "amcar", {
        name = "a_rosen", -- "...sure thing, doctor, uh...?"
        base_a_obj = "a_fg",
        position = Vector3( 0, -0.35, -0.5 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	self:SetupAttachmentPoint( "new_m4", {
        name = "a_rosen", -- "doctor, erm, uh, doctor rosen- ...rosen."
        base_a_obj = "a_fg",
        position = Vector3( 0, -0.35, -0.5 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	self:SetupAttachmentPoint( "m16", {
        name = "a_rosen",
        base_a_obj = "a_fg",
        position = Vector3( 0, -0.35, -0.5 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	]]
	self:SetupAttachmentPoint( "amcar", {
        name = "a_mwg",
        base_a_obj = "a_body",
        position = Vector3( 0, -2, -0.5 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	self:SetupAttachmentPoint( "new_m4", {
        name = "a_mwg",
        base_a_obj = "a_body",
        position = Vector3( 0, -2, -0.5 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	self:SetupAttachmentPoint( "m16", {
        name = "a_mwg",
        base_a_obj = "a_body",
        position = Vector3( 0, -2, -0.5 ), 
        rotation = RotationCAP( 0, 0, -0.5 ) 
    })
	self:SetupAttachmentPoint( "olympic", {
        name = "a_mwg",
        base_a_obj = "a_body",
        position = Vector3( 0, -2, -0.5 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	self:SetupAttachmentPoint( "shepheard", {
        name = "a_mwg",
        base_a_obj = "a_body",
        position = Vector3( 0, -2, -0.75 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	self:SetupAttachmentPoint( "tti", {
        name = "a_mwg",
        base_a_obj = "a_body",
        position = Vector3( 0, -2, -0.75 ), 
        rotation = RotationCAP( 0, 0, 0 ) 
    })
	
	
	
	-- fucking HATE how the placements of the MWG are inconsistent across multiple custom weapons.
	local function do_the_mwg_attachment_point_thingus(weapon_table)
		do_the_mwg_attachment_point_thingus(weapon_table,0,-2,-0.75)
	end
	local function do_the_mwg_attachment_point_thingus(weapon_table,X,Y,Z)
		for _, weapon_id in pairs(weapon_table) do
			if self[weapon_id] then
				self:SetupAttachmentPoint( weapon_id, {
					name = "a_mwg",
					base_a_obj = "a_body",
					position = Vector3( X, Y, Z ), 
					rotation = RotationCAP( 0, 0, 0 ) 
				})
			end
		end
	end
	local customs_wellgrip = {
		"drongo",
		"greyhound",
		"obr5",
		"r0933blk",
		"hk416",
		"adar",
		"flat",
		"gameover",
--		"petto",
		"m4cqb",
		"m4bpre"
	}
	do_the_mwg_attachment_point_thingus(customs_wellgrip)
	
	local customs_wellgrip_stoy = {
		"stoy_556",
		"stoy_919"
	}
	do_the_mwg_attachment_point_thingus(customs_wellgrip_stoy,0,-2,-1.25)
	
	local op68_table = {"op68"} -- lmao
	do_the_mwg_attachment_point_thingus(op68_table,0,-2,-2)
	
	local petto_table = {"petto"} -- lmao
	do_the_mwg_attachment_point_thingus(petto_table,-0.075,-2.5,-0.75)
	
	
end )