function CharacterTweakData:character_map()
	local char_map = {
		basic = {
			path = "units/payday2/characters/",
			list = {
				"civ_female_bank_1",
				"civ_female_bank_manager_1",
				"civ_female_bikini_1",
				"civ_female_bikini_2",
				"civ_female_bikini_3",	
				"civ_female_bikini_4",	
				"civ_female_bikini_5",			
				"civ_female_bikini_6",	
				"civ_female_bikini_7",		
				"civ_female_bikini_8",				
				"civ_female_bikini_9",			
				"civ_female_bikini_10",			
				"civ_female_bikini_11",		
				"civ_female_bikini_12",				
				"civ_male_suave_1",	
				"civ_male_suave_2",	
				"civ_male_suave_3",		
				"civ_male_suave_4",	
				"civ_male_suave_5",									
				"civ_female_casual_1",
				"civ_female_casual_2",
				"civ_female_casual_3",
				"civ_female_casual_4",
				"civ_female_casual_5",
				"civ_female_casual_6",
				"civ_female_casual_7",
				"civ_female_casual_8",
				"civ_female_casual_9",
				"civ_female_casual_10",
				"civ_female_crackwhore_1",
				"civ_female_curator_1",
				"civ_female_curator_2",
				"civ_female_hostess_apron_1",
				"civ_female_hostess_jacket_1",
				"civ_female_hostess_shirt_1",
				"civ_female_party_1",
				"civ_female_party_2",
				"civ_female_asian_dress_1",
				"civ_female_asian_dress_2",
				"civ_female_asian_party_1",	
				"civ_male_asian_business_1",	
				"civ_male_asian_business_2",	
				"civ_female_asian_party_1",		
				"civ_male_suitguy_1",	
				"civ_male_suitguy_2",	
				"civ_male_suitguy_3",	
				"civ_male_suitguy_4",				
				"civ_female_party_3",
				"civ_female_party_4",				
				"civ_female_waitress_1",
				"civ_female_waitress_2",
				"civ_female_waitress_3",
				"civ_female_waitress_4",
				"civ_female_wife_trophy_1",
				"civ_female_wife_trophy_2",
				"civ_male_bank_1",
				"civ_male_bank_2",
				"civ_male_asian_suit_1",	
				"civ_male_asian_suit_2",	
				"civ_male_asian_suit_3",	
				"civ_male_bank_manager_1",
				"civ_male_bank_manager_3",
				"civ_male_bank_manager_4",
				"civ_male_bank_manager_5",
				"civ_male_bartender_1",
				"civ_male_bartender_2",
				"civ_male_business_1",
				"civ_male_business_2",
				"civ_male_casual_1",
				"civ_male_casual_2",
				"civ_male_casual_3",
				"civ_male_casual_4",
				"civ_male_casual_5",
				"civ_male_casual_6",
				"civ_male_casual_7",
				"civ_male_casual_8",
				"civ_male_casual_9",
				"civ_male_casual_12",
				"civ_male_casual_13",
				"civ_male_casual_14",
				"civ_male_curator_1",
				"civ_male_curator_2",
				"civ_male_curator_3",
				"civ_male_dj_1",
				"civ_male_italian_robe_1",
				"civ_male_janitor_1",
				"civ_male_janitor_2",
				"civ_male_janitor_3",
				"civ_male_meth_cook_1",
				"civ_male_party_1",
				"civ_male_party_2",
				"civ_male_party_3",
				"civ_male_pilot_1",
				"civ_male_scientist_1",
				"civ_male_miami_store_clerk_1",
				"civ_male_taxman",
				"civ_male_trucker_1",
				"civ_male_worker_1",
				"civ_male_worker_2",
				"civ_male_worker_3",
				"civ_male_worker_docks_1",
				"civ_male_worker_docks_2",
				"civ_male_worker_docks_3",
				"civ_male_dog_abuser_1",
				"civ_male_dog_abuser_2",
				"ene_biker_1",
				"ene_biker_2",
				"ene_biker_3",
				"ene_biker_4",
				"ene_bulldozer_1",
				"ene_bulldozer_2",
				"ene_bulldozer_3",
				"ene_bulldozer_4",
				"ene_city_swat_1",
				"ene_city_swat_2",
				"ene_city_swat_3",
				"ene_murkywater_1",
				"ene_murkywater_2",
				"ene_cop_1",
				"ene_cop_2",
				"ene_cop_3",
				"ene_cop_4",
				"ene_fbi_1",
				"ene_fbi_2",
				"ene_fbi_3",
				"ene_fbi_boss_1",
				"ene_fbi_female_1",
				"ene_fbi_female_2",
				"ene_fbi_female_3",
				"ene_fbi_female_4",
				"ene_fbi_heavy_1",
				"ene_fbi_office_1",
				"ene_fbi_office_2",
				"ene_fbi_office_3",
				"ene_fbi_office_4",
				"ene_fbi_swat_1",
				"ene_fbi_swat_2",
				"ene_gang_black_1",
				"ene_gang_black_2",
				"ene_gang_black_3",
				"ene_gang_black_4",
				"ene_gang_mexican_1",
				"ene_gang_mexican_2",
				"ene_gang_mexican_3",
				"ene_gang_mexican_4",
				"ene_gang_russian_1",
				"ene_gang_russian_2",
				"ene_gang_russian_3",
				"ene_gang_russian_4",
				"ene_gang_russian_5",
				"ene_gang_mobster_1",
				"ene_gang_mobster_2",
				"ene_gang_mobster_3",
				"ene_gang_mobster_4",
				"ene_gang_mobster_boss",
				"ene_gang_triad_suit_1",	
				"ene_gang_triad_suit_2",	
				"ene_gang_triad_suit_3",
				"ene_gang_triad_suit_4",	
				"ene_gang_triad_suit_enforcer_1",	
				"ene_gang_triad_suit_enforcer_2",	
				"ene_gang_triad_suit_enforcer_3",
				"ene_gang_triad_suit_enforcer_4",
				"ene_gang_triad_suit_enforcer_1_pager",
				"ene_gang_triad_suit_enforcer_2_pager",
				"ene_gang_triad_suit_enforcer_3_pager",	
				"ene_gang_triad_suit_enforcer_4_pager",				
				"ene_gang_triad_vip_1",		
				"ene_gang_triad_vip_2",	
				"ene_gang_triad_vip_3",		
				"ene_gang_triad_vip_4",									
				"ene_guard_national_1",
				"ene_hoxton_breakout_guard_1",
				"ene_hoxton_breakout_guard_2",
				"ene_male_tgt_1",
				"ene_murkywater_1",
				"ene_murkywater_2",
				"ene_prisonguard_female_1",
				"ene_prisonguard_male_1",
				"ene_secret_service_1",
				"ene_secret_service_2",
				"ene_security_1",
				"ene_security_2",
				"ene_security_3",
				"ene_security_4",
				"ene_security_5",
				"ene_security_6",
				"ene_security_7",
				"ene_security_8",
				"ene_shield_1",
				"ene_shield_2",
				"ene_phalanx_1",
				"ene_vip_1",
				"ene_sniper_1",
				"ene_sniper_2",
				"ene_sniper_dw",
				"ene_spook_1",
				"ene_swat_1",
				"ene_swat_2",
				"ene_swat_heavy_1",
				"ene_tazer_1",
				"ene_veteran_cop_1",
				"npc_old_hoxton_prisonsuit_1",
				"npc_old_hoxton_prisonsuit_2",
				"ene_medic_r870",
				"ene_medic_m4",
				"ene_city_heavy_r870",
				"ene_city_heavy_g36"
			}
		},
		dlc1 = {
			path = "units/pd2_dlc1/characters/",
			list = {
				"civ_male_bank_manager_2",
				"civ_male_casual_10",
				"civ_male_casual_11",
				"civ_male_firefighter_1",
				"civ_male_paramedic_1",
				"civ_male_paramedic_2",
				"ene_security_gensec_1",
				"ene_security_gensec_2"
			}
		},
		dlc2 = {
			path = "units/pd2_dlc2/characters/",
			list = {
				"civ_female_bank_assistant_1",
				"civ_female_bank_assistant_2"
			}
		},
		mansion = {
			path = "units/pd2_mcmansion/characters/",
			list = {
				"ene_male_hector_1",
				"ene_male_hector_2",
				"ene_hoxton_breakout_guard_1",
				"ene_hoxton_breakout_guard_2"
			}
		},
		cage = {
			path = "units/pd2_dlc_cage/characters/",
			list = {
				"civ_female_bank_2"
			}
		},
		arena = {
			path = "units/pd2_dlc_arena/characters/",
			list = {
				"civ_female_fastfood_1",
				"civ_female_party_alesso_1",
				"civ_female_party_alesso_2",
				"civ_female_party_alesso_3",
				"civ_female_party_alesso_4",
				"civ_female_party_alesso_5",
				"civ_female_party_alesso_6",
				"civ_male_party_alesso_1",
				"civ_male_party_alesso_2",
				"civ_male_alesso_booth",
				"civ_male_fastfood_1",
				"ene_guard_security_heavy_2",
				"ene_guard_security_heavy_1"
			}
		},
		kenaz = {
			path = "units/pd2_dlc_casino/characters/",
			list = {
				"civ_male_casino_1",
				"civ_male_casino_2",
				"civ_male_casino_3",
				"civ_male_casino_4",
				"ene_secret_service_1_casino",
				"civ_male_business_casino_1",
				"civ_male_business_casino_2",
				"civ_male_impersonator",
				"civ_female_casino_1",
				"civ_female_casino_2",
				"civ_female_casino_3",
				"civ_male_casino_pitboss"
			}
		},
		vip = {
			path = "units/pd2_dlc_vip/characters/",
			list = {
				"ene_vip_1",
				"ene_phalanx_1"
			}
		},
		holly = {
			path = "units/pd2_dlc_holly/characters/",
			list = {
				"civ_male_hobo_1",
				"civ_male_hobo_2",
				"civ_male_hobo_3",
				"civ_male_hobo_4",
				"ene_gang_hispanic_1",
				"ene_gang_hispanic_3",
				"ene_gang_hispanic_2"
			}
		},
		red = {
			path = "units/pd2_dlc_red/characters/",
			list = {
				"civ_female_inside_man_1"
			}
		},
		dinner = {
			path = "units/pd2_dlc_dinner/characters/",
			list = {
				"civ_male_butcher_2",
				"civ_male_butcher_1"
			}
		},
		pal = {
			path = "units/pd2_dlc_pal/characters/",
			list = {
				"civ_male_mitch"
			}
		},
		cane = {
			path = "units/pd2_dlc_cane/characters/",
			list = {
				"civ_male_helper_1",
				"civ_male_helper_2",
				"civ_male_helper_3",
				"civ_male_helper_4"
			}
		},
		berry = {
			path = "units/pd2_dlc_berry/characters/",
			list = {
				"ene_murkywater_no_light",
				"npc_locke"
			}
		},
		peta = {
			path = "units/pd2_dlc_peta/characters/",
			list = {
				"civ_male_boris"
			}
		},
		mad = {
			path = "units/pd2_dlc_mad/characters/",
			list = {
				"civ_male_scientist_01",
				"civ_male_scientist_02",
				"ene_akan_fbi_heavy_g36",
				"ene_akan_fbi_shield_sr2_smg",
				"ene_akan_fbi_spooc_asval_smg",
				"ene_akan_fbi_swat_ak47_ass",
				"ene_akan_fbi_swat_dw_ak47_ass",
				"ene_akan_fbi_swat_dw_r870",
				"ene_akan_fbi_swat_r870",
				"ene_akan_fbi_tank_r870",
				"ene_akan_fbi_tank_rpk_lmg",
				"ene_akan_fbi_tank_saiga",
				"ene_akan_cs_cop_ak47_ass",
				"ene_akan_cs_cop_akmsu_smg",
				"ene_akan_cs_cop_asval_smg",
				"ene_akan_cs_cop_r870",
				"ene_akan_cs_heavy_ak47_ass",
				"ene_akan_cs_shield_c45",
				"ene_akan_cs_swat_ak47_ass",
				"ene_akan_cs_swat_r870",
				"ene_akan_cs_swat_sniper_svd_snp",
				"ene_akan_cs_tazer_ak47_ass",
				"ene_akan_medic_ak47_ass",
				"ene_akan_medic_r870"
			}
		},
		born = {
			path = "units/pd2_dlc_born/characters/",
			list = {
				"ene_gang_biker_boss",
				"ene_biker_female_1",
				"ene_biker_female_2",
				"ene_biker_female_3",
				"npc_male_mechanic"
			}
		},
		flat = {
			path = "units/pd2_dlc_flat/characters/",
			list = {
				"npc_chavez",
				"npc_jamaican"
			}
		},
		glace = {
			path = "units/pd2_dlc_glace/characters/",
			list = {
				"npc_chinese_prisoner",
				"npc_prisoner_1",
				"npc_prisoner_2",
				"npc_prisoner_3",
				"npc_prisoner_4",
				"npc_prisoner_5",
				"npc_prisoner_6",
				"npc_yakuza_prisoner"
			}
		},
		moon = {
			path = "units/pd2_dlc_moon/characters/",
			list = {
				"civ_male_pilot_2"
			}
		},
		friend = {
			path = "units/pd2_dlc_friend/characters/",
			list = {
				"ene_bolivian_thug_outdoor_01",
				"ene_bolivian_thug_outdoor_02",
				"ene_drug_lord_boss",
				"ene_security_manager",
				"ene_thug_indoor_01",
				"ene_thug_indoor_02"
			}
		},
		gitgud = {
			path = "units/pd2_dlc_gitgud/characters/",
			list = {
				"ene_zeal_bulldozer",
				"ene_zeal_bulldozer_2",
				"ene_zeal_bulldozer_3",
				"ene_zeal_cloaker",
				"ene_zeal_swat",
				"ene_zeal_swat_heavy",
				"ene_zeal_swat_shield",
				"ene_zeal_tazer"
			}
		},
		help = {
			path = "units/pd2_dlc_help/characters/",
			list = {
				"ene_zeal_bulldozer_halloween"
			}
		},
		spa = {
			path = "units/pd2_dlc_spa/characters/",
			list = {
				"ene_sniper_3",
				"npc_spa",
				"npc_spa_2",
				"npc_spa_3",
				"npc_gage"
			}
		},
		fish = {
			path = "units/pd2_dlc_lxy/characters/",
			list = {
				"civ_female_guest_gala_1",
				"civ_female_guest_gala_2",
				"civ_male_guest_gala_1",
				"civ_male_guest_gala_2",
				"civ_male_camera_crew_1"
			}
		},
		slu = {
			path = "units/pd2_dlc_slu/characters/",
			list = {
				"npc_vlad",
				"npc_sophia"
			}
		},
		run = {
			path = "units/pd2_dlc_run/characters/",
			list = {
				"npc_matt"
			}
		},
		rvd = {
			path = "units/pd2_dlc_rvd/characters/",
			list = {
				"npc_cop",
				"npc_cop_01",
				"npc_mr_brown",
				"npc_mr_pink",
				"npc_mr_orange",
				"npc_mr_blonde",
				"npc_mr_pink_escort",
				"ene_la_cop_1",
				"ene_la_cop_2",
				"ene_la_cop_3",
				"ene_la_cop_4",
				"ene_female_civ_undercover"
			}
		},
		drm = {
			path = "units/pd2_dlc_drm/characters/",
			list = {
				"ene_bulldozer_medic",
				"ene_bulldozer_minigun",
				"ene_bulldozer_minigun_classic",
				"ene_zeal_swat_heavy_sniper"
			}
		},
		dah = {
			path = "units/pd2_dlc_dah/characters/",
			list = {
				"npc_male_cfo",
				"npc_male_ralph"
			}
		},
		hvh = {
			path = "units/pd2_dlc_hvh/characters/",
			list = {
				"ene_cop_hvh_1",
				"ene_cop_hvh_2",
				"ene_cop_hvh_3",
				"ene_cop_hvh_4",
				"ene_swat_hvh_1",
				"ene_swat_hvh_2",
				"ene_fbi_hvh_1",
				"ene_fbi_hvh_2",
				"ene_fbi_hvh_3",
				"ene_spook_hvh_1",
				"ene_swat_heavy_hvh_1",
				"ene_swat_heavy_hvh_r870",
				"ene_tazer_hvh_1",
				"ene_shield_hvh_1",
				"ene_shield_hvh_2",
				"ene_medic_hvh_r870",
				"ene_medic_hvh_m4",
				"ene_bulldozer_hvh_1",
				"ene_bulldozer_hvh_2",
				"ene_bulldozer_hvh_3",
				"ene_fbi_swat_hvh_1",
				"ene_fbi_swat_hvh_2",
				"ene_fbi_heavy_hvh_1",
				"ene_fbi_heavy_hvh_r870",
				"ene_sniper_hvh_2"
			}
		},
		wwh = {
			path = "units/pd2_dlc_wwh/characters/",
			list = {
				"ene_female_crew",
				"ene_male_crew_01",
				"ene_male_crew_02",
				"ene_captain",
				"ene_locke"
			}
		},
		des = {
			path = "units/pd2_dlc_des/characters/",
			list = {
				"ene_murkywater_no_light_not_security",
				"ene_murkywater_not_security_1",
				"ene_murkywater_not_security_2",
				"ene_male_des",
				"civ_male_hazmat",
				"civ_male_des_scientist_01",
				"civ_male_des_scientist_02"
			}
		},
		tag = {
			path = "units/pd2_dlc_tag/characters/",
			list = {
				"ene_male_commissioner"
			}
		},
		nmh = {
			path = "units/pd2_dlc_nmh/characters/",
			list = {
				"civ_male_doctor_01",
				"civ_male_doctor_02",
				"civ_male_doctor_03",
				"civ_male_scrubs_01",
				"civ_male_scrubs_02",
				"civ_male_scrubs_03",
				"civ_male_scrubs_04",
				"civ_female_scrubs_01",
				"civ_female_scrubs_02",
				"civ_female_scrubs_03",
				"civ_female_scrubs_04",
				"civ_female_doctor_01",
				"civ_female_hotpants"
			}
		},
		sah = {
			path = "units/pd2_dlc_sah/characters/",
			list = {
				"civ_male_gala_guest_03",
				"civ_male_gala_guest_04",
				"civ_male_gala_guest_05",
				"civ_male_gala_guest_06",
				"civ_male_auctioneer",
				"civ_female_gala_guest_04",
				"civ_female_gala_guest_05",
				"civ_female_gala_guest_06",
				"civ_male_shacklethorn_waiter_01",
				"civ_male_shacklethorn_waiter_02",
				"civ_male_maintenance_01"
			}
		},
		skm = {
			path = "units/pd2_skirmish/characters/",
			list = {
				"civ_male_bank_manager_hostage",
				"civ_female_museum_curator_hostage",
				"civ_female_drug_lord_hostage",
				"civ_male_prisoner_hostage"
			}
		},
		bph = {
			path = "units/pd2_dlc_bph/characters/",
			list = {
				"civ_male_locke_escort",
				"civ_male_bain",
				"ene_male_bain",
				"ene_murkywater_medic",
				"ene_murkywater_medic_r870",
				"ene_murkywater_tazer",
				"ene_murkywater_cloaker",
				"ene_murkywater_bulldozer_1",
				"ene_murkywater_bulldozer_2",
				"ene_murkywater_bulldozer_3",
				"ene_murkywater_bulldozer_4",
				"ene_murkywater_bulldozer_medic",
				"ene_murkywater_shield",
				"ene_murkywater_sniper",
				"ene_murkywater_heavy",
				"ene_murkywater_heavy_shotgun",
				"ene_murkywater_heavy_g36",
				"ene_murkywater_light_city",
				"ene_murkywater_light_city_r870",
				"ene_murkywater_light_fbi_r870",
				"ene_murkywater_light_fbi",
				"ene_murkywater_light",
				"ene_murkywater_light_r870"
			}
		},
		vit = {
			path = "units/pd2_dlc_vit/characters/",
			list = {
				"ene_murkywater_secret_service"
			}
		},
		uno = {
			path = "units/pd2_dlc_uno/characters/",
			list = {
				"ene_shadow_cloaker_1",
				"ene_shadow_cloaker_2"
			}
		},
		mex = {
			path = "units/pd2_dlc_mex/characters/",
			list = {
				"ene_mex_security_guard",
				"ene_mex_security_guard_2",
				"ene_mex_security_guard_3",
				"ene_mex_thug_outdoor_01",
				"ene_mex_thug_outdoor_02",
				"ene_mex_thug_outdoor_03",
				"civ_male_italian"
			}
		},
		pex = {
			path = "units/pd2_dlc_pex/characters/",
			list = {
				"civ_male_prisoner_pex",
				"civ_male_prisoner_pex_bloody",
				"civ_male_janitor_pex_01",
				"civ_male_janitor_pex_02",
				"ene_male_office_cop_01",
				"ene_male_office_cop_02",
				"ene_male_office_cop_03",
				"ene_male_office_cop_04",
				"ene_female_office_cop_01",
				"npc_male_vladbroinlaw_pex",
				"npc_male_vladbroinlaw_pex_bloody",
				"npc_male_vladbroinlaw_cop_pex"
			}
		},
		bex = {
			path = "units/pd2_dlc_bex/characters/",
			list = {
				"ene_swat_policia_federale",
				"ene_swat_policia_federale_r870",
				"ene_swat_policia_federale_city",
				"ene_swat_policia_federale_city_r870",
				"ene_swat_policia_federale_city_fbi",
				"ene_swat_policia_federale_city_fbi_r870",
				"ene_swat_medic_policia_federale",
				"ene_swat_medic_policia_federale_r870",
				"ene_swat_cloaker_policia_federale",
				"ene_swat_policia_sniper",
				"ene_swat_shield_policia_federale_mp9",
				"ene_swat_shield_policia_federale_c45",
				"ene_swat_tazer_policia_federale",
				"ene_swat_heavy_policia_federale",
				"ene_swat_heavy_policia_federale_r870",
				"ene_swat_heavy_policia_federale_g36",
				"ene_swat_heavy_policia_federale_fbi",
				"ene_swat_heavy_policia_federale_fbi_r870",
				"ene_swat_heavy_policia_federale_fbi_g36",
				"ene_swat_dozer_medic_policia_federale",
				"ene_swat_dozer_policia_federale_r870",
				"ene_swat_dozer_policia_federale_saiga",
				"ene_swat_dozer_policia_federale_m249",
				"ene_swat_dozer_policia_federale_minigun",
				"ene_policia_01",
				"ene_policia_02",
				"ene_bex_security_01",
				"ene_bex_security_02",
				"ene_bex_security_03",
				"ene_bex_security_suit_01",
				"ene_bex_security_suit_02",
				"ene_bex_security_suit_03",
				"civ_male_it_guy",
				"civ_male_bex_bank_manager",
				"civ_male_bex_business",
				"civ_male_mariachi_01",
				"civ_male_mariachi_02",
				"civ_male_mariachi_03",
				"civ_male_mariachi_04"
			}
		},
		fex = {
			path = "units/pd2_dlc_fex/characters/",
			list = {
				"civ_female_masquerade_1",
				"civ_female_masquerade_2",
				"civ_female_masquerade_3",
				"civ_female_masquerade_4",
				"civ_male_masquerade_1",
				"civ_male_masquerade_2",
				"civ_male_masquerade_3",
				"civ_male_masquerade_4",
				"ene_guard_dog_mask",
				"ene_guard_dog_mask_no_pager",
				"ene_guard_jaguar_mask",
				"ene_guard_jaguar_mask_no_pager",
				"ene_guard_owl_mask",
				"ene_guard_owl_mask_no_pager",
				"ene_guard_serpent_mask",
				"ene_guard_serpent_mask_no_pager",
				"ene_thug_outdoor_fex",
				"ene_secret_service_fex"
			}
		},
		chas = {
			path = "units/pd2_dlc_chas/characters/",
			list = {
				"ene_male_triad_gang_1",
				"ene_male_triad_gang_2",
				"ene_male_triad_gang_3",
				"ene_male_triad_gang_4",
				"ene_male_triad_gang_5",
				"civ_male_asian_casual_1",
				"civ_male_asian_casual_2",
				"civ_male_asian_casual_3",
				"civ_female_asian_casual_1",
				"civ_female_asian_storekeeper",
				"civ_male_auctioneer_2"
			}
		}
	}

	return char_map
end

function CharacterTweakData:_init_drug_lord_boss_stealth(presets)
	self.drug_lord_boss_stealth = deep_clone(presets.base)
	self.drug_lord_boss_stealth.experience = {}
	self.drug_lord_boss_stealth.weapon = deep_clone(presets.weapon.good)
	self.drug_lord_boss_stealth.weapon.is_rifle = {
		aim_delay = {
			0.1,
			0.2
		},
		focus_delay = 4,
		focus_dis = 200,
		spread = 20,
		miss_dis = 40,
		RELOAD_SPEED = 1,
		melee_speed = 1,
		melee_dmg = 25,
		melee_retry_delay = {
			1,
			2
		},
		range = {
			optimal = 2500,
			far = 5000,
			close = 1000
		},
		autofire_rounds = {
			20,
			30
		},
		FALLOFF = {
			{
				dmg_mul = 3,
				r = 100,
				acc = {
					0.6,
					0.9
				},
				recoil = {
					0.4,
					0.7
				},
				mode = {
					0,
					0,
					0,
					1
				}
			},
			{
				dmg_mul = 3,
				r = 500,
				acc = {
					0.5,
					0.7
				},
				recoil = {
					0.4,
					0.7
				},
				mode = {
					0,
					1,
					2,
					8
				}
			},
			{
				dmg_mul = 1.5,
				r = 1000,
				acc = {
					0.4,
					0.6
				},
				recoil = {
					0.45,
					0.8
				},
				mode = {
					1,
					3,
					6,
					6
				}
			},
			{
				dmg_mul = 1,
				r = 2000,
				acc = {
					0.2,
					0.5
				},
				recoil = {
					0.45,
					0.8
				},
				mode = {
					1,
					2,
					2,
					1
				}
			},
			{
				dmg_mul = 1,
				r = 3000,
				acc = {
					0.1,
					0.35
				},
				recoil = {
					1,
					1.2
				},
				mode = {
					4,
					2,
					1,
					0
				}
			}
		}
	}
	self.drug_lord_boss_stealth.detection = presets.detection.normal
	self.drug_lord_boss_stealth.HEALTH_INIT = 10
	self.drug_lord_boss_stealth.headshot_dmg_mul = 2
	self.drug_lord_boss_stealth.damage.explosion_damage_mul = 1
	self.drug_lord_boss_stealth.move_speed = presets.move_speed.normal
	self.drug_lord_boss_stealth.allowed_poses = {
		stand = true
	}
	self.drug_lord_boss_stealth.no_retreat = true
	self.drug_lord_boss_stealth.no_arrest = true
	self.drug_lord_boss_stealth.surrender = nil
	self.drug_lord_boss_stealth.ecm_vulnerability = 0
	self.drug_lord_boss_stealth.ecm_hurts = {
		ears = {
			max_duration = 0,
			min_duration = 0
		}
	}
	self.drug_lord_boss_stealth.weapon_voice = "3"
	self.drug_lord_boss_stealth.experience.cable_tie = "tie_swat"
	self.drug_lord_boss_stealth.access = "gangster"
	self.drug_lord_boss_stealth.speech_prefix_p1 = "bb"
	self.drug_lord_boss_stealth.speech_prefix_p2 = "n"
	self.drug_lord_boss_stealth.speech_prefix_count = 1
	self.drug_lord_boss_stealth.rescue_hostages = false
	self.drug_lord_boss_stealth.silent_priority_shout = "f37"
	self.drug_lord_boss_stealth.melee_weapon = "fists"
	self.drug_lord_boss_stealth.melee_weapon_dmg_multiplier = 2.5
	self.drug_lord_boss_stealth.steal_loot = nil
	self.drug_lord_boss_stealth.calls_in = nil
	self.drug_lord_boss_stealth.chatter = presets.enemy_chatter.no_chatter
	self.drug_lord_boss_stealth.use_radio = nil
	self.drug_lord_boss_stealth.can_be_tased = false
	self.drug_lord_boss_stealth.DAMAGE_CLAMP_BULLET = 80
	self.drug_lord_boss_stealth.DAMAGE_CLAMP_EXPLOSION = 80
	self.drug_lord_boss_stealth.use_animation_on_fire_damage = false
	self.drug_lord_boss_stealth.flammable = true
	self.drug_lord_boss_stealth.can_be_tased = false
	self.drug_lord_boss_stealth.immune_to_knock_down = true
	self.drug_lord_boss_stealth.immune_to_concussion = true

	table.insert(self._enemy_list, "drug_lord_boss_stealth")
end