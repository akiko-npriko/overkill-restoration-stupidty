Hooks:PostHook(WeaponTweakData, "init", "acr_but_weeb_mod_init", function(self)


if restoration and self.stat_info then
        
                self.howa_type20.external_support = true
                self.howa_type20.has_description = true
                self.howa_type20.fire_mode_data.fire_rate = 0.0888889
                self.howa_type20.kick = self.stat_info.kick_tables.moderate_right_kick
                self.howa_type20.kick_pattern = {
                    {0, self.stat_info.kick_tables.right_recoil},
                    {4, self.stat_info.kick_tables.moderate_right_kick},
                    {9, self.stat_info.kick_tables.moderate_kick},
                    {18, self.stat_info.kick_tables.moderate_right_kick},
                    {22, self.stat_info.kick_tables.right_recoil}
                }
                self.howa_type20.supported = true
                self.howa_type20.ads_speed = 0.300
                self.howa_type20.damage_falloff = {
                    start_dist = 2700,
                    end_dist = 7000,
                    min_mult = 0.5
                }
                self.howa_type20.stats = {
                    damage = 24,
                    spread = 81,
                    recoil = 77,
                    spread_moving = 6,
                    zoom = 1,
                    concealment = 26,
                    suppression = 9,
                    alert_size = 2,
                    extra_ammo = 101,
                    total_ammo_mod = 400,
                    value = 1,
                    reload = 20
                }
                self.howa_type20.stats_modifiers = nil
                self.howa_type20.timers.reload_empty = 3
                self.howa_type20.timers.reload_exit_empty = 1.15
                self.howa_type20.timers.reload_exit_not_empty = 0.95
                self.howa_type20.panic_suppression_chance = 0.05
                self.howa_type20.reload_speed_multiplier = 1
        end
		
		
		



end)

