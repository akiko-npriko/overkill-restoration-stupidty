Hooks:PostHook(PlayerTweakData, "init", "kedrInit", function(self)
--hopefully this is dmcwo friendly ive never done this before
    self.stances.kedr.standard.shoulders.translation = Vector3(1, 7, -1)
    self.stances.kedr.crouched.shoulders.translation = Vector3(-1, 7, -1)
end)