Hooks:PostHook( PlayerTweakData, "init", "DP12ModInit", function(self)

-- DP12	
	self.stances.dp12_novg = deep_clone(self.stances.r870)
	local ironsight_translation = Vector3(0, 2, -2.5) ---3.454, 40, 1
	self.stances.dp12_novg.steelsight.shoulders.translation = self.stances.dp12_novg.steelsight.shoulders.translation + ironsight_translation 
	local standard_translation = Vector3(0, 0, 0)
	self.stances.dp12_novg.standard.shoulders.translation = self.stances.dp12_novg.standard.shoulders.translation + standard_translation


end )