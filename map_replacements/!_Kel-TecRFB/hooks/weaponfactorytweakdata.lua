Hooks:PostHook(WeaponFactoryTweakData, "init", "epic_game_ghir_init", function(self)

--	self.parts.wpn_fps_snp_leet_o_irons.stance_mod = {
--		wpn_fps_snp_leet = {
--			translation = Vector3(0.07, 0, 0),
--			rotation = Rotation(0, -0.15, 0)
			-- something i learned here:
			-- you ABSOLUTELY HAVE to take great care when doing this because it messes with the whole gun.
			-- in so many words, if you have a stance_mod defined here but you haven't defined anything in main.xml it defaults to using this as the main stance_mod.
			-- which kind of breaks things. oops
--		}
--	}


	self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_snp_leet = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_komodo)
	self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_snp_leet = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_komodo)
	self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_snp_leet = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_komodo)
	self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_snp_leet = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_komodo)
	self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_snp_leet = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_komodo)
	self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_snp_leet = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_komodo)
	self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_snp_leet = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_komodo)
	self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_snp_leet = deep_clone(self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_ass_komodo)
	self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_snp_leet = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_komodo)
	self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_snp_leet = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_komodo)
	self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_snp_leet = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_komodo)
	self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_snp_leet = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_komodo)
	self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_snp_leet = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_komodo)
	self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_snp_leet = deep_clone(self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_ass_komodo)
	self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_snp_leet = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_komodo)
	self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.leet = deep_clone(self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_ass_komodo)
	self.parts.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_snp_leet = deep_clone(self.parts.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_ass_komodo)
	-- todo: set up deep_cloning of magnified/sniper/zoom/etc scopes
	
	
	table.insert(self.wpn_fps_snp_leet.uses_parts, "wpn_fps_upg_bonus_concealment_p2")
--
end)