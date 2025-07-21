Hooks:PostHook(WeaponTweakData, "init", "scar16paint", function(self)

self.scar16.damage_falloff = self.scar.damage_falloff

self.scar16_crew = deep_clone(self.l85a2_crew)
self.scar16_crew.sounds.prefix = "g36_npc"
self.scar16_crew.hold = "rifle"
self.scar16_crew.pull_magazine_during_reload = "rifle"

	if restoration then
	
		self.scar16.external_support = true
		self.scar16.name_id = "bm_w_scarl"
		self.scar16.has_description = true
		self.scar16.desc_id = "bm_scarl_sc_desc"
		self.scar16.recategorize = { "heavy_ar" }
		self.scar16.damage_type = "assault_rifle"
		self.scar16.tactical_reload = 1
		self.scar16.nato = true
		self.scar16.lock_slide = true
		self.scar16.sounds.magazine_empty = "wp_rifle_slide_lock"
		self.scar16.CLIP_AMMO_MAX = 30
		self.scar16.AMMO_MAX = 120
		self.scar16.FIRE_MODE = "auto"
		self.scar16.fire_mode_data = {}
		self.scar16.fire_mode_data.fire_rate = 0.096
		self.scar16.CAN_TOGGLE_FIREMODE = true
		self.scar16.kick = {}
		self.scar16.kick = self.stat_info.kick_tables.moderate_kick
		self.scar16.kick_pattern = {
			{0, self.stat_info.kick_tables.moderate_kick},
			{4, self.stat_info.kick_tables.moderate_right_kick},
			{9, self.stat_info.kick_tables.moderate_kick},
			{13, self.stat_info.kick_tables.moderate_right_kick},
			{19, self.stat_info.kick_tables.moderate_left_kick},
			{22, self.stat_info.kick_tables.moderate_kick}
		}
		self.scar16.supported = true
		self.scar16.ads_speed = 0.340
		self.scar16.damage_falloff = {
			start_dist = 2800,
			end_dist = 6500,
			min_mult = 0.4
		}
		self.scar16.stats = {
			damage = 30,
			spread = 86,
			recoil = 85,
			spread_moving = 6,
			zoom = 1,
			concealment = 23,
			suppression = 8,
			alert_size = 2,
			extra_ammo = 101,
			total_ammo_mod = 400,
			value = 9,
			reload = 20
		}
		self.scar16.stats_modifiers = nil
		self.scar16.panic_suppression_chance = 0.05
		self.scar16.timers.reload_empty = 3.1
		self.scar16.timers.reload_exit_empty = 0.8
		self.scar16.timers.reload_not_empty = 2.23
		self.scar16.timers.reload_exit_not_empty = 0.8
		
	end

end)