Hooks:PostHook( WeaponFactoryTweakData, "init", "UnderbarrelShotgun_init", function(self)

self.wpn_fps_ass_m16.override= {
	wpn_fps_upg_m16_benelli_ub = {stance_mod = {wpn_fps_ass_m16 = {translation = Vector3(-2.04, 3.005, -3),rotation = Rotation(0.038, -1.706, -0.001)}}}
}

 self.parts.wpn_fps_upg_m16_benelli_ub.animations = {
		bipod_reload = "reload_ul"
		}

end )
