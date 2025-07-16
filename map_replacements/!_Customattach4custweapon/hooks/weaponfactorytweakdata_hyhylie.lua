Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "CAFCWMod_HyHylie_Init", function(self)

----- HELLDIVERS 2 Weapons (SWEET LIBER-TEA!) -----

-- AR-23 Liberator --

if self.wpn_fps_ass_ar23 then
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_ar23")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_ar23")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_ar23")
end

-- StA-52 Assault Rifle --

if self.wpn_fps_ass_sta52 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_sta52", "wpn_fps_ass_flint")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_sta52", "wpn_fps_ass_flint")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_sta52", "wpn_fps_ass_flint")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_sta52")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_sta52")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_sta52")
end

-- BR-14 Adjudicator --

if self.wpn_fps_ass_br14 then
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_br14")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_br14")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_br14")
end

-- StA-11 Submachine Gun --

if self.wpn_fps_smg_sta11 then
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_sta11")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_sta11")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_sta11")
end

-- SMG-32 Reprimand --

if self.wpn_fps_smg_smg32 then
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_smg32")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_smg32")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_smg32")
end

----- Half-Life 2 Weapons (Unforseen Consequences) -----

-- XM29 OICW --

if self.wpn_fps_ass_xm29 then
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_xm29")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_xm29")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_xm29")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_ass_xm29")
end

-- Red-Hot Rebar Crossbow --

if self.wpn_fps_bow_rebar then
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_bow_rebar")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_bow_rebar", "wpn_fps_bow_arblast")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_bow_rebar", "wpn_fps_bow_arblast")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_bow_rebar", "wpn_fps_bow_arblast")
end

-- Overwatch Standard Issue Pulse Rifle (OSIPR) --

if self.wpn_fps_ass_ar2 then
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_ar2")
end

-- 9mm Pistol (USP Match) --

if self.wpn_fps_pis_hl2_9mm then
	self:cafcw_add_attachment_type("Gadgets_Pistol", "wpn_fps_pis_hl2_9mm")
	self:cafcw_add_custom_sights("Custom_Pistol", "wpn_fps_pis_hl2_9mm", "wpn_fps_pis_usp")
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_hl2_9mm")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_hl2_9mm")
end

----- Commissioned Weapons (More COD guns) -----

-- MW2023 Origin-12 (Haymaker) --

if self.wpn_fps_sho_haymaker then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_sho_haymaker", "wpn_fps_sho_sko12")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_sho_haymaker", "wpn_fps_sho_sko12")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_sho_haymaker", "wpn_fps_sho_sko12")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_sho_haymaker")
	self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_sho_haymaker")
	self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_sho_haymaker")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_sho_haymaker")
	self:cafcw_add_custom_ammo("wpn_fps_sho_haymaker", "_12ga")
end

-- MW2023 Kel-Tec P-50 (Static-HV) --

if self.wpn_fps_smg_b50 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_b50", "wpn_fps_smg_p90")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_b50", "wpn_fps_smg_p90")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_b50", "wpn_fps_smg_p90")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_b50")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_b50")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_b50")
end

----- PAYDAY 3 Weapons (I'M HURT REALLY BAD) -----

-- PAYDAY 3 CAR-4 --

if self.wpn_fps_ass_car4 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_car4", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_car4", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_car4", "wpn_fps_ass_m4")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_car4")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_car4")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_car4")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_car4")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_car4")
end

-- PAYDAY 3 - Chanit S3 Rifle --

if self.wpn_fps_ass_felin then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_felin", "wpn_fps_ass_vhs")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_felin", "wpn_fps_ass_vhs")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_felin", "wpn_fps_ass_vhs")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_felin")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_felin")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_felin")
end

-- PAYDAY 3 - M7 Pursuivant Shotgun --

if self.wpn_fps_sho_bp12 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_sho_bp12", "wpn_fps_sho_saiga")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_sho_bp12", "wpn_fps_sho_saiga")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_sho_bp12", "wpn_fps_sho_saiga")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_sho_bp12")
	self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_sho_bp12")
	self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_sho_bp12")
	self:cafcw_add_custom_ammo("wpn_fps_sho_bp12", "_12ga")
end

-- PAYDAY 3 - FIK-22 TLR Marksman Rifle --

if self.wpn_fps_ass_fik22 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_fik22", "wpn_fps_ass_flint")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_fik22", "wpn_fps_ass_flint")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_fik22", "wpn_fps_ass_flint")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_fik22")
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_ass_fik22")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_ass_fik22")
end

-- PAYDAY 3 - WAR-45 Submachine Gun --

if self.wpn_fps_smg_war45 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_war45", "wpn_fps_smg_schakal")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_war45", "wpn_fps_smg_schakal")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_war45", "wpn_fps_smg_schakal")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_war45")
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_smg_war45")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_smg_war45")
end

-- PAYDAY 3 - Spearfish 1895--
if self.wpn_fps_snp_spearfish1895 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_spearfish1895", "wpn_fps_snp_sbl")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_spearfish1895", "wpn_fps_snp_sbl")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_spearfish1895", "wpn_fps_snp_sbl")
	self:cafcw_add_custom_sights("Custom_Sniper", "wpn_fps_snp_spearfish1895", "wpn_fps_snp_sbl")
	self:cafcw_add_custom_sights("Shortdot", "wpn_fps_snp_spearfish1895", "wpn_fps_snp_sbl")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_spearfish1895")
end


----- OVERKILL's The Walking Dead Weapons (MY SCARS ARE OLDER THAN YOU) ----- 

-- AIM 90M Sniper Rifle --

if self.wpn_fps_snp_otwdawp then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_otwdawp", "wpn_fps_snp_awp")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_otwdawp", "wpn_fps_snp_awp")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_otwdawp", "wpn_fps_snp_awp")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_otwdawp")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_snp_otwdawp")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_snp_otwdawp")
end

----- Crime Boss: Rockay City Weapons (New adventures await, buddy) ----- 

-- Scudomnion Submachine Gun --

if self.wpn_fps_smg_cagnali then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_cagnali", "wpn_fps_smg_schakal")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_cagnali", "wpn_fps_smg_schakal")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_cagnali", "wpn_fps_smg_schakal")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_cagnali")
end

----- Apex Legends Weapons (EA bad) ----- 

-- G7 Scout --

if self.wpn_fps_ass_g7 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_g7", "wpn_fps_ass_m14")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_g7", "wpn_fps_ass_m14")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_g7", "wpn_fps_ass_m14")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_g7")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_g7")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_g7")
end

----- Fortnite Weapons (Fortinayt Ila Babaji) ----- 

-- Holo Twister Assault Rifle --

if self.wpn_fps_ass_holoar then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_holoar", "wpn_fps_ass_flint")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_holoar", "wpn_fps_ass_flint")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_holoar", "wpn_fps_ass_flint")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_holoar")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_holoar")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_holoar")
end

----- VALORANT Weapons (Riot bad) ----- 

-- Bulldog --

if self.wpn_fps_ass_bulldog then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_bulldog", "wpn_fps_ass_komodo")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_bulldog", "wpn_fps_ass_komodo")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_bulldog", "wpn_fps_ass_komodo")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_bulldog")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_bulldog")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_bulldog")
end

----- Atomic Heart Weapons (Ебучие пироги!) ----- 

-- Kalash --

if self.wpn_fps_ass_kalash then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_kalash", "wpn_fps_ass_74")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_kalash", "wpn_fps_ass_74")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_kalash", "wpn_fps_ass_74")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_kalash")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_kalash")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_kalash")
end

----- PAYDAY: The Heist Weapons (Divided by zero) ----- 

-- AMCAR-4 Carbine --

if self.wpn_fps_ass_amcar4 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_amcar4", "wpn_fps_ass_amcar")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_amcar4", "wpn_fps_ass_amcar")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_amcar4", "wpn_fps_ass_amcar")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_amcar4")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_amcar4")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_amcar4")
end

----- RAID: World War II Weapons (Blammo!) ----- 

-- BAR Heavy Rifle --

if self.wpn_fps_lmg_m1918 then
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_lmg_m1918")
end

----- Non-Commissioned COD Weapons (Activision bad?) ----- 

-- MW2019 CR-56 AMAX Rifle --

if self.wpn_fps_ass_cr56 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_cr56", "wpn_fps_ass_flint")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_cr56", "wpn_fps_ass_flint")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_cr56", "wpn_fps_ass_flint")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_cr56")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_cr56")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_cr56")
end

----- Miscellaneous Weapons (I make these when I'm bored) -----

-- War Sport LVOA-C --

if self.wpn_fps_ass_lvoac then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_lvoac", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_lvoac", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_lvoac", "wpn_fps_ass_m4")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_lvoac")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_lvoac")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_lvoac")
end

-- TOZ-81 MARS Revolver --

if self.wpn_fps_pis_toz81 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_pis_toz81", "wpn_fps_pis_judge")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_pis_toz81", "wpn_fps_pis_judge")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_pis_toz81", "wpn_fps_pis_judge")
	self:cafcw_add_attachment_type("Barrel_Extensions_Shotgun", "wpn_fps_pis_toz81")
	self:cafcw_add_attachment_type("Suppressors_Shotgun", "wpn_fps_pis_toz81")
	self:cafcw_add_custom_ammo("wpn_fps_pis_toz81", "_12ga")
end

-- Smith & Wesson M&P9 Pro Series Pistol --

if self.wpn_fps_pis_sw9 then
	self:cafcw_add_custom_sights("Custom_Pistol", "wpn_fps_pis_sw9", "wpn_fps_pis_sparrow")
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_sw9")
	self:cafcw_add_attachment_type("Gadgets_Pistol", "wpn_fps_pis_sw9")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_sw9")
end

-- Taurus Curve Pistol (technically this is a ported gfl2 weapon but ehhhhh) --

if self.wpn_fps_pis_curve then
	self:cafcw_add_custom_sights("Custom_Pistol", "wpn_fps_pis_curve", "wpn_fps_pis_ppk")
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_curve")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_curve")
end

-- MKW-15 XBE Recon Rifle (ah yes, my first ever custom weapon, good times) --

if self.wpn_fps_ass_mkw15 then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_mkw15", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_mkw15", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_mkw15", "wpn_fps_ass_m16")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_mkw15")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_mkw15")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_mkw15")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_mkw15")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_mkw15")
end

end)