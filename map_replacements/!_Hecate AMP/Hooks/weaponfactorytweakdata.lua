Hooks:PostHook( WeaponFactoryTweakData, "init", "HecateModInit", function(self)

	self.parts.wpn_fps_snp_hecate_a_HE.has_description = true
	self.parts.wpn_fps_snp_hecate_a_HE.sub_type = "ammo_explosive"
	self.parts.wpn_fps_snp_hecate_a_HE.custom_stats = {
		rays = 1,
		armor_piercing_add = 1,
		can_shoot_through_enemy = true, 
		can_shoot_through_shield = false, 
		can_shoot_through_wall = false,
		damage_near_mul = 3,
		damage_far_mul = 3.5,
		bullet_class = "InstantExplosiveBulletBase",
		ammo_pickup_min_mul = 1,
		ammo_pickup_max_mul = 0.39
	}
	self.parts.wpn_fps_snp_hecate_a_HE.forbids = {"wpn_fps_snp_hecate_b_short"}
		
	self.parts.wpn_fps_snp_hecate_b_short.custom_stats = {
		ammo_pickup_min_mul = 5,
		ammo_pickup_max_mul = 2.31
	}
	self.parts.wpn_fps_snp_hecate_b_short.forbids = {"wpn_fps_snp_hecate_a_HE"}
	
	
	self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_snp_hecate = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_snp_msr)
	self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_snp_hecate = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_snp_msr)
	self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_snp_hecate = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_snp_msr)
	self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_snp_hecate = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_snp_msr)
	self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_snp_hecate = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_snp_msr)
	self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_snp_hecate = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_snp_msr)
	self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_snp_hecate = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_snp_msr)
	self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_snp_hecate = deep_clone(self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_snp_msr)
	self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_snp_hecate = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_snp_msr)
	self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_snp_hecate = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_snp_msr)
	self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_snp_hecate = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_snp_msr)
	self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_snp_hecate = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_snp_msr)
	self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_snp_hecate = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_snp_msr)
	self.parts.wpn_fps_upg_o_shortdot.stance_mod.wpn_fps_snp_hecate = deep_clone(self.parts.wpn_fps_upg_o_shortdot.stance_mod.wpn_fps_snp_msr)
	self.parts.wpn_fps_upg_o_leupold.stance_mod.wpn_fps_snp_hecate = deep_clone(self.parts.wpn_fps_upg_o_leupold.stance_mod.wpn_fps_snp_msr)
	self.parts.wpn_fps_upg_o_45iron.stance_mod.wpn_fps_snp_hecate = deep_clone(self.parts.wpn_fps_upg_o_45iron.stance_mod.wpn_fps_snp_msr)
	self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_snp_hecate = deep_clone(self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_snp_msr)
	self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_snp_hecate = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_snp_msr)
	self.parts.wpn_fps_upg_o_box.stance_mod.wpn_fps_snp_hecate = deep_clone(self.parts.wpn_fps_upg_o_box.stance_mod.wpn_fps_snp_msr)
	self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_snp_hecate = deep_clone(self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_snp_msr)
	self.parts.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_snp_hecate = deep_clone(self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_snp_msr)
end )