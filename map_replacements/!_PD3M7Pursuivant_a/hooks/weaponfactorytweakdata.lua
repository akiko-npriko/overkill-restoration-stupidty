Hooks:PostHook(WeaponFactoryTweakData, "init", "PD3BP12ShotgunMod", function(self)

local custom_weapon_id = "wpn_fps_sho_bp12"
local stance_base_id = "wpn_fps_ass_amcar"
local uses_sights = {"wpn_fps_upg_o_specter", "wpn_fps_upg_o_aimpoint", "wpn_fps_upg_o_docter", "wpn_fps_upg_o_eotech", "wpn_fps_upg_o_t1micro", "wpn_fps_upg_o_cmore", "wpn_fps_upg_o_aimpoint_2", "wpn_fps_upg_o_acog", "wpn_fps_upg_o_eotech_xps", "wpn_fps_upg_o_reflex", "wpn_fps_upg_o_rx01","wpn_fps_upg_o_rx30", "wpn_fps_upg_o_cs", "wpn_fps_upg_o_spot", "wpn_fps_upg_o_cs", "wpn_fps_upg_o_spot", "wpn_fps_upg_o_box", "wpn_fps_upg_o_tf90", "wpn_fps_upg_o_bmg", "wpn_fps_upg_o_uh", "wpn_fps_upg_o_fc1", "wpn_fps_upg_o_poe", "wpn_fps_upg_o_hamr", "wpn_fps_upg_o_atibal", "wpn_fps_upg_o_health"}

for _, sight_id in pairs(uses_sights) do
	if self.parts[sight_id].stance_mod[stance_base_id] then
		self.parts[sight_id].stance_mod[custom_weapon_id] = deep_clone(self.parts[sight_id].stance_mod[stance_base_id])
	else
		log("[ERROR] " .. custom_weapon_id .. " Missing stance_mod data for: " .. sight_id, stance_base_id)
	end
end

 self.parts.wpn_fps_sho_bp12_body.animations = {
		fire = "recoil",
		fire_steelsight = "recoil",
		reload = "reload"
		}

 self.parts.wpn_fps_sho_bp12_dh.animations = {
		fire = "recoil",
		fire_steelsight = "recoil",
		reload = "reload"
		}

end )