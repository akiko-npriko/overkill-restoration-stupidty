--[[function WeaponFactoryTweakData:howa_t64_part_ovrd(sight_base, stance_wpn_id, part_ovrd_id, a_obj_new, custom_stance)

	for i, sight_id in pairs(attach_tables[sight_base]) do

		if self.parts[sight_id] then	
			if sight_base == "ACOG" then
				sight_base = "wpn_fps_upg_o_acog"
			elseif sight_base == "RDS45" then
				sight_base = "wpn_fps_upg_o_45rds"
			elseif sight_base == "Specter" then
				sight_base = "wpn_fps_upg_o_specter"
			end
			
			if string.match(sight_base, "Custom") then
				if self.parts[sight_id].stance_mod[stance_wpn_id] then
					self.parts[part_ovrd_id].override = self.parts[part_ovrd_id].override or {}
					self.parts[part_ovrd_id].override[sight_id] = self.parts[part_ovrd_id].override[sight_id] or {}
					self.parts[part_ovrd_id].override[sight_id].stance_mod = self.parts[part_ovrd_id].override[sight_id].stance_mod or {}
					self.parts[part_ovrd_id].override[sight_id].stance_mod[stance_wpn_id] = deep_clone( self.parts[sight_id].stance_mod[stance_wpn_id] )
					if custom_stance then
						self.parts[part_ovrd_id].override[sight_id].stance_mod[stance_wpn_id].translation = ( self.parts[sight_id].stance_mod[stance_wpn_id].translation + custom_stance:ToVector3() )
					end
				else
					log("[ERROR] CAFCW: Missing required stance_mod: " .. part_ovrd_id, sight_id, stance_wpn_id)
				end
			else
				if self.parts[sight_base].stance_mod[stance_wpn_id] then
					self.parts[part_ovrd_id].override = self.parts[part_ovrd_id].override or {}
					self.parts[part_ovrd_id].override[sight_id] = self.parts[part_ovrd_id].override[sight_id] or {}
					self.parts[part_ovrd_id].override[sight_id].stance_mod = self.parts[part_ovrd_id].override[sight_id].stance_mod or {}
					self.parts[part_ovrd_id].override[sight_id].stance_mod[stance_wpn_id] = deep_clone( self.parts[sight_base].stance_mod[stance_wpn_id] )
					if custom_stance then
						self.parts[part_ovrd_id].override[sight_id].stance_mod[stance_wpn_id].translation = custom_stance:ToVector3()
					end
				else
					log("[ERROR] CAFCW: Missing required stance_mod: " .. part_ovrd_id, sight_id, stance_wpn_id, sight_base)
				end
			end
			
			if a_obj_new then
				self.parts[part_ovrd_id].override = self.parts[part_ovrd_id].override or {}
				self.parts[part_ovrd_id].override[sight_id] = self.parts[part_ovrd_id].override[sight_id] or {}
				self.parts[part_ovrd_id].override[sight_id].a_obj = a_obj_new
			else
				log("[ERROR] CAFCW: Missing required a_obj data: " .. part_ovrd_id, sight_id, a_obj_new)
			end
			
		end
		
	end

end]]


Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "CAFCWMod_Alcat_Init", function(self)

--look at https://github.com/Pawcio1337/cafcw/commit/1752307c2a8e8b24e517736be233bd961d31a543 for list of removed code

--[[==]]



--Custom Weapon

--HOWA
if self.wpn_fps_ass_howa then
--optic sight
self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_howa", "wpn_fps_ass_howa", "wpn_fps_ass_howa_body_rail")
self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_howa", "wpn_fps_ass_howa", "wpn_fps_ass_howa_body_rail")
self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_howa", "wpn_fps_ass_howa")
--[[--self:cafcw_add_custom_sights_ext("Custom", "wpn_fps_ass_howa", "wpn_fps_ass_ak5", "0,0,0.75", "wpn_fps_ass_howa_body_rail")--originally 0,0,0.75

t64 part kit changes a_o point
self:howa_t64_part_ovrd("Specter", "wpn_fps_ass_howa", "wpn_fps_ass_howa_t64_body", "a_o_t64", "0,-2,-3.875")
self:howa_t64_part_ovrd("ACOG", "wpn_fps_ass_howa", "wpn_fps_ass_howa_t64_body", "a_o_t64", "0,-4,-3.875")
self:howa_t64_part_ovrd("RDS45", "wpn_fps_ass_howa", "wpn_fps_ass_howa_t64_body", "a_o_t64", "-0.375,0,-13.5")
self:howa_t64_part_ovrd("Custom", "wpn_fps_ass_howa", "wpn_fps_ass_howa_t64_body", "a_o_t64", "0,0,-1.125")--originally 0,0,-1
]]

--adds in pso-1 scope support later

self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_howa")
self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_ass_howa_t89_body", "a_fl_t89")
self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_ass_howa_t64_body", "a_fl_t64")

self:cafcw_add_custom_ammo("wpn_fps_ass_howa", "_556x45mm")
self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_howa")
self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_howa")
end


--Browning LMG
if self.wpn_fps_ass_bar then
self:cafcw_add_custom_sights("Custom_WW2_Allied", "wpn_fps_ass_bar", "wpn_fps_ass_fal", "wpn_fps_ass_bar_ironsight", "0,4,0.9") --original specter 0, 4, -3.5 || PVM xyz || wpn_fps_ass_bar_ironsight 0,0,-0.5

self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_bar")
self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_bar")
self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions", "wpn_fps_ass_bar", "a_ns_bar")
end


--PKP Pecheneg LMG
if self.wpn_fps_lmg_pecheneg then
self:cafcw_add_attachment_type("Gadgets", "wpn_fps_lmg_pecheneg")
self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_lmg_pecheneg")
self:cafcw_add_attachment_type("Suppressors", "wpn_fps_lmg_pecheneg")

self:cafcw_add_custom_ammo("wpn_fps_lmg_pecheneg", "_762x54mmr")
end


--Trench Gun
if self.wpn_fps_shot_trench then
self:cafcw_add_custom_sights("Custom_WW2_Allied", "wpn_fps_shot_trench", "wpn_fps_shot_r870", nil, "0,-6,0.3") --original specter 0.01, 0, -3.3 || PVM 0.01 -6 -3

self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_trench")
self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_trench")
self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_shot_trench")

self:cafcw_add_custom_ammo("wpn_fps_shot_trench", "_12ga")
end


--Browning A5
if self.wpn_fps_shot_auto5 then
self:cafcw_add_custom_sights("Custom_WW2_Allied", "wpn_fps_shot_auto5", "wpn_fps_sho_ben", nil, "0,-4,1.8") --original specter 0, 0, -3.2 || PVM "0 -4 -1.4" || wpn_fps_shot_auto5_irons 0,0,1

self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_auto5")
self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_auto5")
self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_shot_auto5")

self:cafcw_add_custom_ammo("wpn_fps_shot_auto5", "_12ga_auto")
end


--Hecate AMP
if self.wpn_fps_snp_hecate then
self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_hecate", "wpn_fps_snp_msr")
self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_hecate", "wpn_fps_snp_msr")
self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_hecate", "wpn_fps_snp_msr")
self:cafcw_add_custom_sights("Custom_Sniper", "wpn_fps_snp_hecate", "wpn_fps_snp_msr")
self:cafcw_add_custom_sights("Shortdot", "wpn_fps_snp_hecate", "wpn_fps_snp_msr")
self:cafcw_add_custom_sights("RDS45", "wpn_fps_snp_hecate", "wpn_fps_snp_msr")

self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_hecate")

self:cafcw_add_custom_ammo("wpn_fps_snp_hecate", "_127x99mm")
end


--MSMC
if self.wpn_fps_smg_msmc then
self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_msmc", "wpn_fps_smg_mp7")
self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_msmc", "wpn_fps_smg_mp7")
self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_msmc", "wpn_fps_smg_mp7")

self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_msmc")
self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_msmc")
self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_msmc")
end


-- KRISS KARD
if self.wpn_fps_pis_kard and self.wpn_fps_pis_x_kard then
self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_kard")
self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_x_kard")
self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_kard")
self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_x_kard")
end


--Negev LMG
if self.wpn_fps_lmg_negev then
self:cafcw_add_attachment_type("Gadgets", "wpn_fps_lmg_negev")
self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_lmg_negev")
self:cafcw_add_attachment_type("Suppressors", "wpn_fps_lmg_negev")

self:cafcw_add_custom_ammo("wpn_fps_lmg_negev", "_556x45mm")
end


--Mx4 Storm || CAFCW support will be fixed when the gun is rebuilt
if self.wpn_fps_smg_storm then
self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_storm")
self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_storm")
self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_storm")

self:cafcw_add_custom_ammo("wpn_fps_smg_storm", "_9x19mm")
end


--Mini14 || Discontinued, CAFCW code will no longer be updated
if self.wpn_fps_ass_mini14 then
self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_mini14")
self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_mini14", "wpn_fps_ass_m14")
self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_mini14")
end



--Korean Arms Pack Weapon
--[[=================================================================================================================]]
--Korean Arms - K5
if self.wpn_fps_pis_k5 then
self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_k5")
self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_k5")

self:cafcw_add_custom_ammo("wpn_fps_pis_k5", "_9x19mm")
end

--Korean Arms - K2
if self.wpn_fps_ass_k2 then
self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_k2", "wpn_fps_ass_ak5")
self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_k2", "wpn_fps_ass_ak5")
self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_k2", "wpn_fps_ass_ak5")
self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_k2", "wpn_fps_ass_ak5")

self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_k2")
self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_k2")
self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_k2")

self:cafcw_add_custom_ammo("wpn_fps_ass_k2", "_556x45mm")
end

--Korean Arms - K3
if self.wpn_fps_lmg_k3 then
self:cafcw_add_attachment_type("Gadgets", "wpn_fps_lmg_k3")
self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_lmg_k3")
self:cafcw_add_attachment_type("Suppressors", "wpn_fps_lmg_k3")

self:cafcw_add_custom_ammo("wpn_fps_lmg_k3", "_556x45mm")
end

--Korean Arms - K1A7
if self.wpn_fps_smg_k1a7 then
self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_k1a7", "wpn_fps_ass_m4")
self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_k1a7", "wpn_fps_ass_m4")
self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_k1a7", "wpn_fps_ass_m4")
self:cafcw_add_custom_sights("RDS45", "wpn_fps_smg_k1a7", "wpn_fps_ass_m4")

self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_k1a7")
self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_k1a7")
self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_k1a7")

self:cafcw_add_custom_ammo("wpn_fps_smg_k1a7", "_556x45mm")
self:cafcw_add_custom_ammo("wpn_fps_smg_k1a7", "_9x19mm")
self:cafcw_add_custom_ammo("wpn_fps_smg_k1a7_m_9mm", "_556x45mm", "forbids_add")
self:cafcw_add_custom_ammo("wpn_fps_smg_k1a7_mag", "_9x19mm", "forbids_add")
end
--[[=================================================================================================================]]



--PLA Arms Weaponry
--[[=================================================================================================================]]
--Hawk12 Shottie || decided to drop sight support
if self.wpn_fps_shot_hawk12 then
self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_hawk12")
self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_hawk12")
self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_shot_hawk12")
self:cafcw_add_custom_ammo("wpn_fps_shot_hawk12", "_12ga_mag")
end

--JS2 SMG
if self.wpn_fps_smg_js2 then
self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_js2")
self:cafcw_add_custom_ammo("wpn_fps_smg_js2", "_9x19mm")
self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_js2", "wpn_fps_ass_aug")
self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_js2", "wpn_fps_ass_aug")
self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_js2", "wpn_fps_ass_aug")
self:cafcw_add_custom_sights("RDS45", "wpn_fps_smg_js2", "wpn_fps_ass_aug")
self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_js2")
self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_js2")
end

--QBU88
if self.wpn_fps_snp_qbu88 then
self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_qbu88", "wpn_fps_snp_wa2000")
self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_qbu88", "wpn_fps_snp_wa2000")
self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_qbu88", "wpn_fps_snp_wa2000")
self:cafcw_add_custom_sights("Custom_Sniper", "wpn_fps_snp_qbu88", "wpn_fps_snp_wa2000")
self:cafcw_add_custom_sights("Shortdot", "wpn_fps_snp_qbu88", "wpn_fps_snp_wa2000")
self:cafcw_add_custom_sights("RDS45", "wpn_fps_snp_qbu88", "wpn_fps_snp_wa2000")

self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_qbu88")
end

--chang6 SMG
if self.wpn_fps_smg_chang6 then
--self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_chang6") -- adds in gadget support when fixing the mod later
self:cafcw_add_custom_ammo("wpn_fps_smg_chang6", "_9x19mm")
self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_chang6")
self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_chang6")
end
--[[=================================================================================================================]]



--Minebee9
if self.wpn_fps_smg_minebea and self.wpn_fps_smg_x_minebea then
--no acog-type sight or large sight support
self:cafcw_add_attachment_type("Specter", "wpn_fps_smg_minebea", "wpn_fps_smg_minebea_o_adapter")
--adds in other sight type at later udpate (SpecterSmall, CustomSmall, Custom)

self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_minebea")
self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_x_minebea")
self:cafcw_add_custom_ammo("wpn_fps_smg_minebea", "_9x19mm")
self:cafcw_add_custom_ammo("wpn_fps_smg_x_minebea", "_9x19mm")
self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_minebea")
self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_minebea")
self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_x_minebea")
self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_x_minebea")
end


--Volmer LMG
if self.wpn_fps_lmg_volmer then
self:cafcw_add_attachment_type("Gadgets", "wpn_fps_lmg_volmer")
self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_lmg_volmer")
self:cafcw_add_attachment_type("Suppressors", "wpn_fps_lmg_volmer")

self:cafcw_add_custom_ammo("wpn_fps_lmg_volmer", "_762x51mm")
end


--Gepard Lynx
if self.wpn_fps_snp_lynx then
self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_lynx", "wpn_fps_snp_m95")
self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_lynx", "wpn_fps_snp_m95")
self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_lynx", "wpn_fps_snp_m95")
self:cafcw_add_custom_sights("Custom_Sniper", "wpn_fps_snp_lynx", "wpn_fps_snp_m95")
self:cafcw_add_custom_sights("Shortdot", "wpn_fps_snp_lynx", "wpn_fps_snp_m95")
self:cafcw_add_custom_sights("RDS45", "wpn_fps_snp_lynx", "wpn_fps_snp_m95")

self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_lynx")
end


-- SPAS15
if self.wpn_fps_shot_spas15 then
self:cafcw_add_custom_sights("Specter", "wpn_fps_shot_spas15", "wpn_fps_ass_g36")
self:cafcw_add_custom_sights("ACOG", "wpn_fps_shot_spas15", "wpn_fps_ass_g36")
self:cafcw_add_custom_sights("Custom", "wpn_fps_shot_spas15", "wpn_fps_ass_g36")
self:cafcw_add_custom_sights("RDS45", "wpn_fps_shot_spas15", "wpn_fps_ass_g36")

self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_spas15")
self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_spas15")
self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_shot_spas15")
end


--MAG7
if self.wpn_fps_shot_techno and self.wpn_fps_shot_x_techno then
self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_techno")
self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_x_techno")
self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_techno")
self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_x_techno")
self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_shot_techno")
self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_shot_x_techno")
self:cafcw_add_custom_ammo("wpn_fps_shot_techno", "_12ga_mag")
self:cafcw_add_custom_ammo("wpn_fps_shot_x_techno", "_12ga_mag")
end


-- 1903 AEX
if self.wpn_fps_snp_spring then
self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_spring", "wpn_fps_snp_model70", "wpn_fps_snp_model70_o_rail")
self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_spring", "wpn_fps_snp_model70", "wpn_fps_snp_model70_o_rail")
self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_spring", "wpn_fps_snp_model70", "wpn_fps_snp_model70_o_rail")
self:cafcw_add_custom_sights("Custom_Sniper", "wpn_fps_snp_spring", "wpn_fps_snp_model70", "wpn_fps_snp_model70_o_rail")
self:cafcw_add_custom_sights("Shortdot", "wpn_fps_snp_spring", "wpn_fps_snp_model70", "wpn_fps_snp_model70_o_rail")
self:cafcw_add_custom_sights("RDS45", "wpn_fps_snp_spring", "wpn_fps_snp_model70")

self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_spring")
end
		

--MG5 LMG
if self.wpn_fps_lmg_mg5 then
self:cafcw_add_attachment_type("Gadgets", "wpn_fps_lmg_mg5")
self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_lmg_mg5")
self:cafcw_add_attachment_type("Suppressors", "wpn_fps_lmg_mg5")

self:cafcw_add_custom_ammo("wpn_fps_lmg_mg5", "_762x51mm")
end


-- CZ75 auto || Discontinued, CAFCW code will no longer be updated
if self.wpn_fps_pis_czauto then
self:cafcw_add_custom_sights("Custom_Pistol", "wpn_fps_pis_czauto", "wpn_fps_pis_beretta") --"0,0,0.25"
self:cafcw_wpn_a_obj_pattern_override("Custom_Pistol", "wpn_fps_pis_czauto", nil, "upper_reciever")

self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_czauto")
self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_czauto")
self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_czauto", nil, "lower_reciever")
self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_czauto", nil, "lower_reciever")

self:cafcw_add_custom_ammo("wpn_fps_pis_czauto", "_9x19mm")
end 
if self.wpn_fps_pis_x_czauto then
self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_x_czauto")
self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_x_czauto")
self:cafcw_wpn_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_pis_x_czauto", nil, "lower_reciever")
self:cafcw_wpn_a_obj_pattern_override("Suppressors_Pistol", "wpn_fps_pis_x_czauto", nil, "lower_reciever")

self:cafcw_add_custom_ammo("wpn_fps_pis_x_czauto", "_9x19mm")
end 


-- PP2000
if self.wpn_fps_mp_peepee then
self:cafcw_add_attachment_type("Gadgets", "wpn_fps_mp_peepee")
self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_mp_peepee")
--add in support for custom supressor at a later udpate
self:cafcw_add_custom_ammo("wpn_fps_mp_peepee", "_9x19mm")
self:cafcw_add_custom_ammo("wpn_fps_mp_peepee", "_9x19mm_p")
end


-- AN-94
if self.wpn_fps_ass_akrocket then
self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_akrocket", "wpn_fps_ass_akrocket", "wpn_fps_ass_akrocket_o_rail")
self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_akrocket", "wpn_fps_ass_akrocket", "wpn_fps_ass_akrocket_o_rail")
self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_akrocket", "wpn_fps_smg_akmsu", "wpn_fps_ass_akrocket_o_rail", "0,5,1.47")

self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_akrocket")

self:cafcw_add_custom_ammo("wpn_fps_ass_akrocket", "_545x39mm")
end


--Mosin Custom
if self.wpn_fps_snp_classic then
self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_classic", "wpn_fps_snp_msr")
self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_classic", "wpn_fps_snp_msr")
self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_classic", "wpn_fps_snp_msr")
self:cafcw_add_custom_sights("Custom_Sniper", "wpn_fps_snp_classic", "wpn_fps_snp_msr")
self:cafcw_add_custom_sights("Shortdot", "wpn_fps_snp_classic", "wpn_fps_snp_msr")
self:cafcw_add_custom_sights("RDS45", "wpn_fps_snp_classic", "wpn_fps_snp_msr")

self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_classic")

self:cafcw_add_custom_ammo("wpn_fps_snp_classic", "_127x99mm")
self:cafcw_add_custom_ammo("wpn_fps_snp_classic", "_762x54mmr")
end


-- SRM 1216
if self.wpn_fps_shot_m1216 then
--self:cafcw_add_custom_sights_ext("Specter", "wpn_fps_shot_m1216", "wpn_fps_smg_coal", nil, "wpn_fps_shot_m1216_irons_front_folded", "wpn_fps_shot_m1216_o_adjust")
--self:cafcw_add_custom_sights_ext("ACOG", "wpn_fps_shot_m1216", "wpn_fps_smg_coal", nil, "wpn_fps_shot_m1216_irons_front_folded", "wpn_fps_shot_m1216_o_adjust")
--self:cafcw_add_custom_sights_ext("Custom", "wpn_fps_shot_m1216", "wpn_fps_smg_coal", nil, "wpn_fps_shot_m1216_irons_front_folded", "wpn_fps_shot_m1216_o_adjust")

self:cafcw_add_attachment_type("Gadgets", "wpn_fps_shot_m1216")
self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_m1216")
self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_shot_m1216")

self:cafcw_add_custom_ammo("wpn_fps_shot_m1216", "_12ga")
end


-- Calico SMG
if self.wpn_fps_smg_calico then
self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_calico", "wpn_fps_smg_p90", "wpn_fps_smg_calico_o_adjust")
self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_calico", "wpn_fps_smg_p90", "wpn_fps_smg_calico_o_adjust")
self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_calico", "wpn_fps_smg_p90", "wpn_fps_smg_calico_o_adjust")

self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_calico")
self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_calico")
self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_calico")
end


-- Fusil Automatico Doble (FAD)
if self.wpn_fps_ass_fusil then
self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_fusil", "wpn_fps_ass_corgi", "wpn_fps_ass_fusil_o_adjust")
self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_fusil", "wpn_fps_ass_corgi", "wpn_fps_ass_fusil_o_adjust")
self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_fusil", "wpn_fps_ass_corgi", "wpn_fps_ass_fusil_o_adjust")
self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_fusil", "wpn_fps_ass_corgi")

self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_fusil")
self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_fusil")
self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_fusil")

self:cafcw_add_custom_ammo("wpn_fps_ass_fusil", "_556x45mm")
end


-- M14E2
if self.wpn_fps_ass_m14e2 then
self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_m14e2", "wpn_fps_ass_m14", "wpn_fps_ass_m14e2_offset_sight_rail")

self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_m14e2")
self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_ass_m14e2_gl_m203", "a_fl_m203")

self:cafcw_add_custom_ammo("wpn_fps_ass_m14e2", "_762x51mm")
self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_m14e2")
self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_m14e2")

--M14E2 tried to replicate what Black Ops 1 M14 optic have, so it doesnt support most optic
end


-- Stinger Launcher
if self.wpn_fps_stinger then
self:cafcw_add_attachment_type("Gadgets", "wpn_fps_stinger", "wpn_fps_addon_ris")
self:cafcw_wpn_a_obj_pattern_override("Gadgets", "wpn_fps_stinger", "a_fl_stinger")
end


--PM-98 Glau
if self.wpn_fps_smg_glau then
self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_glau", "wpn_fps_smg_uzi", "wpn_fps_smg_glau_o_adjust")
self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_glau", "wpn_fps_smg_uzi", "wpn_fps_smg_glau_o_adjust")
self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_glau", "wpn_fps_smg_uzi", "wpn_fps_smg_glau_o_adjust")
--self:cafcw_add_custom_sights("RDS45", "wpn_fps_smg_glau", "wpn_fps_smg_uzi")

self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_glau")
self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_glau")
self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_glau")

self:cafcw_add_custom_ammo("wpn_fps_smg_glau", "_9x19mm")
end


--Inkunzi PAW
if self.wpn_fps_special_inkunzi then
self:cafcw_add_custom_sights("Specter", "wpn_fps_special_inkunzi", "wpn_fps_ass_g3", nil, "0.025,-8,-0.42")
self:cafcw_add_custom_sights("ACOG", "wpn_fps_special_inkunzi", "wpn_fps_ass_g3", nil, "0.025,-5,-0.42")
self:cafcw_add_custom_sights("Custom", "wpn_fps_special_inkunzi", "wpn_fps_ass_g3", nil, "0,0,3")
self:cafcw_add_custom_sights("RDS45", "wpn_fps_special_inkunzi", "wpn_fps_ass_g3", nil, "3.48,-10,-8.46")

self:cafcw_add_attachment_type("Gadgets", "wpn_fps_special_inkunzi")
end


--SMG12
if self.wpn_fps_mp_master then
self:cafcw_add_custom_sights("Specter", "wpn_fps_mp_master", "wpn_fps_smg_mac10", nil, "0,-4.25,-0.75")
self:cafcw_add_custom_sights("ACOG", "wpn_fps_mp_master", "wpn_fps_smg_mac10", nil, "0,-4.25,-0.75")
self:cafcw_add_custom_sights("Custom", "wpn_fps_mp_master", "wpn_fps_smg_mac10", nil, "0,5.75,2.35")

self:cafcw_add_attachment_type("Gadgets", "wpn_fps_mp_master")

self:cafcw_add_custom_ammo("wpn_fps_mp_master", "_9x19mm")
end


--TC Contender || remade CAFCW code when the mod is updated, preferrably with custom animation later on
if self.wpn_fps_special_contender then
-- self:cafcw_add_custom_sights_ext("Specter", "wpn_fps_special_contender", "wpn_fps_special_contender", "0,16,-3.75", "wpn_fps_special_contender_rail_optic")
-- self:cafcw_add_custom_sights_ext("ACOG", "wpn_fps_special_contender", "wpn_fps_special_contender", "0,12,-3.75", "wpn_fps_special_contender_rail_optic")
end


--Sumitomo 62 LMG
if self.wpn_fps_lmg_sumitomo then
self:cafcw_add_attachment_type("Gadgets", "wpn_fps_lmg_sumitomo")

self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_lmg_sumitomo")
self:cafcw_add_attachment_type("Suppressors", "wpn_fps_lmg_sumitomo")
self:cafcw_forbids_attachment_type("Barrel_Extensions", "wpn_fps_lmg_sumitomo_b_long")
self:cafcw_forbids_attachment_type("Suppressors", "wpn_fps_lmg_sumitomo_b_long")

self:cafcw_add_custom_ammo("wpn_fps_lmg_sumitomo", "_762x51mm")
end


--Maxim 9 - The Silent Killer pack
if self.wpn_fps_pis_max9 then
self:cafcw_add_custom_sights("Custom_Pistol", "wpn_fps_pis_max9", "wpn_fps_pis_hs2000", nil, "0,0,0.3")
self:cafcw_wpn_a_obj_pattern_override("Custom_Pistol", "wpn_fps_pis_max9", nil, "lower_reciever")

self:cafcw_category_forbid("wpn_fps_pis_max9", "gadget", "wpn_fps_pis_max9_b_nosup")
end


--UTS-15
if self.wpn_fps_shot_sideload then
self:cafcw_add_custom_sights("Specter", "wpn_fps_shot_sideload", "wpn_fps_sho_ksg", "wpn_fps_shot_sideload_irons_down")
self:cafcw_add_custom_sights("ACOG", "wpn_fps_shot_sideload", "wpn_fps_sho_ksg", "wpn_fps_shot_sideload_irons_down")
self:cafcw_add_custom_sights("Custom", "wpn_fps_shot_sideload", "wpn_fps_sho_ksg", "wpn_fps_shot_sideload_irons_down")

self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_shot_sideload")
self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_shot_sideload")

self:cafcw_add_custom_ammo("wpn_fps_shot_sideload", "_12ga")
end

--KSVK
if self.wpn_fps_snp_carpet then
self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_carpet", "wpn_fps_snp_desertfox")
self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_carpet", "wpn_fps_snp_desertfox")
self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_carpet", "wpn_fps_snp_desertfox")
self:cafcw_add_custom_sights("Custom_Sniper", "wpn_fps_snp_carpet", "wpn_fps_snp_desertfox")
self:cafcw_add_custom_sights("Shortdot", "wpn_fps_snp_carpet", "wpn_fps_snp_desertfox")
self:cafcw_add_custom_sights("RDS45", "wpn_fps_snp_carpet", "wpn_fps_snp_desertfox")
self:cafcw_add_custom_sights("MOD_IronSightsPack_SniperStats_Custom", "wpn_fps_snp_carpet", "wpn_fps_snp_desertfox")
self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_carpet")

self:cafcw_add_custom_ammo("wpn_fps_snp_carpet", "_127x99mm")
end

-- AAI LSAT
if self.wpn_fps_lmg_lsat then
self:cafcw_add_custom_sights("Specter", "wpn_fps_lmg_lsat", "wpn_fps_ass_amcar")
self:cafcw_add_custom_sights("ACOG", "wpn_fps_lmg_lsat", "wpn_fps_ass_amcar")
self:cafcw_add_custom_sights("Custom", "wpn_fps_lmg_lsat", "wpn_fps_ass_amcar")
self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_lmg_lsat")
self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_lmg_lsat")
self:cafcw_add_attachment_type("Gadgets", "wpn_fps_lmg_lsat")
self:cafcw_add_attachment_type("Suppressors", "wpn_fps_lmg_lsat")
end


--[[===============================================================================================================================================================================================================================]]--
--[[===============================================================================================================================================================================================================================]]--
--[[===============================================================================================================================================================================================================================]]--

--look at https://github.com/Pawcio1337/cafcw/commit/1752307c2a8e8b24e517736be233bd961d31a543 for list of removed code


--[[==]]


--Custom Attachment

-- FAMAS Feline

--simplify sight support code on mod update later on

if self.parts.wpn_fps_ass_famas_body_feline then

self:cafcw_part_a_obj_pattern_override("ACOG", "wpn_fps_ass_famas_body_feline", "a_o_feline")
self:cafcw_part_a_obj_pattern_override("Custom", "wpn_fps_ass_famas_body_feline", "a_o_feline")
self:cafcw_part_a_obj_pattern_override("Specter", "wpn_fps_ass_famas_body_feline", "a_o_feline")
self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_ass_famas_body_feline", "a_fl_feline")	

if self.parts.wpn_fps_ass_famas_o_adapter_long then
	self.parts.wpn_fps_ass_famas_body_feline.override.wpn_fps_ass_famas_o_adapter_long = {stance_mod = { wpn_fps_ass_famas = {translation = Vector3(0, 10, 2)} },a_obj = "a_o_feline"}
end
self:cafcw_part_a_obj_pattern_override("MOD_IronSightsPack_Custom", "wpn_fps_ass_famas_body_feline", "a_or_feline")
self:cafcw_part_a_obj_pattern_override("MOD_IronSightsPack_Front", "wpn_fps_ass_famas_body_feline", "a_of_feline")

end

--[[ VHS Future

--simplify sight support code on mod update later on

if self.parts.wpn_fps_ass_vhs_body_future then
end]]

--[[ M240 Various Attch

--use new support code for custom gadget 

if self.parts.wpn_fps_lmg_par_fg_heat then
end]]


--[[ M16 Carry Handle Rail

--use new support code for custom attch point 

if self.parts.wpn_fps_upg_o_carrymount then
end]]


--[[FAL Various

--use new support code for custom attch point for moved barrel extension

if BeardLib.Utils:FindMod("FAL Various Attachment") then
end]]


--[[Beretta Various

--use new support code for custom attch point on sword cutlass body

if self.parts.wpn_fps_pis_beretta_body_sword then
end

--b93r kit is dropped on next mod update

if self.parts.wpn_fps_pis_b93r_vertgrip then
end]]


--[[MAC10 Various

--use new support code for custom gadget on ghetto extension

if self.parts.wpn_fps_smg_mac10_ns_ghetto then
end]]


--[[Galil Various

--not sure whats removed it, probably already moved to the custom attch mod itself

if BeardLib.Utils:FindMod("Galil Various Attachment") then
end]]


--M14 Dokka
if self.parts.wpn_fps_ass_m14_body_goblin then

self:cafcw_part_a_obj_pattern_override("Specter", "wpn_fps_ass_m14_body_goblin", "a_o_dokka")
self:cafcw_part_a_obj_pattern_override("ACOG", "wpn_fps_ass_m14_body_goblin", "a_o_dokka")
self:cafcw_part_a_obj_pattern_override("Custom", "wpn_fps_ass_m14_body_goblin", "a_o_dokka")

end


--Contractor308 Various
if BeardLib.Utils:FindMod("Contractor.308 Various Attachment") then

self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_snp_tti_fg_composite", "a_fl_composite")
self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_snp_tti_fg_rail", "a_fl_rail")

self:cafcw_part_a_obj_pattern_override("Specter", "wpn_fps_snp_tti_fg_rail", "a_o_rail")
self:cafcw_part_a_obj_pattern_override("ACOG", "wpn_fps_snp_tti_fg_rail", "a_o_rail")
self:cafcw_part_a_obj_pattern_override("Custom", "wpn_fps_snp_tti_fg_rail", "a_o_rail")
self:cafcw_part_a_obj_pattern_override("Custom_Sniper", "wpn_fps_snp_tti_fg_rail", "a_o_rail")
self:cafcw_part_a_obj_pattern_override("Shortdot", "wpn_fps_snp_tti_fg_rail", "a_o_rail")
self:cafcw_part_a_obj_pattern_override("RDS45", "wpn_fps_snp_tti_fg_rail", "a_o_rail")

self:cafcw_part_a_obj_pattern_override("MOD_IronSightsPack_Front", "wpn_fps_snp_tti_fg_composite", "a_of_composite")
self:cafcw_part_a_obj_pattern_override("MOD_IronSightsPack_Front", "wpn_fps_snp_tti_fg_rail", "a_of_rail")
self:cafcw_part_a_obj_pattern_override("MOD_IronSightsPack_Custom", "wpn_fps_snp_tti_fg_rail", "a_or_rail")

end

--Garand Various
if BeardLib.Utils:FindMod("M1 Garand Various Attachment") then

self:cafcw_forbids_attachment_type("Gadgets", "wpn_fps_ass_ching_o_m84")

end



end)