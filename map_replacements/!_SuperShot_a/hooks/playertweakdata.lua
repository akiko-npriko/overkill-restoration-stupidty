Hooks:PostHook(PlayerTweakData, "init", "SSGModInit", function(self)
	if self.stances.super then
		self.stances.superclassic = deep_clone(self.stances.super)
		self.stances.superclassic.standard.shoulders.translation = Vector3(-11.5, -7.299, -1.955)
		self.stances.superclassic.standard.shoulders.rotation = deep_clone(self.stances.super.standard.shoulders.rotation)

		self.stances.superclassic.crouched.shoulders.translation = Vector3(-11.5, -7.299, -1.955)
		self.stances.superclassic.crouched.shoulders.rotation = deep_clone(self.stances.super.standard.shoulders.rotation)

		self.stances.superclassic.steelsight.shoulders.translation = Vector3(-11.5, -7.299, -1.955)
		self.stances.superclassic.steelsight.shoulders.rotation = deep_clone(self.stances.super.standard.shoulders.rotation)
	end
end)