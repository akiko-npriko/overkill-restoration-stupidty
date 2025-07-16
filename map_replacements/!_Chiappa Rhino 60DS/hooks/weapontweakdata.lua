Hooks:PostHook(WeaponTweakData, "init", "Rhino60DSModInit", function(self)
	if self.rhino then
		self.rhino.reload_timed_stance_mod = {
			not_empty = {
				hip = {
					{t = 2.97, translation = Vector3(0, 7, 2), rotation = Rotation(0, 0, 0), speed = 0.5},
					{t = 2.35, translation = Vector3(0, 12, 4), rotation = Rotation(0, 0, 0), speed = 0.5},
					{t = 1.5, translation = Vector3(0, 7, 2), rotation = Rotation(0, 0, 0), speed = 0.5},
					{t = 0, translation = Vector3(0, 0, 0), rotation = Rotation(0, 0, 0), speed = 0.5}
				}
			},
			empty = {
				hip = {
					{t = 2.97, translation = Vector3(0, 7, 2), rotation = Rotation(0, 0, 0), speed = 0.5},
					{t = 2.35, translation = Vector3(0, 12, 4), rotation = Rotation(0, 0, 0), speed = 0.5},
					{t = 1.5, translation = Vector3(0, 7, 2), rotation = Rotation(0, 0, 0), speed = 0.5},
					{t = 0, translation = Vector3(0, 0, 0), rotation = Rotation(0, 0, 0), speed = 0.5}
				}
			}
		}
	end
end)