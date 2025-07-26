Hooks:PostHook( InteractionTweakData, "init", "tj_htsb_custom_interactions", function(self, tweak_data)

	self.gen_pku_kitteh = {
		text_id = "hud_int_hold_take_kitteh",
		action_text_id = "hud_action_taking_kitteh",
		timer = 5,
		sound_start = "bar_bag_money",
		sound_interupt = "bar_bag_money_cancel",
		sound_done = "bar_bag_money_finished",
		blocked_hint = "carry_block"
	}
	
	self.gen_pku_golden_kitteh = {
		text_id = "hud_int_hold_take_golden_kitteh",
		action_text_id = "hud_action_taking_golden_kitteh",
		timer = 10,
		sound_start = "bar_bag_money",
		sound_interupt = "bar_bag_money_cancel",
		sound_done = "bar_bag_money_finished",
		blocked_hint = "carry_block"
	}
	
	self.tj_htsb_use_manager_keycard = {
		text_id = "hud_int_tj_htsb_use_manager_keycard",
		action_text_id = "hud_action_tj_htsb_use_manager_keycard",
		equipment_text_id = "hud_int_tj_htsb_no_manager_keycard",
		special_equipment = "tj_htsb_manager_keycard",
		equipment_consume = true,
		start_active = true,
		timer = 0.5
	}
	
	self.tj_htsb_pickup_manager_keycard = {
		text_id = "hud_int_tj_htsb_pickup_manager_keycard",
		sound_done = "pick_up_key_card",
		requires_mask_off_upgrade = {
			upgrade = "mask_off_pickup",
			category = "player"
		},
		blocked_hint = "full_keycard"
	}
	
	self.bop_kitteh = {
		text_id = "hud_int_bop_kitteh"
	}
	
end)