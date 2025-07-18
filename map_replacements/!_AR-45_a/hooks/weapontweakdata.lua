Hooks:PostHook( WeaponTweakData, "init", "ar45stuff_2", function(self)

self.ar45.damage_falloff = self.schakal.damage_falloff
self.x_ar45.damage_falloff = self.x_schakal.damage_falloff
--[[self.ar45.kick = deep_clone(self.schakal.kick)
self.x_ar45.kick = deep_clone(self.x_schakal.kick)]]

self.ar45_crew = deep_clone(self.schakal_crew)
self.ar45_crew.sounds.prefix = "m1928_npc"
self.ar45_crew.hold = "rifle"

self.x_ar45_crew = deep_clone(self.x_schakal_crew)
self.x_ar45_crew.sounds.prefix = "m1928_x_npc"
self.x_ar45_crew.hold = "akimbo_pistol"

	if restoration then
		
		self.ar45.name_id = "bm_ar45_sc"
		self.ar45.external_support = true
		self.ar45.recategorize = { "heavy_smg" }
		self.ar45.damage_type = "machine_gun"
		self.ar45.use_data.selection_index = 2
		self.ar45.CLIP_AMMO_MAX = 30
		self.ar45.fire_mode_data.fire_rate = 0.08
		self.ar45.panic_suppression_chance = 0.05
		self.ar45.kick = self.stat_info.kick_tables.even_recoil
		self.ar45.kick_pattern = {
			{0, self.stat_info.kick_tables.even_recoil},
			{4, self.stat_info.kick_tables.moderate_right_kick},
			{14, self.stat_info.kick_tables.moderate_kick},
			{20, self.stat_info.kick_tables.even_recoil}
		}
		self.ar45.AMMO_MAX = 120
		self.ar45.supported = true
		self.ar45.ads_speed = 0.2
		self.ar45.damage_falloff = {
			start_dist = 900,
			end_dist = 3800,
			min_mult = 0.3
		}
		self.ar45.stats = {
			damage = 30,
			spread = 65,
			recoil = 77,
			spread_moving = 8,
			zoom = 1,
			concealment = 27,
			suppression = 10,
			alert_size = 2,
			extra_ammo = 101,
			total_ammo_mod = 400,
			value = 1,
			reload = 20
		}
		self.ar45.stats_modifiers = nil
		self.ar45.timers = deep_clone(self.shepheard.timers)

		tact_rel1 = {'x_ar45'}
		for i, wep_id in ipairs(tact_rel1) do
			self[wep_id].tactical_reload = 2
			self[wep_id].categories = {"akimbo", "smg"}
		end

		self.x_ar45.name_id = "bm_x_ar45_sc"
		self.x_ar45.external_support = true
		self.x_ar45.use_data.selection_index = 2
		self.x_ar45.CLIP_AMMO_MAX = 60
		self.x_ar45.fire_mode_data.fire_rate = 0.08
		self.x_ar45.panic_suppression_chance = 0.05
		self.x_ar45.recategorize = { "heavy_smg" }
		self.x_ar45.damage_type = "machine_gun"
		self.x_ar45.kick = self.stat_info.kick_tables.even_recoil
		self.x_ar45.kick_pattern = {
			{0, self.stat_info.kick_tables.even_recoil},
			{4, self.stat_info.kick_tables.moderate_right_kick},
			{14, self.stat_info.kick_tables.moderate_kick},
			{20, self.stat_info.kick_tables.even_recoil}
		}
		self.x_ar45.AMMO_MAX = 120
		self.x_ar45.supported = true
		self.x_ar45.ads_speed = 0.2
		self.x_ar45.damage_falloff = {
			start_dist = 900,
			end_dist = 3800,
			min_mult = 0.3
		}
		self.x_ar45.stats = {
			damage = 30,
			spread = 55,
			recoil = 67,
			spread_moving = 8,
			zoom = 1,
			concealment = 27,
			suppression = 10,
			alert_size = 2,
			extra_ammo = 101,
			total_ammo_mod = 400,
			value = 1,
			reload = 20
		}
		self.x_ar45.stats_modifiers = nil
		self.x_ar45.sounds.fire = "m1928_fire_single"
		self.x_ar45.sounds.fire_single = "m1928_fire_single"
		self.x_ar45.sounds.fire_auto = "m1928_fire"
		self.x_ar45.sounds.stop_fire = "m1928_stop"
		self.x_ar45.reload_speed_multiplier = 0.65
		self.x_ar45.timers.reload_empty = 2.4
		self.x_ar45.timers.reload_exit_empty = 0.95
		self.x_ar45.timers.reload_not_empty = 1.4
		self.x_ar45.timers.reload_exit_not_empty = 1.3		

	end

end)