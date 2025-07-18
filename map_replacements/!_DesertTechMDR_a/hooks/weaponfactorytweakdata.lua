Hooks:PostHook(WeaponFactoryTweakData, "init", "mdr308_init", function(self)
	
	self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_ass_mdr_308 = {translation = Vector3(-3.86, -3, -11.3),rotation = Rotation(0, 0, -45)}
    self.parts.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_ass_mdr_308 = deep_clone(self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_ass_mdr_308)
    self.parts.wpn_fps_upg_o_45iron.stance_mod.wpn_fps_ass_mdr_308 = deep_clone(self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_ass_mdr_308)
	
	self.parts.wpn_fps_ass_fn40_gl.override_weapon = { 
		use_stance = "mdr_308",
		weapon_hold = "mdr_308"
	}
	
	if self.parts.wpn_fps_ass_mdr_308_snp_am then --wrote this before i coded in the attachment.
		self.parts.wpn_fps_ass_mdr_308_snp_am.has_description = true
		self.parts.wpn_fps_ass_mdr_308_snp_am.custom_stats = {
			rays = 1,
			ammo_pickup_min_mul = 0.60,
			ammo_pickup_max_mul = 0.60,
			armor_piercing_add = 1,
			can_shoot_through_enemy = true,
			can_shoot_through_shield = true,
			can_shoot_through_wall = true,
		}
	end	
	if self.parts.wpn_fps_ass_mdr_308_barrel_sniper then -- Sniper Barrel
		self.parts.wpn_fps_ass_mdr_308_barrel_sniper.has_description = true
		self.parts.wpn_fps_ass_mdr_308_barrel_sniper.override_weapon_multiply = {
			fire_mode_data = {
				fire_rate = 1 / 0.20
			}
		}
	end

end)