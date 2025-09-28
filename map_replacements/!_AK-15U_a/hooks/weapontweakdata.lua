Hooks:PostHook( WeaponTweakData, "init", "ak15u_npc_init", function(self)

self.ak15u_crew.sounds.prefix = "groza_npc"

	--if BeardLib.Utils:FindMod("RestorationMod") then

		self.ak15u.categories = {							
			"assault_rifle",
			"crb"
		}
		self.ak15u.recategorize = { "heavy_ar" }
		self.ak15u.damage_type = "assault_rifle"
		self.ak15u.AMMO_MAX = 60
		self.ak15u.BURST_FIRE = 2
		self.ak15u.BURST_DELAY = 0.03
		self.ak15u.BURST_FIRE_RECOIL_MULTIPLIER = 0.4
		self.ak15u.BURST_FIRE_LAST_RECOIL_MULTIPLIER = 1.05
		self.ak15u.ADAPTIVE_BURST_SIZE = false		
		self.ak15u.external_support = true
		self.ak15u.has_description = true
		self.ak15u.name_id = "bm_ak15u_sc"
		self.ak15u.desc_id = "bm_ak15u_sc_desc"
		self.ak15u.fire_mode_data.fire_rate = 0.08571428571
		self.ak15u.auto.fire_rate = 0.08571428571
		self.ak15u.panic_suppression_chance = 0.05
		self.ak15u.kick = self.stat_info.kick_tables.moderate_right_kick
		self.ak15u.kick_pattern = {
			{0, self.stat_info.kick_tables.moderate_kick},
			{7, self.stat_info.kick_tables.moderate_right_kick},
			{16, self.stat_info.kick_tables.moderate_kick},
			{20, self.stat_info.kick_tables.moderate_left_kick},
			{25, self.stat_info.kick_tables.moderate_right_kick}
		}	
		self.ak15u.supported = true
		self.ak15u.ads_speed = 0.320
		self.ak15u.damage_falloff = {
			start_dist = 1800,
			end_dist = 4500,
			min_mult = 0.6
		}
		self.ak15u.stats = {
			damage = 30,
			spread = 78,
			recoil = 63,
			spread_moving = 9,
			zoom = 1,
			concealment = 24,
			suppression = 8,
			alert_size = 2,
			extra_ammo = 101,
			total_ammo_mod = 400,
			value = 1,
			reload = 20
		}
		self.ak15u.stats_modifiers = nil
		self.ak15u.timers = deep_clone(self.flint.timers)

		self.ak15u_crew = deep_clone(self.akm_crew)

	--end

end )