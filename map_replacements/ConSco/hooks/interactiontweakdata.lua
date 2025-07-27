


Hooks:PostHook(InteractionTweakData, "init", "cdhook_cableties", function(self)




	self.intimidate = {
		icon = "equipment_cable_ties",
		text_id = "debug_interact_intimidate",
		equipment_text_id = "debug_interact_equipment_cable_tie",
		start_active = false,
		special_equipment = "cable_tie",
		equipment_consume = true,
		no_contour = true,
		timer = 2,
		interact_distance = 0,
		upgrade_timer_multiplier = {
			upgrade = "interact_speed_multiplier",
			category = "cable_tie"
		},
		action_text_id = "hud_action_cable_tying"
	}


end)
