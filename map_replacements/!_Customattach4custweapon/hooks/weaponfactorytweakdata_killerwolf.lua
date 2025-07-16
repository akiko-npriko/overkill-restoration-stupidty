Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "CAFCWMod_Killerwolf_Init", function(self)

-----------! > Primary < !-----------

	---- Assault Rifles ---

-- Seburo C26A
if self.wpn_fps_ass_sc26a then
	self:cafcw_add_custom_ammo("wpn_fps_ass_sc26a", "_545x39mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_sc26a", "wpn_fps_ass_flint")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_sc26a", "wpn_fps_ass_flint")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_sc26a", "wpn_fps_ass_flint")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_sc26a")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_sc26a")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_sc26a")
end

-- Seburo C30
if self.wpn_fps_ass_sc30 then
	self:cafcw_add_custom_ammo("wpn_fps_ass_sc30", "_545x39mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_sc30", "wpn_fps_ass_flint")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_sc30", "wpn_fps_ass_flint")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_sc30", "wpn_fps_ass_flint")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_sc30")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_sc30")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_sc30")
end

	---- Akimbos ---

	-- Akimbo HK416C --
if self.wpn_fps_ass_x_hk416c then
	self:cafcw_add_custom_ammo("wpn_fps_ass_x_hk416c", "_556x45mm")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_x_hk416c")
end

	-- Akimbo Luger P08 --
if self.wpn_fps_pis_x_luger then
self:cafcw_add_custom_ammo("wpn_fps_pis_x_luger", "_9x19mm")
end

	---- Machine Guns ---
	
	-- DP28 --
if self.wpn_fps_lmg_dp28 then
	self:cafcw_add_custom_ammo("wpn_fps_lmg_dp28", "_762x54mmr")
--	self:cafcw_add_custom_sights_ext("Specter", "wpn_fps_lmg_dp28", "wpn_fps_lmg_mg42", "0,10,-4", "wpn_fps_lmg_dp28_rail_sight", "wpn_fps_lmg_dp28_ro_rail")
--	self:cafcw_add_custom_sights_ext("ACOG", "wpn_fps_lmg_dp28", "wpn_fps_lmg_mg42", "0,10,-4", "wpn_fps_lmg_dp28_rail_sight", "wpn_fps_lmg_dp28_ro_rail")	
--	self:cafcw_add_custom_sights("Custom", "wpn_fps_lmg_dp28", "wpn_fps_lmg_mg42", "wpn_fps_lmg_dp28_rail_sight,wpn_fps_lmg_dp28_ro_rail", "0,0,0.92")
--	self:cafcw_add_custom_sights("RDS45", "wpn_fps_lmg_dp28", "wpn_fps_lmg_mg42", "wpn_fps_lmg_dp28_rail_sight,wpn_fps_lmg_dp28_ro_rail", "-3.1,-2,-8.24")
	self:cafcw_category_forbid("wpn_fps_lmg_dp28", "sight", "wpn_fps_lmg_dp28_m_dpm36", "wpn_fps_lmg_dp28_o_dummy")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_lmg_dp28")
end	

	-- FG42 --
if self.wpn_fps_lmg_fg42 then
	self:cafcw_add_custom_ammo("wpn_fps_lmg_fg42", "_792x57mm")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_lmg_fg42")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_lmg_fg42")
end	

	---- Pistols / Revolvers ----
	---- Shotuns ---

	-- DP12 --
if self.wpn_fps_sho_dp12 then
	self:cafcw_add_custom_ammo("wpn_fps_sho_dp12", "_12ga")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_sho_dp12", "wpn_fps_sho_ksg", nil, "0,0,-0.38")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_sho_dp12", "wpn_fps_sho_ksg", nil, "0,3,-0.38")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_sho_dp12", "wpn_fps_sho_ksg", nil, "0,0,0.92")
--	self:cafcw_add_custom_sights("RDS45", "wpn_fps_sho_dp12", "wpn_fps_sho_ksg", nil, "-3.1,-2,-8.24")
	self:cafcw_category_forbid("wpn_fps_sho_dp12", "sight", "wpn_fps_shot_dp12_norail", "wpn_fps_sho_dp12_o_standard")
end

	-- Remington 870 Sawed-off --
if self.wpn_fps_shot_r870sawed then
self:cafcw_add_custom_ammo("wpn_fps_shot_r870sawed", "_12ga")
end
	
	---- Sniper Rifles ----

	-- Karabiner 98k --
if self.wpn_fps_snp_kar98k then
self:cafcw_add_custom_ammo("wpn_fps_snp_kar98k", "_792x57mm")
self:cafcw_add_custom_ammo("wpn_fps_snp_kar98k", "_12ga")
self:cafcw_add_custom_ammo("wpn_fps_snp_kar98k_m_geha", "_792x57mm", "forbids_add")
self:cafcw_add_custom_ammo("wpn_fps_snp_kar98k_m_standard", "_12ga", "forbids_add")
end
	---- Specials ----
	---- Submachine Guns ----
	
-----------! > Secondary < !-----------

	---- Assault Rifles ---
	---- Akimbos ---
	---- Machine Guns ---
	
	---- Pistols / Revolvers ----

    -- High Standard HDM / Akimbo High Standard HDM  --
--[[if self.wpn_fps_pis_hshdm and self.wpn_fps_pis_x_hshdm then
--    self:cafcw_add_custom_sights("Custom_Pistol", "wpn_fps_pis_hshdm", "wpn_fps_pis_breech")
end]]
	
	-- Colt M1911A1 / Akimbo Colt M1911A1 --
	
	-- GSh-18 / Akimbo GSh-18 --	
if self.wpn_fps_pis_gsh18 then
	self:cafcw_add_custom_ammo("wpn_fps_pis_gsh18", "_9x19mm")
	self:cafcw_add_custom_ammo("wpn_fps_pis_gsh18", "_9x19mm_p")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_gsh18", "a_ns", "barrel")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_gsh18", "a_ns", "barrel")
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_gsh18")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_gsh18")
end
if self.wpn_fps_x_gsh18 then
	self:cafcw_add_custom_ammo("wpn_fps_x_gsh18", "_9x19mm")
	self:cafcw_add_custom_ammo("wpn_fps_x_gsh18", "_9x19mm_p")
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_x_gsh18")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_x_gsh18")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_x_gsh18", "a_ns", "barrel")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_x_gsh18", "a_ns", "barrel")
end
	
	---- Shotuns ---
	---- Sniper Rifles ----
	---- Specials ----
	---- Submachine Guns ----

if self.wpn_fps_smg_lugerwth then
	self:cafcw_add_custom_ammo("wpn_fps_smg_lugerwth", "_9x19mm")
end

-----------! > Attachments < !-----------

-- Bayonet mod
if self.parts.wpn_fps_upg_akm_bayonet then
	self:cafcw_forbids_attachment_type("Barrel_Extensions", "wpn_fps_upg_akm_bayonet")
	self:cafcw_forbids_attachment_type("Suppressors", "wpn_fps_upg_akm_bayonet")
end
	---- Ammo ----
-- Christ I don't come here often huh.. 01.02.2020
if self.parts.wpn_fps_upg_ac_416barrett then
	self:cafcw_add_custom_ammo("wpn_fps_upg_ac_416barrett", "_127x99mm", "forbids_add")
end

--[[	-- _9x19mm --
local custom9mm_guns = {
	"wpn_fps_pis_x_luger",
	"wpn_fps_smg_aek919",
	"wpn_fps_smg_x_aek919"
}

local custom9mm_ammo = {
	"wpn_fps_pistolin9mm",
	"wpn_fps_upg_a_taser9mm",
	"wpn_fps_upg_a_lap9mm",
	"wpn_fps_upg_a_ap9mm",
	"wpn_fps_upg_a_hv9mm"
}

for i, factory_id in ipairs(custom9mm_guns) do
	if self[factory_id] then
		for i, part_id in ipairs(custom9mm_ammo) do
			if self.parts[part_id] then
				table.insert(self[factory_id].uses_parts, part_id)
			end
		end
	end
end
--]]

end)