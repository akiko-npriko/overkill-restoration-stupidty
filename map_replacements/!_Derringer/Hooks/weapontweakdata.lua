Hooks:PostHook( WeaponTweakData, "init", "derringerInit", function(self)
    self.derringer.reload_timed_stance_mod = {
        empty = {
            hip = {
                {t = 3, translation = Vector3(0, 0, -50), rotation = Rotation(0, 0, 0), speed = 1, sound = "derringer_reload"},
				{t = 0, translation = Vector3(0, 0, 0), rotation = Rotation(0, 0, 0), speed = 1.2}
            }
        },
		not_empty = {
            hip = {
                {t = 3, translation = Vector3(0, 0, -50), rotation = Rotation(0, 0, 0), speed = 1, sound = "derringer_reload"},
				{t = 0, translation = Vector3(0, 0, 0), rotation = Rotation(0, 0, 0), speed = 1.2}
            }
        }
    }
end )