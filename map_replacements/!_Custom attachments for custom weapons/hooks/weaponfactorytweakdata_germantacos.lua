Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "CAFCWMod_GermanTacos_Init", function(self)
---SECONDARY

--SIG P220

if self.wpn_fps_pis_noodle then
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_noodle")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_noodle")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_noodle", "a_ns", "barrel")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_noodle", "a_ns", "barrel")
end

--SIG P225

if self.wpn_fps_pis_sammy then
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_sammy")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_sammy")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_sammy", "a_ns", "barrel")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_sammy", "a_ns", "barrel")
	self:cafcw_add_custom_ammo("wpn_fps_pis_sammy", "_9x19mm")
end

--Mustang and Sally

if self.wpn_fps_pis_mustang and self.wpn_fps_pis_sally then
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_mustang")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_mustang")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_mustang", "a_ns", "barrel")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_mustang", "a_ns", "barrel")
	
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_sally")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_sally")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_sally", "a_ns", "barrel")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_sally", "a_ns", "barrel")
end

--Tariq

if self.wpn_fps_pis_tariq then
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_tariq")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_tariq")
	self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_tariq", "a_ns", "barrel")
	self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_tariq", "a_ns", "barrel")
	self:cafcw_add_custom_ammo("wpn_fps_pis_tariq", "_9x19mm")
end

--Glock 17 Gen 3

if self.wpn_fps_pis_glawk then
	self:cafcw_add_custom_ammo("wpn_fps_pis_glawk", "_9x19mm")
	self:cafcw_add_custom_ammo("wpn_fps_pis_glawk_a1_22lr", "_9x19mm", "forbids_add")
	self:cafcw_add_custom_ammo("wpn_fps_pis_glawk_a1_40sw", "_9x19mm", "forbids_add")
	self:cafcw_add_custom_ammo("wpn_fps_pis_glawk_a2_10mm", "_9x19mm", "forbids_add")
	self:cafcw_add_custom_ammo("wpn_fps_pis_glawk_a3_357sig", "_9x19mm", "forbids_add")
	self:cafcw_add_custom_ammo("wpn_fps_pis_glawk_a4_45acp", "_9x19mm", "forbids_add")
	self:cafcw_add_custom_ammo("wpn_fps_pis_glawk_a5_45gap", "_9x19mm", "forbids_add")
end

--CZ 75 B
if self.wpn_fps_pis_cz75b and self.wpn_fps_pis_x_cz75b then

	self:cafcw_add_custom_ammo("wpn_fps_pis_cz75b", "_9x19mm")
	self:cafcw_add_custom_ammo("wpn_fps_pis_x_cz75b", "_9x19mm")

end

--Glock P80
if self.wpn_fps_pis_p80 then
	self:cafcw_add_custom_ammo("wpn_fps_pis_p80", "_9x19mm")
	self:cafcw_add_custom_ammo("wpn_fps_pis_p80_a1_40sw", "_9x19mm", "forbids_add")
	self:cafcw_add_custom_ammo("wpn_fps_pis_p80_a2_10mm", "_9x19mm", "forbids_add")
	self:cafcw_add_custom_ammo("wpn_fps_pis_p80_a3_357sig", "_9x19mm", "forbids_add")
	self:cafcw_add_custom_ammo("wpn_fps_pis_p80_a4_45acp", "_9x19mm", "forbids_add")
	self:cafcw_add_custom_ammo("wpn_fps_pis_p80_a5_45gap", "_9x19mm", "forbids_add")
end

--[[PM-63 RAK
if self.wpn_fps_smg_pm63 then
end]]

--CZ 75 Short Rail

if self.wpn_fps_pis_rally then

	self:cafcw_add_custom_ammo("wpn_fps_pis_rally", "_9x19mm")

end

--CZ-2



--Seburo M5

if self.wpn_fps_pis_seburo and self.wpn_fps_pis_x_seburo then
	self:cafcw_add_custom_ammo("wpn_fps_pis_seburo", "_545x18mm_nonap")
	self:cafcw_add_custom_ammo("wpn_fps_pis_x_seburo", "_545x18mm_nonap")
end

---StG58
if self.wpn_fps_ass_fusil_762 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_fusil_762", "wpn_fps_ass_scar", "wpn_fps_ass_fusil_762_sm_modern", "0,5,-3.05")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_fusil_762", "wpn_fps_ass_scar", "wpn_fps_ass_fusil_762_sm_modern", "0,2,-3.05")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_fusil_762", "wpn_fps_ass_scar", "wpn_fps_ass_fusil_762_sm_modern", "0,5,-2.8")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_fusil_762", "wpn_fps_ass_scar", "wpn_fps_ass_fusil_762_sm_modern")
	self:cafcw_add_custom_ammo("wpn_fps_ass_fusil_762", "_762x51mm")
end
---AR PACK
if self.wpn_fps_ass_stoy_556 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_stoy_556", "wpn_fps_ass_flint", nil, "0,7,-5.15")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_stoy_556", "wpn_fps_ass_flint", nil, "0,5,-5.15")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_stoy_556", "wpn_fps_ass_flint", nil, "0,2,-2.5")
--	self:cafcw_add_custom_sights_ext("RDS45", "wpn_fps_ass_stoy_556", "wpn_fps_ass_flint", "wpn_fps_ass_stoy_556_sm_base,wpn_fps_ass_stoy_556_sm_knob", "-3.1,-2,-8.24")
	self:cafcw_add_custom_ammo("wpn_fps_ass_stoy_556", "_556x45mm")
end

if self.wpn_fps_smg_stoy_919 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_stoy_919", "wpn_fps_ass_flint", nil, "0,7,-5.15")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_stoy_919", "wpn_fps_ass_flint", nil, "0,5,-5.15")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_stoy_919", "wpn_fps_ass_flint", nil, "0,2,-2.5")
--	self:cafcw_add_custom_sights_ext("RDS45", "wpn_fps_smg_stoy_919", "wpn_fps_ass_flint", "wpn_fps_ass_stoy_556_sm_base,wpn_fps_ass_stoy_556_sm_knob", "-3.1,-2,-8.24")
	self:cafcw_add_custom_ammo("wpn_fps_smg_stoy_919", "_9x19mm")
end

--PSA PACK

if self.wpn_fps_ass_adar then
		self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_adar", "wpn_fps_snp_tti")
		self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_adar", "wpn_fps_snp_tti")
		self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_adar", "wpn_fps_snp_tti")
		self:cafcw_add_custom_ammo("wpn_fps_ass_adar", "_556x45mm")
end
--HK PACK

if self.wpn_fps_smg_kurz_919 then
		self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_kurz_919", "wpn_fps_smg_schakal", "wpn_fps_smg_slap_919_sm_claw")
		self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_kurz_919", "wpn_fps_smg_schakal", "wpn_fps_smg_slap_919_sm_claw")
		self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_kurz_919", "wpn_fps_smg_schakal", "wpn_fps_smg_slap_919_sm_claw")
		self:cafcw_add_custom_ammo("wpn_fps_smg_kurz_919", "_9x19mm")
end
if self.wpn_fps_smg_slap_919 then
		self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_slap_919", "wpn_fps_smg_mp5", "wpn_fps_smg_slap_919_sm_claw")
		self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_slap_919", "wpn_fps_smg_mp5", "wpn_fps_smg_slap_919_sm_claw")
		self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_slap_919", "wpn_fps_smg_mp5", "wpn_fps_smg_slap_919_sm_claw")
		self:cafcw_add_custom_ammo("wpn_fps_smg_slap_919", "_9x19mm")
		
		self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_slap_40", "wpn_fps_smg_mp5", "wpn_fps_smg_slap_919_sm_claw")
		self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_slap_40", "wpn_fps_smg_mp5", "wpn_fps_smg_slap_919_sm_claw")
		self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_slap_40", "wpn_fps_smg_mp5", "wpn_fps_smg_slap_919_sm_claw")
		
		self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_slap_10", "wpn_fps_smg_mp5", "wpn_fps_smg_slap_919_sm_claw")
		self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_slap_10", "wpn_fps_smg_mp5", "wpn_fps_smg_slap_919_sm_claw")
		self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_slap_10", "wpn_fps_smg_mp5", "wpn_fps_smg_slap_919_sm_claw")
end

---AK PACK
 
local akmodules = {
    "wpn_fps_ass_heffy_762",
    "wpn_fps_ass_heffy_545",
    "wpn_fps_ass_heffy_556",
    "wpn_fps_ass_heffy_939",
    "wpn_fps_ass_x_heffy_939",
    "wpn_fps_sho_heffy_12g",
    "wpn_fps_ass_heffy_gold",
    "wpn_fps_ass_ak_stamp_762",
    "wpn_fps_ass_ak_stamp_545",
    "wpn_fps_ass_ak_stamp_556"
}

local akpack_scopemounts = {
	"wpn_fps_upg_o_ak47_scopemount",
	"wpn_fps_upg_o_ak74_scopemount",
	"wpn_fps_upg_o_ak101_scopemount",
	"wpn_fps_upg_o_ak9_scopemount",
	"wpn_fps_upg_o_ak9_scopemount",
	"wpn_fps_upg_o_saiga12_scopemount",
	"wpn_fps_upg_o_gold_scopemount",
	"wpn_fps_ass_ak_stamp_762_om_tula",
	"wpn_fps_ass_ak_stamp_545_om_tula",
	"wpn_fps_ass_ak_stamp_556_om_tula"
}
local akpack_ammo = {
	"_762x39mm",
	"_545x39mm",
	"_556x45mm",
	"_9x39mm",
	"_9x39mm",
	"_12ga_auto",
	"_762x39mm",
	"_762x39mm",
	"_545x39mm",
	"_556x45mm"
}

 
local all_cafcw_sight = {
	attach_tables.Specter,
	attach_tables.Custom,
	attach_tables.ACOG	
}
local akpack_counter = 1
for i, wpn_id in pairs(akmodules) do
    if self[wpn_id] then
		self:cafcw_add_attachment_type("Barrel_Extensions", wpn_id)
		self:cafcw_add_attachment_type("Gadgets", wpn_id)
		self:cafcw_add_attachment_type("Suppressors", wpn_id)
	
		self:cafcw_add_custom_sights("Specter", wpn_id, "wpn_fps_ass_flint", akpack_scopemounts[akpack_counter])
		self:cafcw_add_custom_sights("ACOG", wpn_id, "wpn_fps_ass_flint", akpack_scopemounts[akpack_counter])
		self:cafcw_add_custom_sights("Custom", wpn_id, "wpn_fps_ass_flint", akpack_scopemounts[akpack_counter])
		
		self:cafcw_add_custom_ammo(wpn_id, akpack_ammo[akpack_counter])
		
		
    end
	akpack_counter = akpack_counter + 1 
end
for i, o_table in pairs(all_cafcw_sight) do
	for _, o_id in pairs(o_table) do
		if self.parts[o_id] then
			if self.parts.wpn_fps_ass_heffy_all_sm_cover then
				self.parts.wpn_fps_ass_heffy_all_sm_cover.override[o_id] = {a_obj = "a_o_cover"}
			end
			if self.wpn_fps_ass_heffy_762 then
				self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_lr_akmsu", "wpn_fps_upg_o_visionking" )
				self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_lr_akmsu", "wpn_fps_upg_o_st10" )
				self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_lr_akmsu", "wpn_fps_upg_o_gitsch" )
				self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_lr_m92", "wpn_fps_upg_o_visionking" )
				self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_lr_m92", "wpn_fps_upg_o_st10" )
				self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_lr_m92", "wpn_fps_upg_o_gitsch" )
				self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_lr_akmsu", "wpn_fps_shield_lr" )
				self:akpack_setup_forbid( "wpn_fps_ass_heffy_762_lr_m92", "wpn_fps_shield_lr" )
			end
			if self.wpn_fps_ass_heffy_545 then
				self:akpack_setup_forbid( "wpn_fps_ass_heffy_545_lr_aks74u", "wpn_fps_upg_o_visionking" )
				self:akpack_setup_forbid( "wpn_fps_ass_heffy_545_lr_aks74u", "wpn_fps_upg_o_st10" )
				self:akpack_setup_forbid( "wpn_fps_ass_heffy_545_lr_aks74u", "wpn_fps_upg_o_gitsch" )
				self:akpack_setup_forbid( "wpn_fps_ass_heffy_545_lr_aks74u", "wpn_fps_shield_lr" )
			end
		end
	end
end
if self.parts.wpn_fps_ass_heffy_all_lfg_warrior then
	for i, fl_id in pairs(attach_tables.Gadgets) do
		self.parts.wpn_fps_ass_heffy_all_lfg_warrior.override[fl_id] = {a_obj = "a_fl_war"}
		self.parts.wpn_fps_ass_heffy_all_lfg_honor.override[fl_id]	 = {a_obj = "a_fl_honor"}
		self.parts.wpn_fps_ass_heffy_all_lfg_zenit.override[fl_id]	 = {a_obj = "a_fl_zenit"}
	end
end
end)