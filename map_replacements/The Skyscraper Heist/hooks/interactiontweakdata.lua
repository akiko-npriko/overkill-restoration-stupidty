Hooks:PostHook(InteractionTweakData, "init", "skyscraperheistinteractions", function(self, tweak_data)
	self.tableflipskyscraper = {
		text_id = "tablefliptext",
		timer = 2
	}
	self.lightsonskyscraper = {
		text_id = "lightsontext"
	}
	self.lightsoffskycraper = {
		text_id = "lightsofftext"
	}
	self.lightsbrokenskyscraper = {
		text_id = "lightsbrokentext",
		equipment_text_id = "lightsbrokenequipmenttext",
		special_equipment = "thermite",
		equipment_consume = false
	}
	self.keyboardinteractsky = {
		text_id = "keyboardinteractskytext",
		timer = 2
	}
	self.serverinteractsky = {
		text_id = "serverinteractskytext",
		timer = 5
	}
	self.maincomputerinteractsky = {
		text_id = "maincomputerinteractskytext",
		timer = 5
	}
	self.codecomputerinteractsky = {
		text_id = "codecomputerinteractskytext",
		timer = 5
	}
	self.vaultkeypadinteractsky = {
		text_id = "vaultkeypadinteractskytext"
	}
	self.vaultopeninteractsky = {
		text_id = "vaultopeninteractskytext",
		timer = 3
	}
	self.elevatorforceinteractsky = {
		text_id = "elevatorforceinteractskytext",
		timer = 3
	}
	self.ecmblockinteractsky = {
		text_id = "ecmblockinteractskytext",
		equipment_text_id = "ecmblockinteractskyequipmenttext",
		special_equipment = "thermite",
		equipment_consume = false
	}
	self.secretvaultbuttonsky = {
		text_id = "secretvaultbuttonskytext"
	}
end)