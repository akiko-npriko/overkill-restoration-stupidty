Hooks:PostHook( WeaponFactoryTweakData, "init", "Helldivers2xKillzone2StA11SMG_init", function(self)

	self.parts.wpn_fps_smg_sta11_receiver.override = {
		wpn_fps_smg_sta11_receiver = {
			stance_mod = {
				wpn_fps_smg_sta11 = {
					translation = Vector3(-0.015, 5.299, 2.545),
					rotation = Rotation(0, 0, 0)
				}
			}	
		},
	}
end )
