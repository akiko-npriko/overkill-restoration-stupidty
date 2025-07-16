Hooks:PostHook( WeaponTweakData, "init", "UMPInit", function(self)

	-- Reminders (for me)
	-- Positive values in X will move the attachment left and negative right, respectively
	-- Positive values in Y will move the attachment forwards and negative backwards, respectively
	-- Positive values in Z will move the attachment up and negative down, respectively

	-- Reload animations Scrapped until custom anims, this broke the based underbarrels

	-- Instead of having 4 CAPs, compress them, ~IF~ they can be of course
	
	-- M203
	
	local weapons = {"m16", "new_m4", }
    for _, weapon in ipairs(weapons) do
    self:SetupAttachmentPoint(weapon, {
    name = "a_m203", base_a_obj = "a_fl",
    position = Vector3( -2.7, 8.5, -2.5 ), rotation = RotationCAP( 0, 0, 0 )
    })
    end
	
		self:SetupAttachmentPoint( "fal", {
		name = "a_m203",
		base_a_obj = "a_fl",
		position = Vector3( -2.1, 14, -2.6 ),
		rotation = Rotation( 0, 0, 0 )
	})
	
		self:SetupAttachmentPoint( "galil", {
		name = "a_m203",
		base_a_obj = "a_fl",
		position = Vector3( -2.7, 11, -2.6 ),
		rotation = Rotation( 0, 0, 0 )
	})

		self:SetupAttachmentPoint( "g36", {
		name = "a_m203",
		base_a_obj = "a_fl",
		position = Vector3( -3, 10.8, -2.5 ),
		rotation = Rotation( 0, 0, 0 )
	})

	-- M320
	
	local weapons = {"m16", "new_m4", }
    for _, weapon in ipairs(weapons) do
    self:SetupAttachmentPoint(weapon, {
    name = "a_m320", base_a_obj = "a_fl",
    position = Vector3( -2.7, 33, -5.9 ), rotation = RotationCAP( 0, 0, 0 )
    })
    end
		
		self:SetupAttachmentPoint( "g36", {
		name = "a_m320",
		base_a_obj = "a_fl",
		position = Vector3( -3, 37, -6 ),
		rotation = Rotation( 0, 0, 0 )
	})

	-- GP25
	
	local weapons = {"ak74", "akm", }
    for _, weapon in ipairs(weapons) do
    self:SetupAttachmentPoint(weapon, {
    name = "a_gp25", base_a_obj = "a_fl",
    position = Vector3( -2.5, -6, 3.5 ), rotation = RotationCAP( 0, 0, 0 )
    })
    end
		
		self:SetupAttachmentPoint( "fal", {
		name = "a_gp25",
		base_a_obj = "a_fl",
		position = Vector3( -2, 2.9, 3 ),
		rotation = Rotation( 0, 0, 0 )
	})
	
		self:SetupAttachmentPoint( "galil", {
		name = "a_gp25",
		base_a_obj = "a_fl",
		position = Vector3( -2.8, 0, 1.6 ),
		rotation = Rotation( 0, 0, 0 )
	})

	-- KACFLAME
	
	local weapons = {"m16", "new_m4", }
    for _, weapon in ipairs(weapons) do
    self:SetupAttachmentPoint(weapon, {
    name = "a_kacm4", base_a_obj = "a_fg",
    position = Vector3( 0.1, 1, -2.5 ), rotation = RotationCAP( 0, 0, 0 )
    })
    end
		
		self:SetupAttachmentPoint( "galil", {
		name = "a_kacm4",
		base_a_obj = "a_fg",
		position = Vector3( 0.1, 1.4, -3 ),
		rotation = Rotation( 0, 0, 0 )
	})
	
		self:SetupAttachmentPoint( "g36", {
		name = "a_kacm4",
		base_a_obj = "a_fl",
		position = Vector3( -2.9, -11, -3 ),
		rotation = Rotation( 0, 0, 0 )
	})

	-- JAKPURIFIER
	
	local weapons = {"m16", "new_m4", }
    for _, weapon in ipairs(weapons) do
    self:SetupAttachmentPoint(weapon, {
    name = "a_jak", base_a_obj = "a_fg",
    position = Vector3( 0.1, 3.5, -3 ), rotation = RotationCAP( 0, 0, 0 )
    })
    end

		self:SetupAttachmentPoint( "g36", {
		name = "a_jak",
		base_a_obj = "a_fl",
		position = Vector3( -2.9, -8.5, -3.5 ),
		rotation = Rotation( 0, 0, 0 )
	})

	-- M203 Short
	
	self:SetupAttachmentPoint( "amcar", {
		name = "a_m203s",
		base_a_obj = "a_fg",
		position = Vector3( 0, 27.5, -2.5 ),
		rotation = Rotation( 0, 0, 0 )
	})
	
	self:SetupAttachmentPoint( "new_mp5", {
		name = "a_m203s",
		base_a_obj = "a_fg",
		position = Vector3( 0, 26.5, -1.3 ),
		rotation = Rotation( 0, 0, 0 )
	})

end )