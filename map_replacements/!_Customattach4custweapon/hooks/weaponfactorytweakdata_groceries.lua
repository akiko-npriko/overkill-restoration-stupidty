Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "CAFCWMod_Groceries_Init", function(self)
--Primary
-- L1A1
if self.wpn_fps_ass_l1a1 then
	self:cafcw_add_custom_ammo("wpn_fps_ass_l1a1", "_762x51mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_l1a1", "wpn_fps_ass_fal", "wpn_fps_ass_l1a1_rail")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_l1a1", "wpn_fps_ass_fal", "wpn_fps_ass_l1a1_rail")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_l1a1", "wpn_fps_ass_fal", "wpn_fps_ass_l1a1_rail")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_l1a1", "wpn_fps_ass_fal", "wpn_fps_ass_l1a1_rail", "-2.525,4,-13.495")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_l1a1")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_l1a1")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_l1a1")
end
-- SG 552 
if self.wpn_fps_ass_sg552 then
	self:cafcw_add_custom_ammo("wpn_fps_ass_sg552", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_sg552", "wpn_fps_ass_s552")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_sg552", "wpn_fps_ass_s552") 
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_sg552", "wpn_fps_ass_s552")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_sg552", "wpn_fps_ass_s552")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_sg552")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_sg552")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_sg552")
end
-- LK-05 Carbine 
if self.wpn_fps_ass_lkrifle then
	self:cafcw_add_custom_ammo("wpn_fps_ass_lkrifle", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_lkrifle", "wpn_fps_smg_hajk")  
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_lkrifle", "wpn_fps_smg_hajk")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_lkrifle", "wpn_fps_smg_hajk")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_lkrifle", "wpn_fps_smg_hajk")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_lkrifle")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_lkrifle")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_lkrifle")
end
-- M1 Carbine
if self.wpn_fps_ass_m1c then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_m1c", "new_m14", "wpn_fps_upg_o_m1c_scopemount", "-0.03,0,-5.21") -- to fix this just add "a_o as a replacement for a_o_sm and remove that unneded a_obj override
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_m1c", "new_m14", "wpn_fps_upg_o_m1c_scopemount", "-0.03,0,-5.21")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_m1c", "new_m14", "wpn_fps_upg_o_m1c_scopemount", "0.01,0,-1.34")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_m1c")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_m1c")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_m1c")
end
-- BULLDOG
if self.wpn_fps_ass_bulldoge then
	self:cafcw_add_custom_ammo("wpn_fps_ass_bulldoge", "_762x51mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_bulldoge", "wpn_fps_ass_l85a2", nil, "0,4,0.75")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_bulldoge", "wpn_fps_ass_l85a2", nil, "0,4,0.75")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_bulldoge", "wpn_fps_ass_l85a2", nil, "0,2,-1.1")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_bulldoge")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_bulldoge")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_bulldoge")
end
-- DDM4
if self.wpn_fps_ass_gcar then
	self:cafcw_add_custom_ammo("wpn_fps_ass_gcar", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_gcar", "wpn_fps_ass_tecci", nil, "-0.52,29,1.1")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_gcar", "wpn_fps_ass_tecci", nil, "-0.52,29,1.1")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_gcar", "wpn_fps_ass_tecci", nil, "-0.52,29,1.22")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_gcar", "wpn_fps_ass_tecci", nil, "-3.9,22,-10.3")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_gcar")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_gcar")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_gcar")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_gcar")
end
-- 9A-91 
if self.wpn_fps_ass_vsk94 then
	self:cafcw_add_custom_ammo("wpn_fps_ass_vsk94", "_9x39mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_vsk94", "wpn_fps_ass_ak5", "wpn_fps_ass_vsk94_mount", "0,4,-4.1")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_vsk94", "wpn_fps_ass_ak5", "wpn_fps_ass_vsk94_mount", "0,4,-4.1")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_vsk94", "wpn_fps_ass_ak5", "wpn_fps_ass_vsk94_mount", "0,4,-0.6")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_vsk94", "wpn_fps_ass_tecci", "-3.9,22,-10.3")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_vsk94")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_vsk94")
end
-- 9A-91 old
if self.wpn_fps_ass_stealthy then
	self:cafcw_add_custom_ammo("wpn_fps_ass_stealthy", "_9x39mm")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_stealthy")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_stealthy")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_stealthy")
end
-- AN-92
if self.wpn_fps_ass_tilt then
	self:cafcw_add_custom_ammo("wpn_fps_ass_tilt", "_545x39mm")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_tilt")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_tilt")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_tilt")
end
-- ACR
if self.wpn_fps_ass_acw then
	self:cafcw_add_custom_ammo("wpn_fps_ass_acw", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_acw", "wpn_fps_ass_ak5", nil, "0,1,-3.3")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_acw", "wpn_fps_ass_ak5", nil, "0,1,-3.3")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_acw", "wpn_fps_ass_ak5", nil, "0,1,0.2")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_acw", "wpn_fps_ass_ak5")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_acw")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_acw")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_acw")
end
-- AMR-12G
if self.wpn_fps_shot_amr12 then
	self:cafcw_add_custom_ammo("wpn_fps_shot_amr12", "_12ga_auto")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_shot_amr12", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_shot_amr12", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_shot_amr12", "wpn_fps_ass_m16")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_shot_amr12")
	self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_amr12")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_amr12")
	self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_shot_amr12")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_shot_amr12")
end
-- SG-416
if self.wpn_fps_ass_sg416 then
	self:cafcw_add_custom_ammo("wpn_fps_ass_sg416", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_sg416", "wpn_fps_ass_amcar", nil, "0,0,-0.8")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_sg416", "wpn_fps_ass_amcar", nil, "0,0,-0.8")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_sg416", "wpn_fps_ass_amcar", nil, "0,0,-0.8")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_sg416")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_sg416")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_sg416")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_sg416")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_ass_sg416")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_sg416")
end
--Reinbeck
if self.wpn_fps_shot_beck then
	self:cafcw_add_custom_ammo("wpn_fps_shot_beck", "_12ga_auto")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_shot_beck", "wpn_fps_shot_r870")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_shot_beck", "wpn_fps_shot_r870")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_shot_beck", "wpn_fps_shot_r870")
	self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_beck")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_beck")
	self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_shot_beck")
end
-- Spiker 7.62
if self.wpn_fps_ass_spike then
	self:cafcw_add_custom_ammo("wpn_fps_ass_spike", "_762x39mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_spike", "wpn_fps_sho_basset")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_spike", "wpn_fps_sho_basset")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_spike", "wpn_fps_sho_basset")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_spike")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_spike")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_spike")
end

--Secondary

-- Nova Shotgun 
if self.wpn_fps_shot_novas then
	self:cafcw_add_custom_ammo("wpn_fps_shot_novas", "_12ga")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_shot_novas", "wpn_fps_shot_m37", "wpn_fps_shot_novas_o_adapter", "0,4,0.75")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_shot_novas", "wpn_fps_shot_m37", "wpn_fps_shot_novas_o_adapter", "0,4,0.75")
--	self:cafcw_add_custom_sights("Custom", "wpn_fps_shot_novas", "wpn_fps_shot_m37", "wpn_fps_shot_novas_o_adapter", "0,14,4.80")
--	self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_novas")
--	self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_shot_novas")	
end
-- Magpul PDR
if self.wpn_fps_smg_pdr then
	self:cafcw_add_custom_ammo("wpn_fps_smg_pdr", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_pdr", "wpn_fps_ass_aug")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_pdr", "wpn_fps_ass_aug")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_pdr", "wpn_fps_ass_aug")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_smg_pdr", "wpn_fps_ass_aug")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_pdr")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_pdr")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_pdr")
end
-- Dragon 5.45
if self.wpn_fps_pis_smolak then
	self:cafcw_add_custom_ammo("wpn_fps_pis_smolak", "_545x39mm")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_pis_smolak")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_pis_smolak")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_pis_smolak")
end
if self.wpn_fps_pis_x_smolak then
	self:cafcw_add_custom_ammo("wpn_fps_pis_x_smolak", "_545x39mm")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_pis_x_smolak")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_pis_x_smolak")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_pis_x_smolak")
end
-- Scorpion Evo
if self.wpn_fps_smg_evo then
	self:cafcw_add_custom_ammo("wpn_fps_smg_evo", "_9x19mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_evo", "wpn_fps_smg_schakal", nil, "0,0,-2.6")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_evo", "wpn_fps_smg_schakal", nil, "0,0,-2.6")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_evo", "wpn_fps_smg_schakal", nil, "0,0,0.2")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_evo")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_evo")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_evo")
end
-- AK5S
if self.wpn_fps_smg_ak5s then
	self:cafcw_add_custom_ammo("wpn_fps_smg_ak5s", "_9x19mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_ak5s", "wpn_fps_ass_ak5")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_ak5s", "wpn_fps_ass_ak5")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_ak5s", "wpn_fps_ass_ak5")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_smg_ak5s", "wpn_fps_ass_ak5")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_smg_ak5s")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_ak5s")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_ak5s")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_ak5s")
end
-- ACAR 9
if self.wpn_fps_smg_car9 then
	self:cafcw_add_custom_ammo("wpn_fps_smg_car9", "_9x19mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_car9", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_car9", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_car9", "wpn_fps_ass_m4")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_car9")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_smg_car9")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_smg_car9")
end
-- Akimbo ACAR 9
if self.wpn_fps_smg_car9 then
	self:cafcw_add_custom_ammo("wpn_fps_smg_x_car9", "_9x19mm")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_x_car9")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_smg_x_car9")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_smg_x_car9")
end
-- CZ Scorpion Evo A1
if self.wpn_fps_smg_czevo then
	self:cafcw_add_custom_ammo("wpn_fps_smg_czevo", "_9x19mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_czevo", "wpn_fps_smg_shepheard", nil, "-0.01,0,-1.93")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_czevo", "wpn_fps_smg_shepheard", nil, "-0.01,0,-1.93")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_czevo", "wpn_fps_smg_shepheard", nil, "-0.01,0,-1.6")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_smg_czevo", "wpn_fps_smg_shepheard")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_czevo")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_czevo")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_czevo")
end
if self.wpn_fps_smg_x_czevo then
	self:cafcw_add_custom_ammo("wpn_fps_smg_x_czevo", "_9x19mm")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_x_czevo")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_x_czevo")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_x_czevo")
end
-- MK18 Specialist
if self.wpn_fps_ass_mk18s then
	self:cafcw_add_custom_ammo("wpn_fps_ass_mk18s", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_mk18s", "wpn_fps_smg_shepheard", nil, "-0.01,0,-1.3")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_mk18s", "wpn_fps_smg_shepheard", nil, "-0.01,0,-1.3")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_mk18s", "wpn_fps_smg_shepheard", nil, "-0.01,0,-1.63")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_mk18s", "wpn_fps_smg_shepheard")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_mk18s")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_mk18s")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_mk18s")
end
-- AK 5.56
if self.wpn_fps_ass_ak556 then
	self:cafcw_add_custom_ammo("wpn_fps_ass_ak556", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_ak556", "wpn_fps_ass_ak5", nil, "0,2,-2.65")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_ak556", "wpn_fps_ass_ak5", nil, "0,2,-2.65")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_ak556", "wpn_fps_ass_ak5", nil, "0,2,0.85")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_ak556", "wpn_fps_ass_ak5")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_ak556")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_ak556")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_ak556")
end
-- PP-91 Kedr
if self.wpn_fps_smg_kedr then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_kedr", "wpn_fps_smg_tec9", "wpn_fps_smg_kedr_o_adapter", "-0.17,-2,-3")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_kedr", "wpn_fps_smg_tec9", "wpn_fps_smg_kedr_o_adapter", "-0.17,-2,-3")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_kedr", "wpn_fps_smg_tec9", "wpn_fps_smg_kedr_o_adapter", "-0.17,6,2")
	self:cafcw_add_custom_sights("RDS45", "wpn_fps_smg_kedr", "wpn_fps_smg_tec9")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_kedr")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_kedr", "wpn_fps_smg_kedr_addon")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_kedr")
end
--[[ TT33
if self.wpn_fps_pis_gtt33 then
end]]
-- Blizzard 443
if self.wpn_fps_pis_grach then
	self:cafcw_add_custom_ammo("wpn_fps_pis_grach", "_9x19mm")
	self:cafcw_add_custom_ammo("wpn_fps_pis_grach", "_9x19mm_p")
end
-- MP-443 Grach 
if self.wpn_fps_pis_mp443 then
	self:cafcw_add_custom_ammo("wpn_fps_pis_mp443", "_9x19mm")
	self:cafcw_add_custom_ammo("wpn_fps_pis_mp443", "_9x19mm_p")
end
-- CZ-75 Shadow
if self.wpn_fps_pis_cz then
	self:cafcw_add_custom_ammo("wpn_fps_pis_cz", "_9x19mm")
end
if self.wpn_fps_pis_x_cz then
	self:cafcw_add_custom_ammo("wpn_fps_pis_x_cz", "_9x19mm")
end
--[[ SR1M
if self.wpn_fps_pis_sr1 then
end	
if self.wpn_fps_pis_x_sr1 then
end]]
--[[ QSZ-92
if self.wpn_fps_pis_qsz92 then
end
if self.wpn_fps_pis_x_qsz92 then
end]]
-- S&W 659 
if self.wpn_fps_pis_sw659 then
	-- self:cafcw_add_custom_sights("Custom_Pistol", "wpn_fps_pis_sw659", "wpn_fps_pis_usp")
	-- self:cafcw_wpn_a_obj_pattern_override("Custom_Pistol", "wpn_fps_pis_sw659", nil, "slide")

	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_sw659")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_sw659")
	self:cafcw_add_custom_ammo("wpn_fps_pis_sw659", "_9x19mm")

	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_x_sw659")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_x_sw659")
	self:cafcw_add_custom_ammo("wpn_fps_pis_x_sw659", "_9x19mm")
end
--[[ M2019 Blaster 
if self.wpn_fps_pis_lapd then
end]]
--[[ AF2011
if self.wpn_fps_pis_af2011 then
end]]
-- Browning HP
if self.wpn_fps_pis_hpb then
	self:cafcw_add_custom_ammo("wpn_fps_pis_hpb", "_9x19mm")
end
-- ACR Remington
if self.wpn_fps_ass_acwr2 then
    self:cafcw_add_custom_ammo("wpn_fps_ass_acwr2", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_acwr2", "wpn_fps_ass_m4", nil, "0,2,-1.3")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_acwr2", "wpn_fps_ass_m4", nil, "0,2,-1.3")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_acwr2", "wpn_fps_ass_m4", nil, "0,2,-0.72")
    self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_acwr2")
    self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_acwr2")
    self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_acwr2")
end
-- ACR Remington M203
if self.wpn_fps_ass_acwr then
    self:cafcw_add_custom_ammo("wpn_fps_ass_acwr", "_556x45mm")
    self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_acwr", "wpn_fps_ass_contraband")
    self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_acwr", "wpn_fps_ass_contraband")
    self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_acwr", "wpn_fps_ass_contraband")
    self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_acwr", "wpn_fps_ass_contraband")
    self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_acwr")
    self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_acwr")
    self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_acwr")
end
end)