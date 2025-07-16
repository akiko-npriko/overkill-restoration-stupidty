Hooks:PostHook( WeaponFactoryTweakData, "init", "amtInit", function(self)

self.parts.wpn_fps_pis_amt_irons.stance_mod = {
	wpn_fps_pis_amt = { translation = Vector3(-0.005, 3, -0.45), rotation = Rotation(0.03, -0.25, 1.43303e-010) }
}
-- self.parts.wpn_fps_pis_amt_body_standard_gold.override = {
	-- wpn_fps_pis_amt_b_long = { unit = "units/mods/weapons/wpn_fps_pis_amt_gold/wpn_fps_pis_amt_b_long_gold" },
	-- wpn_fps_pis_amt_b_standard = { unit = "units/mods/weapons/wpn_fps_pis_amt_gold/wpn_fps_pis_amt_b_standard_gold" },
	-- wpn_fps_pis_amt_body_standard = { unit = "units/mods/weapons/wpn_fps_pis_amt_gold/wpn_fps_pis_amt_body_standard_gold" },
	-- wpn_fps_pis_amt_m_standard = { unit = "units/mods/weapons/wpn_fps_pis_amt_gold/wpn_fps_pis_amt_m_standard_gold" },
	-- wpn_fps_pis_amt_m_short = { unit = "units/mods/weapons/wpn_fps_pis_amt_gold/wpn_fps_pis_amt_m_short_gold" },		
	-- wpn_fps_pis_amt_g_standard = { unit = "units/mods/weapons/wpn_fps_pis_amt_gold/wpn_fps_pis_amt_g_smooth_gold" },
-- }
-- self.parts.wpn_fps_pis_amt_a_44.custom_stats = {
		-- can_shoot_through_enemy = true,
		-- can_shoot_through_shield = true,
		-- can_shoot_through_wall = true,
		-- ammo_pickup_min_mul = 0.5,
		-- ammo_pickup_max_mul = 0.5
-- }
-- self.parts.wpn_fps_pis_amt_a_357.custom_stats = {
		-- can_shoot_through_enemy = false,
		-- can_shoot_through_shield = false,
		-- can_shoot_through_wall = false,
		-- ammo_pickup_min_mul = 1.3,
		-- ammo_pickup_max_mul = 1.3
-- }

if not self.wpn_fps_pis_amt.adds then
    self.wpn_fps_pis_amt.adds = {}
end    

self.wpn_fps_pis_amt.adds.wpn_fps_upg_o_specter = {
			"wpn_fps_pis_rage_o_adapter"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_o_aimpoint = {
			"wpn_fps_pis_rage_o_adapter"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_o_docter = {
			"wpn_fps_pis_rage_o_adapter"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_o_eotech = {
			"wpn_fps_pis_rage_o_adapter"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_o_t1micro = {
			"wpn_fps_pis_rage_o_adapter"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_o_rx30 = {
			"wpn_fps_pis_rage_o_adapter"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_o_rx01 = {
			"wpn_fps_pis_rage_o_adapter"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_o_reflex = {
			"wpn_fps_pis_rage_o_adapter"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_o_eotech_xps = {
			"wpn_fps_pis_rage_o_adapter"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_o_cmore = {
			"wpn_fps_pis_rage_o_adapter"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_o_aimpoint_2 = {
			"wpn_fps_pis_rage_o_adapter"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_o_acog = {
			"wpn_fps_pis_rage_o_adapter"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_o_cs = {
			"wpn_fps_pis_rage_o_adapter"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_o_spot = {
			"wpn_fps_pis_rage_o_adapter"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_o_sig = {
			"wpn_fps_pis_rage_o_adapter"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_o_bmg = {
			"wpn_fps_pis_rage_o_adapter"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_o_fc1 = {
			"wpn_fps_pis_rage_o_adapter"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_o_uh = {
			"wpn_fps_pis_rage_o_adapter"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_o_tf90 = {
			"wpn_fps_pis_rage_o_adapter"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_o_poe = {
			"wpn_fps_pis_rage_o_adapter"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_fl_pis_x400v = {
			"wpn_fps_pis_deagle_fg_rail"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_fl_pis_laser = {
			"wpn_fps_pis_deagle_fg_rail"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_fl_pis_tlr1 = {
			"wpn_fps_pis_deagle_fg_rail"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_fl_pis_crimson = {
			"wpn_fps_pis_deagle_fg_rail"
		}
self.wpn_fps_pis_amt.adds.wpn_fps_upg_fl_pis_m3x = {
			"wpn_fps_pis_deagle_fg_rail"
		}
		

self.wpn_fps_pis_amt.override.wpn_fps_upg_o_specter = {
			a_obj = "a_quite"
		}
self.wpn_fps_pis_amt.override.wpn_fps_upg_o_aimpoint = {
			a_obj = "a_quite"
		}
self.wpn_fps_pis_amt.override.wpn_fps_upg_o_docter = {
			a_obj = "a_quite"
		}
self.wpn_fps_pis_amt.override.wpn_fps_upg_o_eotech = {
			a_obj = "a_quite"
		}
self.wpn_fps_pis_amt.override.wpn_fps_upg_o_t1micro = {
			a_obj = "a_quite"
		}
self.wpn_fps_pis_amt.override.wpn_fps_upg_o_rx30 = {
			a_obj = "a_quite"
		}
self.wpn_fps_pis_amt.override.wpn_fps_upg_o_rx01 = {
			a_obj = "a_quite"
		}
self.wpn_fps_pis_amt.override.wpn_fps_upg_o_reflex = {
			a_obj = "a_quite"
		}
self.wpn_fps_pis_amt.override.wpn_fps_upg_o_eotech_xps = {
			a_obj = "a_quite"
		}
self.wpn_fps_pis_amt.override.wpn_fps_upg_o_cmore = {
			a_obj = "a_quite"
		}
self.wpn_fps_pis_amt.override.wpn_fps_upg_o_aimpoint_2 = {
			a_obj = "a_quite"
		}
self.wpn_fps_pis_amt.override.wpn_fps_upg_o_acog = {
			a_obj = "a_quite"
		}
self.wpn_fps_pis_amt.override.wpn_fps_upg_o_cs = {
			a_obj = "a_quite"
		}
self.wpn_fps_pis_amt.override.wpn_fps_upg_o_spot = {
			a_obj = "a_quite"
		}
self.wpn_fps_pis_amt.override.wpn_fps_upg_o_sig = {
			a_obj = "a_quite"
		}
self.wpn_fps_pis_amt.override.wpn_fps_upg_o_bmg = {
			a_obj = "a_quite"
		}
self.wpn_fps_pis_amt.override.wpn_fps_upg_o_fc1 = {
			a_obj = "a_quite"
		}
self.wpn_fps_pis_amt.override.wpn_fps_upg_o_uh = {
			a_obj = "a_quite"
		}
self.wpn_fps_pis_amt.override.wpn_fps_upg_o_tf90 = {
			a_obj = "a_quite"
		}
self.wpn_fps_pis_amt.override.wpn_fps_upg_o_poe = {
			a_obj = "a_quite"
		}


self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_pis_amt = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_pis_deagle)
self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_pis_amt = deep_clone(self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_pis_deagle)
self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_pis_amt = deep_clone(self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_pis_deagle)
self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_pis_amt = deep_clone(self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_pis_deagle)
self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_pis_amt = deep_clone(self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_pis_deagle)
self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_pis_amt = deep_clone(self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_pis_deagle)
self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_pis_amt = deep_clone(self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_pis_deagle)
self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_pis_amt = deep_clone(self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_pis_deagle)
self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_pis_amt = deep_clone(self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_pis_deagle)
self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_pis_amt = deep_clone(self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_pis_deagle)
self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_pis_amt = deep_clone(self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_pis_deagle)
self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_pis_amt = deep_clone(self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_pis_deagle)
self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_pis_amt = deep_clone(self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_pis_deagle)
self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_pis_amt = deep_clone(self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_pis_deagle)
self.parts.wpn_fps_upg_o_bmg.stance_mod.wpn_fps_pis_amt = deep_clone(self.parts.wpn_fps_upg_o_bmg.stance_mod.wpn_fps_pis_deagle)
self.parts.wpn_fps_upg_o_uh.stance_mod.wpn_fps_pis_amt = deep_clone(self.parts.wpn_fps_upg_o_uh.stance_mod.wpn_fps_pis_deagle)
self.parts.wpn_fps_upg_o_fc1.stance_mod.wpn_fps_pis_amt = deep_clone(self.parts.wpn_fps_upg_o_fc1.stance_mod.wpn_fps_pis_deagle)
self.parts.wpn_fps_upg_o_tf90.stance_mod.wpn_fps_pis_amt = deep_clone(self.parts.wpn_fps_upg_o_tf90.stance_mod.wpn_fps_pis_deagle)
self.parts.wpn_fps_upg_o_poe.stance_mod.wpn_fps_pis_amt = deep_clone(self.parts.wpn_fps_upg_o_poe.stance_mod.wpn_fps_pis_deagle)

end )