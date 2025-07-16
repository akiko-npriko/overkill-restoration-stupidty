Hooks:PostHook( WeaponFactoryTweakData, "init", "M2HBModInit", function(self)

    self.parts.wpn_fps_lmg_m2hb_body.adds = {}

    if self.wpn_fps_lmg_m2hb then
        self.parts.wpn_fps_lmg_m2hb_body.stance_mod = {
            wpn_fps_lmg_m2hb = {
                translation = Vector3(1.36, -4, 0.2),
                rotation = Rotation(0, 0, 0)
            }
        }
    end

end )