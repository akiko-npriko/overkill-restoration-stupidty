Hooks:PostHook( PlayerTweakData, "init", "qbs9Init", function(self)
    self.stances.qbs.standard.shoulders.translation = Vector3(0, 4, 0)
    self.stances.qbs.crouched.shoulders.translation = Vector3(0, 4, 0)
end )