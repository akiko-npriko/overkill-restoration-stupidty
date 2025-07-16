Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "CAFCWMod_carl_Init", function(self)
--sometimes, i feel a deep-seated hatred for my username of choice
--whenever that happens i like to remind myself that it could be worse
--i could have chosen clarence



--AAC Honey Badger
if self.wpn_fps_ass_bajur then
	--this was my first weapon mod. i learned everything i know from making it, or more specifically, zdann cleaning up after me making it
	--good times
	--also it's arguably my best because of how many times i've gone and refined it
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_bajur", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_bajur", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_bajur", "wpn_fps_ass_m4")

	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_bajur")

end

--Maverick Assault Rifle 
if self.wpn_fps_ass_mav then
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_mav", "wpn_fps_ass_fal")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_mav", "wpn_fps_ass_fal")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_mav", "wpn_fps_ass_fal")

	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_mav")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_mav")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_mav")

end

--HK417 Standalone
if self.wpn_fps_ass_recce then
	self:cafcw_add_custom_ammo("wpn_fps_ass_recce", "_762x51mm")

	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_recce", "wpn_fps_ass_contraband")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_recce", "wpn_fps_ass_contraband")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_recce", "wpn_fps_ass_contraband")

	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_recce")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_recce")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_recce")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_recce")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_recce")

end

--HK416C Standalone
if self.wpn_fps_ass_drongo then
	--i would only find out AFTER making this on request from mira and dersushy that thirty other people had already done this
	--but they were all conversion kits instead of actual standalone weapons
	--so i guess this is still kind of original? idk
	self:cafcw_add_custom_ammo("wpn_fps_ass_drongo", "_556x45mm")
	
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_drongo", "wpn_fps_ass_tecci")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_drongo", "wpn_fps_ass_tecci")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_drongo", "wpn_fps_ass_tecci")
	-- fun fact: i'm an idiot and i forgot that i was using the bootleg stance_mod for vanilla optics here lololol
	
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_drongo")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_drongo")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_drongo")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_drongo")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_ass_drongo")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_drongo")
end

--"""""G28"""""
if self.wpn_fps_snp_kozak then
	--fun fact:
	--the name for this weapon was actually intended to be a gr: fs reference
	--the hk417 in that game saved my life so many times over you know
	--only late in development did i realize that vlad's last name was kozak and people would think it to be a vlad reference
	--and at that point i was too scared to change it
	self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_kozak", "wpn_fps_snp_tti")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_kozak", "wpn_fps_snp_tti")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_kozak", "wpn_fps_snp_tti")
	self:cafcw_add_custom_sights("Custom_Sniper", "wpn_fps_snp_kozak", "wpn_fps_snp_tti")
	self:cafcw_add_custom_sights("Shortdot", "wpn_fps_snp_kozak", "wpn_fps_snp_tti")

	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_kozak")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_snp_kozak")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_snp_kozak")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_snp_kozak")
	
	self:cafcw_add_custom_ammo("wpn_fps_snp_kozak", "_762x51mm")
end

--Janktastic ARES Shrike AWS
if self.wpn_fps_lmg_beef then
	-- i was hungry when i made this ok

	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_lmg_beef")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_lmg_beef")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_lmg_beef")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_lmg_beef")
	
	self:cafcw_add_custom_ammo("wpn_fps_lmg_beef", "_556x45mm")
end

-- Parker-Hale PDW
if self.wpn_fps_smg_nya then
	self:cafcw_add_custom_ammo("wpn_fps_smg_nya", "_9x19mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_nya", "wpn_fps_smg_tec9")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_nya", "wpn_fps_smg_tec9")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_nya", "wpn_fps_smg_tec9")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_nya")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_nya")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_nya")
--	self:cafcw_part_a_obj_pattern_override("Suppressors", "wpn_fps_upg_nya_rec_v1", "a_b_verycool")
--	self:cafcw_part_a_obj_pattern_override("Barrel_Extensions", "wpn_fps_upg_nya_rec_v1", "a_b_verycool")
end
-- Oh look two cats .. wait a minute.. NYAAAAAAAA² AAAAAAAAAAAAAAAAAAAAAAAAHHHHHHHH
	-- wow killerwolf you had a lot of fun with this didnt you
	-- >:3
if self.wpn_fps_smg_x_nya then
	self:cafcw_add_custom_ammo("wpn_fps_smg_x_nya", "_9x19mm")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_x_nya")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_smg_x_nya")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_smg_x_nya")
--	self:cafcw_part_a_obj_pattern_override("Suppressors", "wpn_fps_upg_nya_rec_v1", "a_b_verycool")
--	self:cafcw_part_a_obj_pattern_override("Barrel_Extensions", "wpn_fps_upg_nya_rec_v1", "a_b_verycool")
end

--Zastava M21A
if self.wpn_fps_ass_howl then
	-- fun fact: this model you're looking at is actually the LOD0 version of the zastava m21a.
	-- i was going to use the fully-modeled, super-detailed, high-poly model, but it had a sextuple-digit polygon count
	-- tl;dr it was going to make my piddly 2mb vram graphics card catch on fire so i decided not to use it
	self:cafcw_add_custom_ammo("wpn_fps_ass_howl", "_556x45mm")
	
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_howl", "wpn_fps_ass_flint")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_howl", "wpn_fps_ass_flint")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_howl", "wpn_fps_ass_flint")

	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_howl")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_howl")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_howl")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_howl")
end

-- Remington R5 RGP
attach_tables.AR15_Stocks_mikon = {"wpn_fps_upg_m4_s_caastock","wpn_fps_upg_m4_s_caastock_black","wpn_fps_upg_m4_s_hke1","wpn_fps_upg_m4_s_collapsed","wpn_fps_upg_m4_s_pts_col","wpn_fps_upg_m4_s_crane_col",	"wpn_fps_upg_m4_s_mk46_col","wpn_fps_upg_m4_s_ubr_col","wpn_fps_upg_s_devgru"}
--kluge to account for the fact that the strike viper stock comes with the r5 by default lol
if self.wpn_fps_ass_mikon then
	-- fun fact: "mikon" was actually the working name and while i was going to change it i got lazy
	-- and ended up having to keep it the way it was so i could use things that people made while helping me
	-- lol oops
	self:cafcw_add_custom_ammo("wpn_fps_ass_mikon", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_mikon", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_mikon", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_mikon", "wpn_fps_ass_m4")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_mikon")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_mikon")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_mikon")
	self:cafcw_add_attachment_type("AR15_Stocks_mikon", "wpn_fps_ass_mikon")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_ass_mikon")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_mikon")
end

-- ARX-160 A2
if self.wpn_fps_ass_lazy then
	-- you absolutely would not believe how fucking painful making this gun was.
	self:cafcw_add_custom_ammo("wpn_fps_ass_lazy", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_lazy", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_lazy", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_lazy", "wpn_fps_ass_m4")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_lazy")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_lazy")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_lazy")
	-- originally i did ar15 stocks here and then i remembered that it was going to fucking crash people lololol
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_ass_lazy")
end

-- Kel-Tec RFB
if self.wpn_fps_snp_leet then
	-- i *was* going to name it wpn_fps_snp_gamegihr but that would have been too obvious
	self:cafcw_add_custom_sights("Specter", "wpn_fps_snp_leet", "wpn_fps_ass_komodo")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_snp_leet", "wpn_fps_ass_komodo")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_snp_leet", "wpn_fps_ass_komodo")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_snp_leet")
	self:cafcw_add_custom_ammo("wpn_fps_snp_leet", "_762x51mm")
end

-- Noveske N4 Diplomat
if self.wpn_fps_ass_rabbit then
	-- fun fact: the id for this weapon is rabbit because i mainly fell in love with the N4 due to breah & clear, which was developed by mightyrabbit
	self:cafcw_add_custom_ammo("wpn_fps_ass_rabbit", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_rabbit", "wpn_fps_ass_m16", "wpn_fps_ass_rabbit_o_down")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_rabbit", "wpn_fps_ass_m16", "wpn_fps_ass_rabbit_o_down")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_rabbit", "wpn_fps_ass_m16", "wpn_fps_ass_rabbit_o_down")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_rabbit")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_rabbit")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_rabbit")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_rabbit")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_ass_rabbit")
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_upg_rabbit_fg_ext", "a_fl_afghan")
	self:cafcw_part_a_obj_pattern_override("Suppressors", "wpn_fps_upg_rabbit_fg_ext", "a_ns_afghan")
	self:cafcw_part_a_obj_pattern_override("Barrel_Extensions", "wpn_fps_upg_rabbit_fg_ext", "a_ns_afghan")
end

-- HK416A5 GFL
if self.wpn_fps_ass_raifu then
	-- (all you need intensifies)
	self:cafcw_add_custom_ammo("wpn_fps_ass_raifu", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_raifu", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_raifu", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_raifu", "wpn_fps_ass_m4")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_raifu")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_raifu")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_raifu")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_raifu")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_ass_raifu")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_raifu")
	self:cafcw_add_attachment_type("Vertical_Grips", "wpn_fps_ass_raifu")
	-- todo: overrides for mlok handguard? idk
end

--Q Honey Badger
if self.wpn_fps_smg_betty then
	-- with this, we come full circle
	-- a honey badger that i made almost completely from scratch, by me, with minimal assistance
	-- merry christmas, modworkshop!
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_betty", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_betty", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_betty", "wpn_fps_ass_m4")
	-- why the FUCK this shit gotta be cursed

	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_betty")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_smg_betty")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_smg_betty")
	self:cafcw_add_attachment_type("Vertical_Grips", "wpn_fps_smg_betty")

end

--Q Honey Badger (Primary Ver.)
if self.wpn_fps_ass_petto then
	-- if we weren't full circle before we are now!
	-- just redid the q honey badger to look actually good, and i have to say i think i've finally done it
	-- maybe. i dunno. fuck it
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_petto", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_petto", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_petto", "wpn_fps_ass_m4")

	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_petto")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_ass_petto")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_petto")
	self:cafcw_add_attachment_type("Angled_Grips", "wpn_fps_ass_petto")

end

--BCM Cold Harbor AR15
if self.wpn_fps_ass_m4bpre then
	-- the black powders when they red earth idk i never played it
	self:cafcw_add_custom_ammo("wpn_fps_ass_m4bpre", "_556x45mm")
	self:cafcw_add_custom_ammo("wpn_fps_upg_m4bpre_b_blk", "_556x45mm", "forbids_add")
	self:cafcw_add_custom_ammo("wpn_fps_upg_m4bpre_b_socom", "_556x45mm", "forbids_add")
	
	-- hahahaha referencing that dancing triangle meme totally wont make this dated
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_m4bpre", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_m4bpre", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_m4bpre", "wpn_fps_ass_m16")

	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_m4bpre")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_m4bpre")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_m4bpre")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_ass_m4bpre")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_m4bpre")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_m4bpre")

end

-- Sig MCX Virtus
if self.wpn_fps_ass_virtus then
	-- I can't believe it's not honey badger!
	self:cafcw_add_custom_ammo("wpn_fps_ass_virtus", "_556x45mm")
	self:cafcw_add_custom_ammo("wpn_fps_upg_virtus_b_blk", "_556x45mm", "forbids_add")
	
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_virtus", "wpn_fps_ass_s552")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_virtus", "wpn_fps_ass_s552")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_virtus", "wpn_fps_ass_s552")

	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_virtus")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_virtus")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_virtus")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_ass_virtus")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_virtus")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_virtus")
	
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_upg_virtus_fg_long", "a_fl_long")
	self:cafcw_part_a_obj_pattern_override("Gadgets", "wpn_fps_upg_virtus_fg_short", "a_fl_short")
	self:cafcw_forbids_attachment_type("Suppressors", "wpn_fps_upg_virtus_fg_quiet")
	self:cafcw_forbids_attachment_type("Barrel_Extensions", "wpn_fps_upg_virtus_fg_quiet")
end

-- Mass Blaster
if self.wpn_fps_smg_mass then
	-- I guess I do commissions now. Cool!
	self:cafcw_add_custom_sights("Specter", "wpn_fps_smg_mass", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_smg_mass", "wpn_fps_ass_m4")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_smg_mass", "wpn_fps_ass_m4")
	
	self:cafcw_add_custom_sights("MOD_IronSightsPack_NoScorpEvo_Custom", "wpn_fps_smg_mass", "wpn_fps_ass_m4") -- comment out if things break
	self:cafcw_forbids_attachment_type("MOD_IronSightsPack_NoScorpEvo_Custom", "wpn_fps_upg_mass_o_sightrail_half")

	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_mass")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_smg_x_mass")
end



-- its finally time

-- theyre coming

-- ST AR-15
if self.wpn_fps_ass_flat then
	-- STAR IS FLAT BOTTOM TEXT
	self:cafcw_add_custom_ammo("wpn_fps_ass_flat", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_flat", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_flat", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_flat", "wpn_fps_ass_m16")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_flat")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_flat")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_flat")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_flat")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_ass_flat")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_flat")
	-- todo: custom sniper/shortdot
end

-- M4 SOPMOD II
if self.wpn_fps_ass_gameover then
	-- jsut wanna pat her head my man you know?
	self:cafcw_add_custom_ammo("wpn_fps_ass_gameover", "_556x45mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_gameover", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_gameover", "wpn_fps_ass_m16")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_gameover", "wpn_fps_ass_m16")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_gameover")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_gameover")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_gameover")
	self:cafcw_add_attachment_type("AR15_Stocks", "wpn_fps_ass_gameover")
	self:cafcw_add_attachment_type("AR15_Magazines", "wpn_fps_ass_gameover")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_gameover")
end


-- desert benis time

-- Desert Eagle L5
if self.wpn_fps_pis_limafive then
	-- ever wished for a desert eagle that was practicool and tacticool at the same time?
	-- yeah, me neither, yet here we are anyway
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_limafive")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_limafive")
	
	self:cafcw_add_custom_sights("Specter", "wpn_fps_pis_limafive", "wpn_fps_pis_deagle")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_pis_limafive", "wpn_fps_pis_deagle")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_pis_limafive", "wpn_fps_pis_deagle")
end

-- Desert Eagle XIX
if self.wpn_fps_pis_deltaoneniner then
	-- now THIS is where it's fucken AT boyo woo
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_deltaoneniner")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_deltaoneniner")
	
	self:cafcw_add_custom_sights("Specter", "wpn_fps_pis_deltaoneniner", "wpn_fps_pis_deagle")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_pis_deltaoneniner", "wpn_fps_pis_deagle")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_pis_deltaoneniner", "wpn_fps_pis_deagle")
end

-- BELGIAN GANG BELGIAN GANG

-- MK 17 MOD 0
if self.wpn_fps_ass_mk17 then
	-- fun fact: when i was younger i used to be the guy who swore by 7.62mm in literally every game ever
	-- i'm not that guy anymore, of course, but i *do* still think the fn scar is goddamn sexy
	self:cafcw_add_custom_ammo("wpn_fps_ass_mk17", "_762x51mm")
	self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_mk17", "wpn_fps_ass_scar")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_mk17", "wpn_fps_ass_scar")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_ass_mk17", "wpn_fps_ass_scar")

	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_mk17")
	self:cafcw_add_attachment_type("AR15_Grips", "wpn_fps_ass_mk17")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_mk17")
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_mk17")
	self:cafcw_add_attachment_type("Angled_Grips", "wpn_fps_ass_mk17")

end

-- FN Five-seveN MK2
if self.wpn_fps_pis_hoxy then
	-- hoxy...?
	self:cafcw_add_attachment_type("Barrel_Extensions_Pistol", "wpn_fps_pis_hoxy")
	self:cafcw_add_attachment_type("Suppressors_Pistol", "wpn_fps_pis_hoxy")
	
	self:cafcw_add_custom_sights("Specter", "wpn_fps_pis_hoxy", "wpn_fps_pis_deagle")
	self:cafcw_add_custom_sights("ACOG", "wpn_fps_pis_hoxy", "wpn_fps_pis_deagle")
	self:cafcw_add_custom_sights("Custom", "wpn_fps_pis_hoxy", "wpn_fps_pis_deagle")

	self:cafcw_part_a_obj_pattern_override("Barrel_Extensions_Pistol", "wpn_fps_upg_hoxy_b_threaded", "a_ns_threaded")
	self:cafcw_forbids_attachment_type("Specter", "wpn_fps_pis_hoxy_sightforbid_dummy")
	self:cafcw_forbids_attachment_type("ACOG", "wpn_fps_pis_hoxy_sightforbid_dummy")
	self:cafcw_forbids_attachment_type("Custom", "wpn_fps_pis_hoxy_sightforbid_dummy")
end

end)