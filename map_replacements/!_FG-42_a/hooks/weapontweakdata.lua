Hooks:PostHook( WeaponTweakData, "init", "FG42Init", function(self)

	self.fg42.animations.bipod_enter = "bipod_enter"
	self.fg42.animations.bipod_exit = "bipod_exit"
	self.fg42.animations.bipod_recoil = "bipod_recoil"
	self.fg42.animations.bipod_recoil_enter = "bipod_recoil"
	self.fg42.animations.bipod_recoil_loop = "bipod_recoil_loop"
	self.fg42.animations.bipod_recoil_exit = "bipod_recoil_exit"
	self.fg42.spread.bipod = default_bipod_spread
	self.fg42.bipod_camera_spin_limit = 45
	self.fg42.bipod_camera_pitch_limit = 20
	self.fg42.bipod_weapon_translation = Vector3(0,6,0)
	self.fg42.bipod_deploy_multiplier = 1
	self.fg42.timers.deploy_bipod = 0.1
	
	self:SetupAttachmentPoint("fg42", {
		name = "a_o", 
        base_a_obj = "a_o", 
        position = Vector3( 0, 10, -1 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
end)