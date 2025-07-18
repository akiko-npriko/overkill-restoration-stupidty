Hooks:PostHook(WeaponFactoryTweakData, "init", "CZEvoModInit", function(self)
self.wpn_fps_smg_czevo.animations ={
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_not_empty = "reload_not_empty"
			}
self.parts.wpn_fps_smg_czevo_sight.stance_mod = {
			wpn_fps_smg_czevo = { 
				translation = Vector3(-0.03, -4.9, 0.5),
				rotation = Rotation(0.03, 0.31, 6.51378e-012)
			}
		}
self.parts.wpn_fps_smg_czevo_sight_troy.stance_mod = {
			wpn_fps_smg_czevo = { 
				translation = Vector3(-0.01, -4.9, -1),
				rotation = Rotation(0.03, 0.31, 6.51378e-012)
			}
		}
		
	
	self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_czevo = {translation = Vector3(-0.01, 0, -1.93) + Vector3(0, 0, 0)}
	self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_smg_czevo = {translation = Vector3(-0.01, 0, -1.93) + Vector3(0, 0, 0)}
	self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_smg_czevo = {translation = Vector3(-0.01, 0, -1.93) + Vector3(0, 0, 0)}
	self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_smg_czevo = {translation = Vector3(-0.01, 0, -1.93) + Vector3(0, 0, 0)}
	self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_smg_czevo = {translation = Vector3(-0.01, 0, -1.93) + Vector3(0, 0, 0)}
	self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_smg_czevo = {translation = Vector3(-0.01, 0, -1.93) + Vector3(0, 0, 0)}
	self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_smg_czevo = {translation = Vector3(-0.01, 0, -1.93) + Vector3(0, 0, 0)}
	self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_smg_czevo = {translation = Vector3(-0.01, 0, -1.93) + Vector3(0, 0, 0)}
	self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_smg_czevo = {translation = Vector3(-0.01, 0, -1.93) + Vector3(0, 0, 0)}
	self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_smg_czevo = {translation = Vector3(-0.01, 0, -1.93) + Vector3(0, 0, 0)}
	self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_smg_czevo = {translation = Vector3(-0.01, 0, -1.93) + Vector3(0, 0, 0)}
	self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_smg_czevo = {translation = Vector3(-0.01, 0, -1.93) + Vector3(0, 0, 0)}
	self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_smg_czevo = {translation = Vector3(-0.01, 0, -1.93) + Vector3(0, 0, 0)}
	self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_smg_czevo = {translation = Vector3(-0.01, 0, -1.93) + Vector3(0, 0, 0)}
	self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_smg_czevo = {translation = Vector3(-0.01, 0, -1.93) + Vector3(0, 0, 0)}

end)