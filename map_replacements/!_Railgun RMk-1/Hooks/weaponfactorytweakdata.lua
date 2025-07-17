Hooks:PostHook( WeaponFactoryTweakData, "init", "RoachModInit", function(self)
	
	if restoration then
		self.parts.wpn_fps_special_roach_a_sabot.supported = true
		self.parts.wpn_fps_special_roach_irons.supported = true
		self.parts.wpn_fps_special_roach_barrel.supported = true
		self.parts.wpn_fps_special_roach_frame.supported = true
		self.parts.wpn_fps_special_roach_fl_built.supported = true
	end
	
	self.parts.wpn_fps_special_roach_irons.stance_mod = {
		wpn_fps_special_roach = {
			translation = Vector3(0, -12.5, -5.3)
			--translation = Vector3(-1, -18.5, -8) used for without use_stance=svd
		}
	}
	self.parts.wpn_fps_special_roach_irons.perks = {"scope", "highlight"}
	
	self.parts.wpn_fps_special_roach_barrel.adds = {"wpn_fps_special_roach_o_inside", "wpn_fps_special_roach_o_lens", "wpn_fps_special_roach_o_reticle"}--"wpn_fps_special_roach_o_display" unusable without the range finder. Explnation on main.xml
	
	self.parts.wpn_fps_special_roach_frame.adds = {"wpn_fps_special_roach_discharge"}
	
	self.parts.wpn_fps_special_roach_fl_built.stats = nil
	self.parts.wpn_fps_special_roach_fl_built.adds = {"wpn_fps_upg_fl_ass_peq15_flashlight"}
	self.parts.wpn_fps_special_roach_fl_built.perks = {"gadget"}
	

	self.parts.wpn_fps_special_roach_a_sabot.custom_stats = {
		--rays = 1,
		--armor_piercing_add = 1,
		--can_shoot_through_enemy = true, 
		--can_shoot_through_shield = true, 
		--can_shoot_through_wall = true, 
		--damage_near_mul = 1.1,
		--damage_far_mul = 0.9,
		--bullet_class = "InstantExplosiveBulletBase",
		railgunsttat = {
			regen_ammo_time = 2.5, -- delay to start regen 
			regen_rate = 0.2, -- speed of regen per second
		}
	}
	
	self.parts.wpn_fps_special_roach_a_tungsten.override = {
		wpn_fps_special_roach_barrel = { unit="units/mods/weapons/wpn_fps_special_roach_pts/wpn_fps_special_roach_barrel-50cal" },
		wpn_fps_special_roach_discharge = { unit="units/mods/weapons/wpn_fps_special_roach_pts/wpn_fps_special_roach_discharge-small" }
	}
	self.parts.wpn_fps_special_roach_a_tungsten.custom_stats = {
		--rays = 1,
		--armor_piercing_add = 1,
		--can_shoot_through_enemy = true, 
		--can_shoot_through_shield = true, 
		--can_shoot_through_wall = true,
		--ammo_pickup_min_mul = 1,
		--ammo_pickup_max_mul = 2.03,
		railgunsttat = {
			regen_ammo_time = 2.5, -- delay to start regen 
			regen_rate = 0.2, -- speed of regen per second
		}
	}
	self.parts.wpn_fps_special_roach_a_thermal.override = {
		wpn_fps_special_roach_barrel = { unit="units/mods/weapons/wpn_fps_special_roach_pts/wpn_fps_special_roach_barrel-thermal" },
	}
	self.parts.wpn_fps_special_roach_a_thermal.forbids = {"wpn_fps_special_roach_discharge"}
	self.parts.wpn_fps_special_roach_a_thermal.custom_stats = {
		--rays = 1,
		--armor_piercing_add = 1,
		--can_shoot_through_enemy = true, 
		--can_shoot_through_shield = true, 
		--can_shoot_through_wall = true,
		--damage_near_mul = 0.95,
		--damage_far_mul = 0.75,
		--bullet_class = "InstantExplosiveBulletBase",
		--ammo_pickup_min_mul = 1,
		--ammo_pickup_max_mul = 4.06,
		railgunsttat = {
			regen_ammo_time = 2.5, -- delay to start regen 
			regen_rate = 0.2, -- speed of regen per second
		}
	}
	
end)