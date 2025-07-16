Hooks:PostHook(WeaponTweakData, "init", "sg556paint", function(self)

self.s556.damage_falloff = self.s552.damage_falloff

self.s556_crew = deep_clone(self.l85a2_crew)
self.s556_crew.sounds.prefix = "aug_npc"
self.s556_crew.hold = "rifle"
self.s556_crew.reload = "rifle"

	if restoration then
	
		self.s556.external_support = true
		self.s556.recategorize = { "heavy_ar" }
		self.s556.damage_type = "assault_rifle"
		self.s556.nato = true
		self.s556.AMMO_MAX = 120
		self.s556.tactical_reload = 1
		self.s556.CLIP_AMMO_MAX = 30
		self.s556.fire_mode_data.fire_rate = 0.125
		self.s556.FIRE_MODE = "single"
		self.s556.CAN_TOGGLE_FIREMODE = false
		self.s556.BURST_FIRE = {
			count = 3,
			delay = 0.18,
			recoil_mult = 0.8,
			last_recoil_mult = 1.05,
			rof_mult = 1.9375,
			burst_default = true
		}
		self.s556.kick = self.stat_info.kick_tables.moderate_right_kick
		self.s556.kick_pattern = {
			{0, self.stat_info.kick_tables.right_kick},
			{3, self.stat_info.kick_tables.even_recoil},
			{9, self.stat_info.kick_tables.moderate_right_kick},
			{15, self.stat_info.kick_tables.moderate_left_kick},
			{24, self.stat_info.kick_tables.vertical_kick},
			{27, self.stat_info.kick_tables.left_recoil},
		}
		self.s556.supported = true
		self.s556.ads_speed = 0.280
		self.s556.damage_falloff = {
			start_dist = 2600,
			end_dist = 6500,
			min_mult = 0.4
		}
		self.s556.stats = {
			damage = 30,
			spread = 86,
			recoil = 75,
			spread_moving = 6,
			zoom = 1,
			concealment = 23,
			suppression = 10,
			alert_size = 2,
			extra_ammo = 101,
			total_ammo_mod = 400,
			value = 1,
			reload = 20
		}
		self.s556.panic_suppression_chance = 0.05
		self.s556.stats_modifiers = nil
		self.s556.reload_speed_multiplier = 0.95
		self.s556.timers = deep_clone(self.ak5.timers)
		
	end

end)