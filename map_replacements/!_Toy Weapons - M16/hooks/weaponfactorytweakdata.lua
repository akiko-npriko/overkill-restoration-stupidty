Hooks:PostHook( WeaponFactoryTweakData, "init", "toym16Init", function(self)
self.parts.wpn_fps_ass_toym16_body_standard.stance_mod = {
			wpn_fps_ass_toym16 = { 
				translation = Vector3(0.02, -0.9, 0.55),
				rotation = Rotation(0, 0.3, -0)
			}
}
self.parts.wpn_fps_ass_toym16_b_standard.sub_type = "silencer"
self.parts.wpn_fps_ass_toym16_b_standard.perks = {"silencer"}
end )