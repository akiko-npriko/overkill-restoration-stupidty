Hooks:PostHook( WeaponFactoryTweakData, "init", "toy1911Init", function(self)
self.parts.wpn_fps_pis_toy1911_frame.stance_mod = {
			wpn_fps_pis_toy1911 = { 
				translation = Vector3(0.056, 1, -1.5),
				rotation = Rotation(0, 0.21, 0)
			}
		}
end )