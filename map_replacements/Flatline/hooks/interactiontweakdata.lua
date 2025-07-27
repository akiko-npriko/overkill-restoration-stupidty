	
Hooks:PostHook(InteractionTweakData, "init", "init_flatline", function(self, tweak_data)
	
	self.hold_place_mold = {
		text_id = "hud_hold_place_mold",
		interact_distance = 150,
		timer = 5,
		start_active = false,
		sound_start = "bar_cut_off_arm",
		sound_interupt = "bar_cut_off_arm_cancel",
		sound_done = "bar_cut_off_arm_finished"
	}
    
end)