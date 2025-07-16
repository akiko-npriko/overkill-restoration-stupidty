Hooks:PostHook(WeaponFactoryTweakData, "init", "TOZ34ModInit", function(self)
local custom_weapon_id = "wpn_fps_shot_toz34"
local stance_base_id = "wpn_fps_ass_amcar"
local uses_sights = {"wpn_fps_upg_o_specter","wpn_fps_upg_o_aimpoint","wpn_fps_upg_o_docter","wpn_fps_upg_o_eotech","wpn_fps_upg_o_t1micro","wpn_fps_upg_o_cmore","wpn_fps_upg_o_aimpoint_2","wpn_fps_upg_o_acog","wpn_fps_upg_o_eotech_xps","wpn_fps_upg_o_reflex","wpn_fps_upg_o_rx01","wpn_fps_upg_o_rx30","wpn_fps_upg_o_cs","wpn_fps_upg_o_spot","wpn_fps_upg_o_xpsg33_magnifier"}
for _, sight_id in pairs(uses_sights) do
	if self.parts[sight_id].stance_mod[stance_base_id] then
		self.parts[sight_id].stance_mod[custom_weapon_id] = deep_clone(self.parts[sight_id].stance_mod[stance_base_id])
		self[custom_weapon_id].adds[sight_id] = {"wpn_fps_shot_toz34_sight_rail"}
	else
		log("[ERROR] " .. custom_weapon_id .. " Missing stance_mod data for: " .. sight_id, stance_base_id)
	end
end
end)