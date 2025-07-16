Hooks:PostHook( WeaponFactoryTweakData, "init", "M3ModInit", function(self)
	self.parts.wpn_fps_smg_m3_irons.stance_mod = {
		wpn_fps_smg_m3 = {
			translation = Vector3(0, 0, -1.8),
		    rotation = Rotation(0, 0, 0)
		}
	}
	self.parts.wpn_fps_smg_m3_o_adapter.stance_mod = {
		wpn_fps_smg_m3 = {
			translation = Vector3(0, 0, -1),
		    rotation = Rotation(0, 0, 0)
		}
	}
	self.parts.wpn_fps_smg_m3_a_9mm.custom_stats = {
		ammo_pickup_min_mul = 2,
		ammo_pickup_max_mul = 2
	}
	self.parts.wpn_fps_smg_m3_a_ovk_9mm.custom_stats = {
		ammo_pickup_min_mul = .37,
		ammo_pickup_max_mul = .73
	}
	self.wpn_fps_smg_m3.adds = { 
		wpn_fps_upg_o_specter = { "wpn_fps_smg_m3_o_adapter" },
		wpn_fps_upg_o_aimpoint = { "wpn_fps_smg_m3_o_adapter" },
		wpn_fps_upg_o_aimpoint_2 = { "wpn_fps_smg_m3_o_adapter" },
		wpn_fps_upg_o_docter = { "wpn_fps_smg_m3_o_adapter" },
		wpn_fps_upg_o_eotech = { "wpn_fps_smg_m3_o_adapter" },
		wpn_fps_upg_o_t1micro = { "wpn_fps_smg_m3_o_adapter" },
		wpn_fps_upg_o_cmore = { "wpn_fps_smg_m3_o_adapter" },
		wpn_fps_upg_o_acog = { "wpn_fps_smg_m3_o_adapter" },
		wpn_fps_upg_o_cs = { "wpn_fps_smg_m3_o_adapter" },
		wpn_fps_upg_o_eotech_xps = { "wpn_fps_smg_m3_o_adapter" },
		wpn_fps_upg_o_reflex = { "wpn_fps_smg_m3_o_adapter" },
		wpn_fps_upg_o_rx01 = { "wpn_fps_smg_m3_o_adapter" },
		wpn_fps_upg_o_rx30 = { "wpn_fps_smg_m3_o_adapter" },
        wpn_fps_upg_o_spot = { "wpn_fps_smg_m3_o_adapter" }
	}
	self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_m3 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_m45)
	self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_smg_m3 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_m45)
	self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_smg_m3 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_m45)
	self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_smg_m3 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_m45)
	self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_smg_m3 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_m45)
	self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_smg_m3 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_m45)
	self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_smg_m3 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_m45)
	self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_smg_m3 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_m45)
	self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_smg_m3 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_m45)
	self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_smg_m3 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_m45)
	self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_smg_m3 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_m45)
	self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_smg_m3 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_m45)
	self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_smg_m3 = deep_clone(self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_smg_m45)
	self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_smg_m3 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_m45)
	self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_smg_m3 = deep_clone(self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_smg_m45)
end )