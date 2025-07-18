Hooks:PostHook( WeaponFactoryTweakData, "init", "PD3BlysprutaMod", function(self)


local custom_weapon_id = "wpn_fps_lmg_mx63"
local stance_base_id = "wpn_fps_ass_amcar"
local uses_sights = {"wpn_fps_upg_o_specter", "wpn_fps_upg_o_aimpoint", "wpn_fps_upg_o_docter", "wpn_fps_upg_o_eotech", "wpn_fps_upg_o_t1micro", "wpn_fps_upg_o_cmore", "wpn_fps_upg_o_aimpoint_2", "wpn_fps_upg_o_acog", "wpn_fps_upg_o_eotech_xps", "wpn_fps_upg_o_reflex", "wpn_fps_upg_o_rx01","wpn_fps_upg_o_rx30", "wpn_fps_upg_o_cs", "wpn_fps_upg_o_spot", "wpn_fps_upg_o_cs", "wpn_fps_upg_o_spot", "wpn_fps_upg_o_box", "wpn_fps_upg_o_tf90", "wpn_fps_upg_o_bmg", "wpn_fps_upg_o_uh", "wpn_fps_upg_o_fc1", "wpn_fps_upg_o_poe", "wpn_fps_upg_o_hamr", "wpn_fps_upg_o_atibal", "wpn_fps_upg_o_health", "wpn_fps_upg_o_xpsg33_magnifier","wpn_fps_upg_o_sig"}

for _, sight_id in pairs(uses_sights) do
	if self.parts[sight_id].stance_mod[stance_base_id] then
		self.parts[sight_id].stance_mod[custom_weapon_id] = deep_clone(self.parts[sight_id].stance_mod[stance_base_id])
	else
		log("[ERROR] " .. custom_weapon_id .. " Missing stance_mod data for: " .. sight_id, stance_base_id)
	end
end


self.wpn_fps_lmg_mx63.override= {
--	wpn_fps_upg_o_acog = {stance_mod = {wpn_fps_lmg_mx63 = {translation = Vector3(0, 7, -0),rotation = Rotation(0, 0, 0)}}},
--	wpn_fps_upg_o_tf90 = {stance_mod = {wpn_fps_lmg_mx63 = {translation = Vector3(0, 4.5, -0.1),rotation = Rotation(0, 0, 0)}}},
--	wpn_fps_upg_o_hamr = {stance_mod = {wpn_fps_lmg_mx63 = {translation = Vector3(0, 7, -0),rotation = Rotation(0, 0, 0)}}},
--	wpn_fps_upg_o_poe = {stance_mod = {wpn_fps_lmg_mx63 = {translation = Vector3(0, 4.5, -0),rotation = Rotation(0, 0, 0)}}},
--	wpn_fps_upg_o_bmg = {stance_mod = {wpn_fps_lmg_mx63 = {translation = Vector3(0, 7, -0),rotation = Rotation(0, 0, 0)}}},
	wpn_fps_upg_m4_g_hgrip = {a_obj ="a_g"},
	wpn_fps_upg_m4_g_mgrip = {a_obj ="a_g"},
	wpn_fps_upg_m4_g_ergo = {a_obj ="a_g"},
	wpn_fps_upg_m4_g_sniper = {a_obj ="a_g"},
	wpn_fps_snp_tti_g_grippy = {a_obj ="a_g"},
	wpn_fps_sho_sko12_body_grip = {a_obj ="a_g"},
	wpn_fps_upg_g_m4_surgeon = {a_obj ="a_g"},
	wpn_fps_snp_victor_g_mod3 = {a_obj ="a_g"},
	wpn_fps_m4_uupg_g_billet = {a_obj ="a_g"}
}

--	self.parts.wpn_fps_lmg_mx63_upper.override = {
--		wpn_fps_lmg_mx63_o_rear = {
--			stance_mod = {
--				wpn_fps_lmg_mx63 = {
--					translation = Vector3(-0.07, -5.131, 0.035),
--					rotation = Rotation(0, 0, -0)
--				}
--			}	
--		},
--	}
	
-- hylie why did you do the sight stances here
-- you can just put a stance modifier in the rear sight, since the irons are proprietary to the LAMG	
	

	

end)
