Hooks:PostHook( WeaponFactoryTweakData, "init", "OwengunModInit", function(self)
	self.parts.wpn_fps_smg_owen_irons.stance_mod = {
		wpn_fps_smg_owen = {
			translation = Vector3(-2.13, 10.5, -0.5),
		    rotation = Rotation(1, 0.4, -11)
		}
	}
    self.parts.wpn_fps_smg_owen_rail.stance_mod = {
		wpn_fps_smg_owen = {
			translation = Vector3(-4.84, 11, -0.5),
		    rotation = Rotation(0, 0, -11)
		}
	}
	self.wpn_fps_smg_owen.adds = { 
		wpn_fps_upg_o_specter = { "wpn_fps_smg_owen_rail" },
		wpn_fps_upg_o_aimpoint = { "wpn_fps_smg_owen_rail" },
		wpn_fps_upg_o_aimpoint_2 = { "wpn_fps_smg_owen_rail" },
		wpn_fps_upg_o_docter = { "wpn_fps_smg_owen_rail" },
		wpn_fps_upg_o_eotech = { "wpn_fps_smg_owen_rail" },
		wpn_fps_upg_o_t1micro = { "wpn_fps_smg_owen_rail" },
		wpn_fps_upg_o_cmore = { "wpn_fps_smg_owen_rail" },
		wpn_fps_upg_o_acog = { "wpn_fps_smg_owen_rail" },
		wpn_fps_upg_o_cs = { "wpn_fps_smg_owen_rail" },
		wpn_fps_upg_o_eotech_xps = { "wpn_fps_smg_owen_rail" },
		wpn_fps_upg_o_reflex = { "wpn_fps_smg_owen_rail" },
		wpn_fps_upg_o_rx01 = { "wpn_fps_smg_owen_rail" },
		wpn_fps_upg_o_rx30 = { "wpn_fps_smg_owen_rail" },
        wpn_fps_upg_o_spot = { "wpn_fps_smg_owen_rail" }
	}
	self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_owen = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_bow_ecp)
	self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_smg_owen = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_bow_ecp)
	self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_smg_owen = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_bow_ecp)
	self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_smg_owen = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_bow_ecp)
	self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_smg_owen = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_bow_ecp)
	self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_smg_owen = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_bow_ecp)
	self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_smg_owen = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_bow_ecp)
	self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_smg_owen = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_bow_ecp)
	self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_smg_owen = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_bow_ecp)
	self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_smg_owen = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_bow_ecp)
	self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_smg_owen = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_bow_ecp)
	self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_smg_owen = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_bow_ecp)
	self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_smg_owen = deep_clone(self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_bow_ecp)
	self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_smg_owen = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_bow_ecp)
	self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_smg_owen = deep_clone(self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_bow_ecp)
end )