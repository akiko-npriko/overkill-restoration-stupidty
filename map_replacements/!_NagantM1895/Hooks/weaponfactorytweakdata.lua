Hooks:PostHook( WeaponFactoryTweakData, "init", "NagantM1895ModInit", function(self)
	self.parts.wpn_fps_upg_m1895_barrel_long.override = {
		wpn_fps_upg_m1895_irons_radium = {
			unit = "units/mods/weapons/wpn_fps_pis_m1895_pts/wpn_fps_upg_m1895_irons_radium_long",
			stance_mod = {
				wpn_fps_pis_m1895 = {
					translation = Vector3(-0.02, -6, -0.275),
					rotation = Rotation(0, -0.125, 0)
				}
			}
		}
	}
	self.parts.wpn_fps_upg_m1895_irons_radium.stance_mod = {
		wpn_fps_pis_m1895 = {
			translation = Vector3(-0.02, -6, -0.275),
			rotation = Rotation(0, -0.135, 0)
		}
	}
end )