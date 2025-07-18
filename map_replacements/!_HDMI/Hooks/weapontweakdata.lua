Hooks:PostHook(WeaponTweakData, "init", "HSHDMModInit", function(self)
	
	self:SetupAttachmentPoint( "hshdm", {
		name = "a_b",
		base_a_obj = "a_b",
		position = Vector3( 0, 10, 0 ), 
        rotation = Rotation( 0, 0, 0 )
		})
	self:SetupAttachmentPoint( "hshdm", {
		name = "a_fg",
		base_a_obj = "a_b",
		position = Vector3( 0, 7, -0.7 ), 
        rotation = Rotation( 0, 0, 0 )
		})
	self:SetupAttachmentPoint( "hshdm", {
		name = "a_fl",
		base_a_obj = "a_b",
		position = Vector3( 0, 9, -1.5 ), 
        rotation = Rotation( 0, 0, 0 )
		})
	self:SetupAttachmentPoint( "hshdm", {
		name = "a_rds",
		base_a_obj = "a_rds",
		position = Vector3( 0, 4, 0.8 ), 
        rotation = Rotation( 0, 0, 0 )
		})
		
	self:SetupAttachmentPoint( "x_hshdm", {
		name = "a_b",
		base_a_obj = "a_b",
		position = Vector3( 0, 10, 0 ), 
        rotation = Rotation( 0, 0, 0 )
		})
	self:SetupAttachmentPoint( "x_hshdm", {
		name = "a_fg",
		base_a_obj = "a_b",
		position = Vector3( 0, 7, -0.7 ), 
        rotation = Rotation( 0, 0, 0 )
		})
	self:SetupAttachmentPoint( "x_hshdm", {
		name = "a_fl",
		base_a_obj = "a_b",
		position = Vector3( 0, 9, -1.5 ), 
        rotation = Rotation( 0, 0, 0 )
		})
end)