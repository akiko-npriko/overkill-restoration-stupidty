local orig_init = SkirmishTweakData.init
function SkirmishTweakData:init(tweak_data,...)
	local result = {orig_init(self,tweak_data,...)}
	

	
	tweak_data.level_infinitebank_room = {
		anim_data = {
			pos_rot = {
				start_pos = {
					Vector3(0, 2100, 0),
					Rotation(0,0,0,0)
				},
				end_pos = {
					Vector3(0,0,250),
					Rotation(1,0,0,0)
				}
			},
			marker_pos = {
				align = "look_at",
				pos = Vector3(0,1600,0),
				speed = 4000
			}
		}
	}
	
	tweak_data.overlay_effects = tweak_data.overlay_effects or {}
	tweak_data.overlay_effects.fade_out_infb1 = {
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
	tweak_data.overlay_effects.fade_out_infb_hell = {
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
	tweak_data.overlay_effects.fade_out_infb2 = {
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
	
	
	
	
	
	
	return unpack(result)
end