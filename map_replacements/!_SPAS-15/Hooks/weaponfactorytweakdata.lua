Hooks:PostHook( WeaponFactoryTweakData, "init", "SPAS15ModInit", function(self)
	
	self.parts.wpn_fps_shot_spas15_ironsight.stance_mod = {
        wpn_fps_shot_spas15 = {
            translation = Vector3(0, 0, 0)
        }
    }
	
	self.parts.wpn_fps_shot_spas15_s_flip.override = {
		wpn_fps_shot_spas15_stock_adapter = { unit = "units/mods/weapons/wpn_fps_shot_spas15_pts/wpn_fps_shot_spas15_stock_adapter_flip" }
	}

	self.parts.wpn_fps_shot_spas15_mag.bullet_objects = {prefix = "g_bullet_", amount = 1}
	self.parts.wpn_fps_shot_spas15_mag_drum.bullet_objects = {prefix = "g_bullet_", amount = 1}
	
	-- self.wpn_fps_shot_spas15.adds = {
		-- wpn_fps_upg_o_specter = {
			-- "wpn_fps_shot_spas15_body_rail"
		-- },
		-- wpn_fps_upg_o_aimpoint = {
			-- "wpn_fps_shot_spas15_body_rail"
		-- },
		-- wpn_fps_upg_o_aimpoint_2 = {
			-- "wpn_fps_shot_spas15_body_rail"
		-- },
		-- wpn_fps_upg_o_docter = {
			-- "wpn_fps_shot_spas15_body_rail"
		-- },
		-- wpn_fps_upg_o_eotech = {
			-- "wpn_fps_shot_spas15_body_rail"
		-- },
		-- wpn_fps_upg_o_t1micro = {
			-- "wpn_fps_shot_spas15_body_rail"
		-- },
		-- wpn_fps_upg_o_cmore = {
			-- "wpn_fps_shot_spas15_body_rail"
		-- },
		-- wpn_fps_upg_o_acog = {
			-- "wpn_fps_shot_spas15_body_rail"
		-- },
		-- wpn_fps_upg_o_cs = {
			-- "wpn_fps_shot_spas15_body_rail"
		-- },
		-- wpn_fps_upg_o_eotech_xps = {
			-- "wpn_fps_shot_spas15_body_rail"
		-- },
		-- wpn_fps_upg_o_reflex = {
			-- "wpn_fps_shot_spas15_body_rail"
		-- },
		-- wpn_fps_upg_o_rx30 = {
			-- "wpn_fps_shot_spas15_body_rail"
		-- },
		-- wpn_fps_upg_o_rx01 = {
			-- "wpn_fps_shot_spas15_body_rail"
		-- },
		-- wpn_fps_upg_o_spot = {
			-- "wpn_fps_shot_spas15_body_rail"
		-- }
	-- }
	
	self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_shot_spas15 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_g36)
	self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_shot_spas15 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_g36)
	self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_shot_spas15 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_g36)
	self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_shot_spas15 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_g36)
	self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_shot_spas15 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_g36)
	self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_shot_spas15 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_g36)
	self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_shot_spas15 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_g36)
	self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_shot_spas15 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_g36)
	self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_shot_spas15 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_g36)
	self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_shot_spas15 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_g36)
	self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_shot_spas15 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_g36)
	self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_shot_spas15 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_g36)
	self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_shot_spas15 = deep_clone(self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_ass_g36)
	self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_shot_spas15 = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_g36)
	self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_shot_spas15 = deep_clone(self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_ass_g36)
	self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_shot_spas15 = deep_clone(self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_ass_g36)
	self.parts.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_shot_spas15 = deep_clone(self.parts.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_ass_g36)

end )