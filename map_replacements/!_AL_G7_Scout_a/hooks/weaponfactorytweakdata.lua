Hooks:PostHook( WeaponFactoryTweakData, "init", "ApexLegendsG7ScoutMod", function(self)

	self.parts.wpn_fps_ass_g7_body_main.override = {
		wpn_fps_ass_g7_body_main = {
			stance_mod = {
				wpn_fps_ass_g7 = {
					translation = Vector3(0, -0, -1.2),
					rotation = Rotation(0, -0.001, -0)
				}
			}	
		},
	}

self.wpn_fps_ass_g7.override= {
	wpn_fps_upg_ns_ass_smg_large = {parent="barrel", a_obj ="a_ns"},
	wpn_fps_upg_ns_ass_smg_medium = {parent="barrel", a_obj ="a_ns"},
	wpn_fps_upg_ns_ass_smg_small = {parent="barrel", a_obj ="a_ns"},
	wpn_fps_upg_ns_ass_smg_firepig = {parent="barrel", a_obj ="a_ns"},
	wpn_fps_upg_ns_ass_smg_stubby = {parent="barrel", a_obj ="a_ns"},
	wpn_fps_upg_ns_ass_smg_tank = {parent="barrel", a_obj ="a_ns"},
	wpn_fps_upg_ass_ns_jprifles = {parent="barrel", a_obj ="a_ns"},
	wpn_fps_upg_ass_ns_linear = {parent="barrel", a_obj ="a_ns"},
	wpn_fps_upg_ass_ns_surefire = {parent="barrel", a_obj ="a_ns"},
	wpn_fps_upg_ass_ns_battle = {parent="barrel", a_obj ="a_ns"},
	wpn_fps_ass_shak12_ns_muzzle = {parent="barrel", a_obj ="a_ns"},
	wpn_fps_ass_shak12_ns_suppressor = {parent="barrel", a_obj ="a_ns"},
	wpn_fps_lmg_hk51b_ns_jcomp = {parent="barrel", a_obj ="a_ns"},
	wpn_fps_upg_ns_ass_smg_v6 = {parent="barrel", a_obj ="a_ns"},
	wpn_fps_upg_round_supp_small = {parent="barrel", a_obj ="a_ns"},
	wpn_fps_upg_round_supp_med = {parent="barrel", a_obj ="a_ns"},
	wpn_fps_upg_round_supp_large = {parent="barrel", a_obj ="a_ns"},
	wpn_fps_upg_square_supp_small = {parent="barrel", a_obj ="a_ns"},
	wpn_fps_upg_square_supp_med = {parent="barrel", a_obj ="a_ns"},
	wpn_fps_upg_square_supp_large = {parent="barrel", a_obj ="a_ns"}
}

end )
