Hooks:PostHook(WeaponFactoryTweakData, "init", "cqbSightInit", function(self)

local custom_weapon_id = "wpn_fps_smg_ak5s"
local stance_base_id = "wpn_fps_ass_ak5"
local uses_sights = {"wpn_fps_upg_o_specter","wpn_fps_upg_o_aimpoint","wpn_fps_upg_o_tf90","wpn_fps_upg_o_health","wpn_fps_upg_o_docter","wpn_fps_upg_o_eotech","wpn_fps_upg_o_t1micro","wpn_fps_upg_o_acog","wpn_fps_upg_o_cmore","wpn_fps_upg_o_aimpoint_2","wpn_fps_upg_o_eotech_xps","wpn_fps_upg_o_reflex","wpn_fps_upg_o_rx01","wpn_fps_upg_o_rx30","wpn_fps_upg_o_cs", "wpn_fps_upg_o_cqb", "wpn_fps_upg_o_45rds","wpn_fps_upg_o_spot", "wpn_fps_upg_o_uh", "wpn_fps_upg_o_fc1", "wpn_fps_upg_o_bmg", "wpn_fps_upg_o_sig", "wpn_fps_upg_o_xpsg33_magnifier","wpn_fps_upg_o_poe","wpn_fps_upg_o_45rds_v2"}
for _, sight_id in pairs(uses_sights) do
	if self.parts[sight_id].stance_mod[stance_base_id] then
		self.parts[sight_id].stance_mod[custom_weapon_id] = deep_clone(self.parts[sight_id].stance_mod[stance_base_id])
		self[custom_weapon_id].adds[sight_id] = {"wpn_fps_smg_ak5s_rail"}
	else
		log("[ERROR] " .. custom_weapon_id .. " Missing stance_mod data for: " .. sight_id, stance_base_id)
	end
end


if SystemFS:exists("assets/mod_overrides/Weapon Texture Reworks/main.xml") then
		self.parts.wpn_fps_ass_g36_g_sniper.override = {
		wpn_fps_ass_g36_g_sniper_bit = {unit="units/mods/weapons/wpn_fps_ass_g36_pts/wpn_fps_ass_g36_g_sniper_bit_black"}
		}
end

self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.has_description = true

if SystemFS:exists("assets/mod_overrides/SCAR-H Improved - Black/units") then
		self.parts.wpn_fps_ass_scar_m_extended.override = {
		wpn_fps_ass_scar_m_extended = {unit="units/mods/weapons/wpn_fps_ass_scar_pts/wpn_fps_ass_scar_m_extended_black"},
		wpn_fps_ass_scar_m_extended_strap = {unit="units/mods/weapons/wpn_fps_ass_scar_pts/wpn_fps_ass_scar_m_extended_strap_black"}
		}
end

if SystemFS:exists("assets/mod_overrides/SCAR-H Improved - Black/units") then
		self.parts.wpn_fps_ass_scar_g_tan.override = {
		wpn_fps_ass_scar_g_tan = {unit="units/mods/weapons/wpn_fps_ass_scar_pts/wpn_fps_ass_scar_g_tan_2"},
		}
end

if SystemFS:exists("assets/mod_overrides/Eagle Heavy Two Tone/units") then
		self.parts.wpn_fps_ass_scar_m_extended.override = {
		wpn_fps_ass_scar_m_extended = {unit="units/mods/weapons/wpn_fps_ass_scar_pts/wpn_fps_ass_scar_m_extended_black"},
		wpn_fps_ass_scar_m_extended_strap = {unit="units/mods/weapons/wpn_fps_ass_scar_pts/wpn_fps_ass_scar_m_extended_strap_black"}
		}
end

if SystemFS:exists("assets/mod_overrides/Eagle Heavy Two Tone (Speedpull)/units") then
		self.parts.wpn_fps_ass_scar_m_extended.override = {
		wpn_fps_ass_scar_m_extended = {unit="units/mods/weapons/wpn_fps_ass_scar_pts/wpn_fps_ass_scar_m_extended_black"},
		wpn_fps_ass_scar_m_extended_strap = {unit="units/mods/weapons/wpn_fps_ass_scar_pts/wpn_fps_ass_scar_m_extended_strap_black"}
		}
end

if SystemFS:exists("assets/mod_overrides/AK5 Black/units") then
		self.parts.wpn_fps_ass_ak5_s_pts.override = {
		wpn_fps_ass_ak5_s_pts = {unit="units/mods/weapons/wpn_fps_ass_ak5_pts/wpn_fps_ass_ak5_s_pts_black"}
		}
end

if SystemFS:exists("assets/mod_overrides/Extra Attachments Compilation+-/main.xml") then
		self.parts.wpn_fps_vg_vmp_pod.pcs = nil
		self.parts.wpn_fps_vg_vmp_cheems.pcs = nil
		self.parts.wpn_fps_vg_vmp_vert.pcs = nil
end

if SystemFS:exists("assets/mod_overrides/Vertical grip attachment pack/main.xml") then
		self.parts.wpn_fps_vg_vmp_stubby.pcs = nil
		self.parts.wpn_fps_vg_vmp_medium.pcs = nil
		self.parts.wpn_fps_vg_vmp_stable.pcs = nil
		self.parts.wpn_fps_vg_vmp_pod.pcs = nil
		self.parts.wpn_fps_vg_vmp_cheems.pcs = nil
		self.parts.wpn_fps_vg_vmp_vert.pcs = nil
end

if SystemFS:exists("assets/mod_overrides/Improved weapon modification/mod.txt") then
		self.parts.wpn_fps_ass_ak_fg_waffle.pcs = nil
end

if SC and SC._data.sc_ai_toggle or restoration and restoration.Options:GetValue("SC/SC") then
		self.parts.wpn_fps_vg_vmp_stubby.pcs = nil
		self.parts.wpn_fps_vg_vmp_medium.pcs = nil
		self.parts.wpn_fps_vg_vmp_stable.pcs = nil
		self.parts.wpn_fps_vg_vmp_pod.pcs = nil
		self.parts.wpn_fps_vg_vmp_cheems.pcs = nil
		self.parts.wpn_fps_vg_vmp_vert.pcs = nil
end

self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_tf90.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cqb.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_uh.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_fc1.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_bmg.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_sig.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_poe.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_health.stance_mod.wpn_fps_smg_car9 = {translation = Vector3(-0.036, 2, -4.7) + Vector3(0, 0, 0)}


self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_tf90.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cqb.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_uh.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_fc1.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_bmg.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_sig.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_poe.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_health.stance_mod.wpn_fps_ass_sg416 = {translation = Vector3(-0.066, 0, -0.8) + Vector3(0, 0, 0)}

self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_tf90.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cqb.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_uh.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_fc1.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_bmg.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_sig.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_rmr.stance_mod.wpn_fps_pis_cold = {translation = Vector3(0, 1, -0.9), rotation = Rotation(0, -0.3, 0)}
self.parts.wpn_fps_upg_o_rms.stance_mod.wpn_fps_pis_cold = {translation = Vector3(-0.05, 1, -1), rotation = Rotation(0, -0.3, 0)}
self.parts.wpn_fps_upg_o_rikt.stance_mod.wpn_fps_pis_cold = {translation = Vector3(-0.05, 1, -1.4), rotation = Rotation(0, -0.3, 0)}
self.parts.wpn_fps_upg_o_poe.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_health.stance_mod.wpn_fps_shot_beck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}


self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_tf90.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_shortdot.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -32, -1.46) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_box.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -27, -1.57) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_leupold.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -32, -1.57) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cqb.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_uh.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_fc1.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_bmg.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_sig.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_poe.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_ass_s552_o_custom.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0.05, -7, 0.8), rotation = Rotation(0, 0.67, 0)}
self.parts.wpn_fps_upg_o_health.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -0.67) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_mbus_pro.stance_mod.wpn_fps_snp_sgs = {translation = Vector3(0, -5, -1.91) + Vector3(0, 0, 0)}


self.parts.wpn_fps_ass_aknato_sight.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0.065, 5, -2.3) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_tf90.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cqb.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_uh.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_fc1.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_bmg.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_sig.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_poe.stance_mod.wpn_fps_ass_aknato = {translation = Vector3(0, 5, -3.1) + Vector3(0, 0, 0)}

self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_tf90.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cqb.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_uh.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_fc1.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_bmg.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_sig.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_poe.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_health.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_atibal.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_hamr.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-0.066, 0, 0) + Vector3(0, 0, 0)}



self.parts.wpn_fps_smg_thompson_barrel_short.override.wpn_fps_smg_thompson_fg_custom = {unit="units/mods/weapons/wpn_fps_smg_m1928_pts/wpn_fps_smg_thompson_fg_custom_short"}

table.insert(self.parts.wpn_fps_ass_g36_s_sl8.forbids, "wpn_fps_ass_g36_g_sniper")

table.insert(self.parts.wpn_fps_m4_upg_fg_mk12.forbids, "wpn_fps_uupg_m4_fg_victorcar")

table.insert(self.parts.wpn_fps_m4_uupg_b_sd.forbids, "wpn_fps_upg_ns_pis_putnik")

self.parts.wpn_fps_pis_judge_body_raybull.animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
}



--VMP 2

self.parts.wpn_fps_snp_r700_b_short.override = {
	wpn_fps_snp_r700_o_is = {unit="units/mods/weapons/wpn_fps_snp_r700_pts/wpn_fps_snp_r700_o_is_short"}
	}
	
self.parts.wpn_fps_snp_r700_b_medium.forbids={"wpn_fps_snp_r700_o_is"}

self.parts.wpn_fps_shot_m37_b_short.override = {
	wpn_fps_shot_m37_b_front_prong = {unit="units/mods/weapons/wpn_fps_shot_m37_pts/wpn_fps_shot_m37_b_front_prong_2"}
}

self.parts.wpn_fps_shot_shorty_s_solid_short.forbids={"wpn_fps_shot_r870_b_ithaca"}

self.parts.wpn_fps_shot_shorty_s_nostock_short.forbids={"wpn_fps_shot_r870_b_ithaca"}

self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_tf90.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_uh.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_fc1.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_bmg.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_sig.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_poe.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_health.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-0.05, 0, -3.2) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_tf90.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_uh.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_fc1.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_bmg.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_health.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_sig.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_poe.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_health.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(0, -3.1, 0.4) + Vector3(0, 0, 0)}


self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_tf90.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_uh.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_fc1.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_bmg.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_sig.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_poe.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}
self.parts.wpn_fps_upg_o_health.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-1, 17, -3.4) + Vector3(0, 0, 0)}

-- Test
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_m16 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_aug = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_g36 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_m14 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_s552 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_snp_m95 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_snp_msr = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_snp_r93 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_snp_r700 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_fal = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_l85a2 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_vhs = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_snp_wa2000 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_tecci = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_snp_desertfox = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_contraband = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_snp_tti = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_flint = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_corgi = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_komodo = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_amcar = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_74 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_akm = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_akm_gold = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_ak5 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_scar = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_g3 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_galil = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_famas = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_snp_mosin = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_snp_model70 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_asval = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_sub2000 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_snp_siltstone = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_snp_r700 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_ching = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_bdgr = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_snp_sbl = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_snp_qbu88 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_shak12 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_shot_amr12 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_sho_sko12 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_snp_scout = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_snp_victor = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_shot_r870 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_shot_serbu = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_groza = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_bow_ecp = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_gre_arbiter = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_gre_china = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_gre_m79 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_gre_m32 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_gre_ms3gl = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_hailstorm = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_tkb = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_lmg_hcar = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_lmg_hk51b = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_shak12 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_gre_slap = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_bow_hunter = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_snp_contender = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_sho_ultima = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_snp_winchester = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_chinchilla = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_sho_supernova = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_snp_awp = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}

self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_mp5 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_thompson = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_m45 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_mp7 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_mac10 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_hajk = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_vityaz = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_cobray = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_mp9 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_olympic = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_shepheard = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_schakal = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_erma = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_sr2 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_akmsu = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_tec9 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_p90 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_polymer = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_coal = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_sterling = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_uzi = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_ak5s = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_baka = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_pm9 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_scorpion = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}

self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_shot_m37 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_sho_rota = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_sho_basset = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_sho_striker = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_shot_minibeck = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_sho_spas12 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_sho_boot = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_sho_ben = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_sho_ksg = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_shot_saiga = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_shot_m1897 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_shot_bs23 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_sho_aa12 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_gre_arbiter = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_m4 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_ass_spike = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_sho_m590 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_shot_huntsman = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_shot_b682 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}

self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_sparrow = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_beretta = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_rage = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_c96 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_g17 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_g26 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_g22c = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_packrat = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_1911 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_shrew = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_deagle = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_ppk = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_usp = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_hs2000 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_p226 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_g18c = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_pl14 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_legacy = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_beer = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_stech = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_lebman = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_holt = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_lemming = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_czech = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_holt = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_judge = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_beer = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_sho_coach = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_legacy = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_rsh12 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_smg_fmg9 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_maxim9 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_model3 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_type54 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_peacemaker = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_2006m = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_korth = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_m1911 = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}
self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_breech = {translation = Vector3(-4, 0, -13), rotation = Rotation(0, 0, -35)}


self.parts.wpn_fps_shot_m37_b_ridge.forbids={"wpn_fps_shot_m37_o_circle", "wpn_fps_shot_m37_o_classic"}
self.parts.wpn_fps_shot_m37_o_circle.forbids={"wpn_fps_shot_m37_b_ridge"}
self.parts.wpn_fps_shot_m37_o_classic.forbids={"wpn_fps_shot_m37_b_ridge"}


self.parts.wpn_fps_pis_m1911_sl_hardballer.override = {
	wpn_fps_pis_m1911_sl_standard_classic_dots = {unit="units/mods/weapons/wpn_fps_pis_m1911_pts/wpn_fps_pis_m1911_sl_hardballer_classic_dots"}
}

self.parts.wpn_fps_pis_m1911_sl_match.override = {
	wpn_fps_pis_m1911_sl_standard_classic_dots = {unit="units/mods/weapons/wpn_fps_pis_m1911_pts/wpn_fps_pis_m1911_sl_match_classic_dots"}
}

end)