Hooks:PostHook(CharacterTweakData, "init", "init_btms", function(self, ...)
	--CLOACKER
		self.spooc.has_alarm_pager = true
		self.spooc.calls_in = true
		self.spooc.suspicious = true
		self.spooc.silent_priority_shout = "f42"
	--MEDIC
		self.medic.has_alarm_pager = true
		self.medic.silent_priority_shout = "f42"
		self.medic.calls_in = true
		self.medic.suspicious = true
	--TASER
		self.taser.has_alarm_pager = true
		self.taser.silent_priority_shout = "f42"
		self.taser.calls_in = true
		self.taser.suspicious = true
		self.security.suppression = nil
		self.security.surrender = nil
		self.city_swat.suppression = nil
		self.city_swat.surrender = nil
end)