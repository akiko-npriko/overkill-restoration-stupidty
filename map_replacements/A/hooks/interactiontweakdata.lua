	
Hooks:PostHook(InteractionTweakData, "init", "init_ahop", function(self, tweak_data)
	
	self.hold_remove_eye = {
		text_id = "hud_hold_removing_eye",
		interact_distance = 150,
		timer = 5,
		start_active = false,
		sound_start = "bar_cut_off_arm",
		sound_interupt = "bar_cut_off_arm_cancel",
		sound_done = "bar_cut_off_arm_finished"
	}
    
end)