Hooks:PostHook( WeaponTweakData, "init", "game_ghir_part_fix", function(self)
    -- Use one function for each attachment point.
	
	--[[ this made me feel like an ass so i'm commenting it out
	if not self:SetupAttachmentPoint then
		log("INSTALL CUSTOM ATTACHMENT POINTS, YOU MORON! CRASHING YOUR GAME TO DRIVE THE POINT HOME............") --lolol
	end
	]]
	if not self.leet_crew then
	self.leet_crew = deep_clone(self.komodo_crew)
	end
	--self.leet.can_shoot_through_wall = true
	--self.leet.can_shoot_through_shield = true
	--self.leet.can_shoot_through_enemy = true
	--self.leet.armor_piercing_chance = 1
    self:SetupAttachmentPoint( "leet", {
        name = "a_fl",
        base_a_obj = "a_fl",
        position = Vector3( -0.5, -4, -0.5 ),
        rotation = RotationCAP( 0, 0, 0 )
    })
	self:SetupAttachmentPoint( "leet", {
        name = "a_dh",
        base_a_obj = "a_dh",
        position = Vector3( 4.75, 3.5, 0 ),
        rotation = RotationCAP( 0, 0, 0 )
    })
	self:SetupAttachmentPoint( "leet", {
		name = "a_m",
		base_a_obj = "a_m",
		position = Vector3( 0, -4, 0 ),
		rotation = RotationCAP( 0, 0, 0 )
    })
	self:SetupAttachmentPoint( "leet", {
		name = "a_b",
		base_a_obj = "a_b",
		position = Vector3( 0, 0, 0 ),
		rotation = RotationCAP( 0, 0, 0 )
    })
	self:SetupAttachmentPoint( "leet", {
        name = "a_o",
        base_a_obj = "a_o",
        position = Vector3( 0, 13, 0 ),
        rotation = RotationCAP( 0, 0, 0 )
    })
	self:SetupAttachmentPoint( "leet", {
		name = "a_body",
		base_a_obj = "a_body",
		position = Vector3( 0, -2, 0 ),
		rotation = RotationCAP( 0, 0, 0 )
    })
	
	-- code for people with Tactical Bolt Check Standalone or IREnFIST (todo: write actual balance code for people running IREnFIST)
	self.leet.reload_timed_stance_mod = {
		not_empty = {
			hip = {
				{t = 2.3, translation = Vector3(6, 6, -30), rotation = Rotation(20, 70, 0), speed = 0.5}, -- rotate gun vertically
				{t = 0.0, translation = Vector3(0, 0, 0), rotation = Rotation(0, 0, 0), speed = 0.5} -- return to default position
			}
		}, 
		empty = {
			hip = {
				{t = 3.2, translation = Vector3(6, 6, -30), rotation = Rotation(20, 70, 0), speed = 0.5}, -- rotate gun vertically
				{t = 1.0, translation = Vector3(6, 6, -40), rotation = Rotation(20, 60, 0), speed = 0.5}, -- move down for cocking (xd)
				{t = 0.0, translation = Vector3(0, 0, 0), rotation = Rotation(0, 0, 0), speed = 0.5} -- return to default position
			}
		} -- you know i really do love how it's just tweak data values for mod developers thanks sqp
	}
	
	

end )