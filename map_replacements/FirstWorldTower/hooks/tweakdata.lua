Hooks:PostHook(TweakData,"init","init_foolish",function(self)
	log("// INFINITE BANK TWEAKDATA //")
	self.overlay_effects.fade_out_infb1 = {
		text_to_upper = true,
		sustain = 3,
		localize = true,
		fade_in = 1,
		text_blend_mode = "add",
		fade_out = 1,
		font = "fonts/font_large_mf",
		text = "heist_infb_goup_transition",
		font_size = 44,
		blend_mode = "normal",
		color = Color(1, 0, 0, 0),
		timer = TimerManager:main(),
		text_color = Color(255, 255, 153, 0) / 255
	}
	self.overlay_effects.fade_out_infb_hell = {
		text_to_upper = true,
		sustain = 3,
		localize = true,
		fade_in = 1,
		text_blend_mode = "add",
		fade_out = 1,
		font = "fonts/font_large_mf",
		text = "heist_infb_hell_transition",
		font_size = 44,
		blend_mode = "normal",
		color = Color(1, 0, 0, 0),
		timer = TimerManager:main(),
		text_color = Color(200, 0, 25, 0) / 255
	}
	self.overlay_effects.fade_out_infb2 = {
		text_to_upper = true,
		sustain = 3,
		localize = true,
		fade_in = 1,
		text_blend_mode = "add",
		fade_out = 1,
		font = "fonts/font_large_mf",
		text = "heist_infb_down_transition",
		font_size = 44,
		blend_mode = "normal",
		color = Color(1, 0, 0, 0),
		timer = TimerManager:main(),
		text_color = Color(255, 255, 153, 0) / 255
	}
end)