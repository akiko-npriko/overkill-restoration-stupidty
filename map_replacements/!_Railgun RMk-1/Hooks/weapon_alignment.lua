Hooks:PostHook( PlayerTweakData, "init", "RoachModInit", function(self)
if self.stances.roach then
    self.stances.roach.standard.shoulders.translation = Vector3(1, 0, 0)
    self.stances.roach.crouched.shoulders.translation = Vector3(0.5, -1, 0.5)
end
end )