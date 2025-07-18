Hooks:PostHook( WeaponFactoryTweakData, "init", "PD3S&W500_init", function(self)

self.wpn_fps_pis_bk500.override= {
        wpn_fps_upg_o_acog = {stance_mod = {wpn_fps_pis_bk500 = {translation = Vector3(0, 1.304, -3.310),rotation = Rotation(0, 0, 0)}}},
	wpn_fps_upg_ns_pis_ipsccomp = {a_obj="a_ns", parent="barrel"},
	wpn_fps_upg_pis_ns_flash = {a_obj="a_ns", parent="barrel"},
	wpn_fps_upg_ns_pis_meatgrinder = {a_obj="a_ns", parent="barrel"},
	wpn_fps_pis_bk500_o_adapter_pistol = {a_obj="a_adapter"},
	wpn_fps_pis_bk500_o_adapter_rail = {a_obj="a_adapter"}
}

local custom_weapon_id = "wpn_fps_pis_bk500"
local stance_base_id = "wpn_fps_pis_korth"
local uses_sights = {"wpn_fps_upg_o_rmr", "wpn_fps_upg_o_acog", "wpn_fps_upg_o_rikt", "wpn_fps_upg_o_rms"}

for _, sight_id in pairs(uses_sights) do
	if self.parts[sight_id].stance_mod[stance_base_id] then
		self.parts[sight_id].stance_mod[custom_weapon_id] = deep_clone(self.parts[sight_id].stance_mod[stance_base_id])
	else
		log("[ERROR] " .. custom_weapon_id .. " Missing stance_mod data for: " .. sight_id, stance_base_id)
	end
end
	
end )
