Hooks:PostHook(CarryTweakData, "init", "res_carry", function(self, tweak_data)

	-- Solo boon stuff
	local solo_boon = 1
	
	if Global.game_settings and Global.game_settings.single_player then
		if not restoration.Options:GetValue("OTHER/DisableSoloBoons") then
			solo_boon = 0.5
		end
	end

	-- Tweaking Bag Weights to be more consistent and less of a giant jump between tiers	
	self.weight_class = {
		light = 10 * solo_boon,
		medium = 20 * solo_boon,
		heavy = 35 * solo_boon,
		very_heavy = 50 * solo_boon,
		mega_heavy = 60 * solo_boon
	}
	
	-- Light (Jewelry, Coke) bags, no penalties and can still sprint just fine
	self.types.coke_light.move_speed_modifier = 0.95
	self.types.coke_light.jump_modifier = 0.95
	self.types.coke_light.can_run = true
	self.types.coke_light.throw_distance_multiplier = 1
	self.types.coke_light.weight = self.weight_class.light
	
	self.types.light.move_speed_modifier = 0.95
	self.types.light.jump_modifier = 0.95
	self.types.light.can_run = true
	self.types.light.throw_distance_multiplier = 1
	self.types.light.weight = self.weight_class.light
	
	-- Medium Bags (Cash bags, bodybags), slight penalties and you can't sprint anymore
	self.types.medium.move_speed_modifier = 0.8
	self.types.medium.jump_modifier = 0.8
	self.types.medium.can_run = false
	self.types.medium.throw_distance_multiplier = 0.85
	self.types.medium.weight = self.weight_class.medium
	
	self.types.being.move_speed_modifier = 0.8
	self.types.being.jump_modifier = 0.8
	self.types.being.can_run = false
	self.types.being.throw_distance_multiplier = 0.85
	self.types.being.weight = self.weight_class.medium
	
	self.types.explosives.move_speed_modifier = 0.8
	self.types.explosives.jump_modifier = 0.8
	self.types.explosives.can_run = false
	self.types.explosives.throw_distance_multiplier = 0.85
	self.types.explosives.weight = self.weight_class.medium
	
	self.types.cloaker_explosives.move_speed_modifier = 0.8
	self.types.cloaker_explosives.jump_modifier = 0.8
	self.types.cloaker_explosives.can_run = false
	self.types.cloaker_explosives.throw_distance_multiplier = 0.85
	self.types.cloaker_explosives.weight = self.weight_class.medium
	
	-- Heavy Bags, gold and such
	self.types.slightly_heavy.move_speed_modifier = 0.65
	self.types.slightly_heavy.jump_modifier = 0.65
	self.types.slightly_heavy.can_run = false
	self.types.slightly_heavy.throw_distance_multiplier = 0.7
	self.types.explosives.weight = self.weight_class.heavy

	self.types.heavy.move_speed_modifier = 0.65
	self.types.heavy.jump_modifier = 0.65
	self.types.heavy.can_run = false
	self.types.heavy.throw_distance_multiplier = 0.7
	self.types.heavy.weight = self.weight_class.heavy
	
	-- Very Heavy Bags (Safes)
	self.types.slightly_very_heavy.move_speed_modifier = 0.5
	self.types.slightly_very_heavy.jump_modifier = 0.5
	self.types.slightly_very_heavy.can_run = false
	self.types.slightly_very_heavy.throw_distance_multiplier = 0.55
	self.types.slightly_very_heavy.weight = self.weight_class.very_heavy
	
	self.types.very_heavy.move_speed_modifier = 0.5
	self.types.very_heavy.jump_modifier = 0.5
	self.types.very_heavy.can_run = false
	self.types.very_heavy.throw_distance_multiplier = 0.55
	self.types.very_heavy.weight = self.weight_class.very_heavy
	
	-- Mega Heavy, Ancient babylonian crap
	self.types.mega_heavy.move_speed_modifier = 0.35
	self.types.mega_heavy.jump_modifier = 0.35
	self.types.mega_heavy.can_run = false
	self.types.mega_heavy.throw_distance_multiplier = 0.4	
	self.types.mega_heavy.weight = self.weight_class.mega_heavy
	
	-- Light bags that poof
	self.types.cloaker_explosives_light = deep_clone(self.types.coke_light)
	self.types.cloaker_explosives_light.can_poof = true	
	
	-- Cloaker Cocaine
	self.cloaker_cocaine = {
		type = "cloaker_explosives_light",
		name_id = "hud_carry_cloaker_cocaine",
		bag_value = "cloaker_cocaine",
		unit = "units/pd2_dlc_help/pickups/gen_pku_spooky_bag/gen_pku_spooky_bag",
		visual_unit_name = "units/pd2_dlc_help/characters/npc_acc_spooky_bag/npc_acc_spooky_bag",
		AI_carry = {
			SO_category = "enemies"
		}
	}	
	-- made Train Heist ammo explode on huge impact again :')
	-- Disabled due to stack overflow crash
	--[[
	self.ammo = {
		type = "explosives",
		name_id = "hud_carry_ammo",
		bag_value = "shells",
		unit = "units/pd2_dlc1/pickups/gen_pku_explosivesbag/gen_pku_explosivesbag",
		visual_unit_name = "units/payday2/characters/npc_acc_explosives_bag_1/npc_acc_explosives_bag_1",
		AI_carry = {
			SO_category = "enemies"
		}
	}
	--]]
	-- Overriding so cops won't try to snatch up the goats
	-- also made them light because I fucking hate this heist
	self.goat.AI_carry = nil
	self.goat.type = "light"

	-- Ditto
	self.nail_muriatic_acid.AI_carry = nil
	self.nail_caustic_soda.AI_carry = nil
	self.nail_hydrogen_chloride.AI_carry = nil
	self.nail_euphadrine_pills.AI_carry = nil
	
	-- CG22 event stuff
	self.types.cg22_light = deep_clone(self.types.light)	
	self.types.cg22_heavy = deep_clone(self.types.heavy)		
		
end)

Hooks:PostHook(CarryTweakData, "init", "UniqueLootbagTextures_CarryTweakData_init", function(self, tweak_data)

	--Money, Counterfeit Money, and Gold
	self.money.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_money" --money
	self.counterfeit_money.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_cmoney" --counterfeit money
	self.gold.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_gold" --gold
	
	--Every Type of Narcotic ("Bag Full of Drugs")
	self.coke.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_coke" --Coke from all coke levels
	self.meth.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_meth" --Meth from all meth levels
	self.meth_half.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_meth" --Meth from Lab Rats
	self.yayo.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_yayo" --Yayo from Scarface Mansion
	self.coke_pure.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_cokeP" --Pure Cocaine from White XMAS
	
	--Jewelry Store
	self.diamonds.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_precious" --jewelry
	
	--San Martin Bank
	self.faberge_egg.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_martin" --the egg
	self.treasure.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_martin" --the romanov treasure
	
	--Red Garnet Group
	self.red_diamond.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_garnet" --the Red Diamond from Diamond Heist
	self.diamonds_dah.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_garnet" --All Diamonds from several heists
	self.rubies.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_garnet" --The rubies from Diamond Heist
	
	
	--All gun bags use GAGE'S ARMORY
	self.weapon.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_weapons"
	self.weapons.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_weapons"
	self.weapon_scar.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_weapons"
	self.weapon_glock.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_weapons"
	self.grenades.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_weapons"
	
	--Stealing XMAS
	self.women_shoes.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_shoes" --High Heels
	self.vr_headset.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_vr" --vr headset
	self.diamond_necklace.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_necklace" --necklace
	self.robot_toy.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_toy" --Tin Boy Toy
	self.expensive_vine.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_snobhq" --Expensive Wine
	self.ordinary_wine.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_snob" --Ordinary Wine
	
	--Train Heist
	self.turret.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_turret" --Turret Part
	self.ammo.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_turret_ammo" --Shells
	
	--BIKER HEIST
	self.bike_part_light.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_biker" --bike parts Day 1
	self.bike_part_heavy.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_biker" --bike parts Day 1
	self.drone_control_helmet.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_bci" --BCI helmet Day 2
	
	--Golden Grin 
	self.winch_part.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_winch"    --These are..
	self.winch_part_2.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_winch" --The winch parts that pull..
	self.winch_part_3.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_winch" --the BFD down as well as the vault on Brooklyn Bank sometimes.
	self.watertank_empty.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_water" --watertank empty
	self.watertank_full.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_water" --watertank full
	self.fireworks.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_fireworks" --Fireworks
	self.fireworks.unique_bump_normal = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_nm_fireworks" --Custom normalmap for fireworks
	
	--Border Crossing
	self.roman_armor.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_rome" --Roman Armor
	self.roman_armor.unique_self_illumination = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_il_rome" -- Roman Armor Illumination
	
	--_______________________________________________________________________________________________________________________________________________
	--All types of Server Loot
	self.master_server.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_it"            --Firestarter Day 2
	
	self.mad_master_server_value_1.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_it" --All of these mad ones
	self.mad_master_server_value_2.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_it" --are for Boiling Point
	self.mad_master_server_value_3.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_it" --With different values based 
	self.mad_master_server_value_4.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_it" --on how many bodies you scanned
	
	self.circuit.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_it"                   --Regular Server on Shadow Raid
	--_______________________________________________________________________________________________________________________________________________
	
	--Big Oil Engines
	self.engine_01.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_e1"
	self.engine_02.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_e2"
	self.engine_03.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_e3"
	self.engine_04.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_e4"
	self.engine_05.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_e5"
	self.engine_06.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_e6"
	self.engine_07.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_e7"
	self.engine_08.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_e8"
	self.engine_09.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_e9"
	self.engine_10.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_e10"
	self.engine_11.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_e11"
	self.engine_12.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_e12"
	
	--Meltdown Warheads
	self.warhead.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_vnuke" --texture
	self.warhead.unique_self_illumination = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_il_vnuke" --illumination
	
	--Hoxton Breakout
	self.evidence_bag.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_evidence" --evidence bag
	
	--Shadow Raid
	self.artifact_statue.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_fuckyou" --The Artifact Statue
	self.samurai_suit.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_samurai" -- The Samurai Suit
	
	--Shacklethorne, The Diamond, and Art Gallery
	self.mus_artifact.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_mus" --Artifact used in Shacklethorne & The Diamond
	
	--Panic Room
	self.toothbrush.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_toothbrush" --Toothbrush

	--Henry's Rock
	self.battery.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_bat" --Batteries for the laser

	--Bomb Heist Forest
	self.ladder_bag.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_lad" --Ladder bag

	--Framing Frame Day 3
	self.old_wine.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_snobv" --Fancy Win

	--Cage Bag for GO Bank and Goat Sim
	self.cage_bag.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_cage" --Cage Parts

	--Pig from Slaughterhouse
	self.din_pig.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_pig" --Pig loot

	--Cocaine from Santa's Workshop
	self.present.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_present" --Gift from Santa
	self.sandwich.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_toast" --Almir's Toast

	--Lab Rats
	self.nail_muriatic_acid.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_muriatic" --Muriatic Acid
	self.nail_caustic_soda.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_caustic" --Caustic Soda
	self.nail_hydrogen_chloride.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_hcl" --Hydrogine Chloride
	self.nail_euphadrine_pills.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_pills" --Euphadrine Pills

	--The Bomb: Forest and Dockyard
	self.cro_loot1.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_bombfd"
	self.cro_loot2.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_bombfd"

	--Murky Station
	self.drk_bomb_part.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_mrkbomb"

	--Beneath the Mountain
	self.prototype.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_prototype"
	self.breaching_charges.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_charge"
	self.lost_artifact.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_LostA"

	--The Diamond 
	self.hope_diamond.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_thediamond"

	--Secret Stuff
	self.black_tablet.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_tablet" -- Texture for the Black Tablet
	self.black_tablet.unique_self_illumination = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_il_tablet" -- illumination texture for the Black Tablet
	self.unknown.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_dentist" -- Dentist
	self.box_unknown.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_vlad" -- Vlad
	self.box_unknown_tag.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_elephant" -- Elephant
	self.uno_gold.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_MayanG" -- Mayan Gold Texture

	-- NEW STUFF 2022
	self.hydraulic_opener.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_DBreaker" --Door Breaker from Breakfast in Tijuana
	self.chas_artifact.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_dragon" -- Dragon Statue from Dragon Heist
	self.chas_teaset.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_TeaSet" -- Tea Set from Dragon Heist
	self.gnome.unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_gnome" -- Gnome from Mountain Master
	
	--Thermal Drill and Beast Drill
	self.lance_bag.unique_diffuse = "units/payday2/pickups/gen_pku_toolbag/gen_pku_toolbag_df_lance" --Banks Thermal Drill
	self.chl_puck.unique_diffuse = "units/payday2/pickups/gen_pku_toolbag/gen_pku_toolbag_df_lance" --Train Heist Thermal Drill
	self.lance_bag_large.unique_diffuse = "units/payday2/pickups/gen_pku_toolbag_large/gen_pku_toolbag_large_df_beast" --The BEAST drill
	--IF YOU ALSO DON'T WANT IT TO SAY "PRESS E TO GRAB THE THERMAL LANCE" Just delete the localizationmanager.lua and delete the hook for it in main.xml

	self.lance_bag.apply_textures_to_static = true
	self.lance_bag.level_specific = {
		pbr = { unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_charge" },
		mex = { unique_diffuse = "units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag_df_charge" }

	}
end)