local free = true

Hooks:PostHook(SkillTreeTweakData, "init", "hook_post_skill_init", function(self)
	self:add_custom_deck(self)
end)

function SkillTreeTweakData:add_custom_deck(self)
	local deck2 = {
		cost = 300,
		desc_id = "menu_deckall_2_desc",
		name_id = "menu_deckall_2",
		upgrades = {
			"weapon_passive_headshot_damage_multiplier"
		},
		icon_xy = {
			1,
			0
		}
	}
	local deck4 = {
		cost = 600,
		desc_id = "menu_deckall_4_desc",
		name_id = "menu_deckall_4",
		upgrades = {
			"passive_player_xp_multiplier",
			"player_passive_suspicion_bonus",
			"player_passive_armor_movement_penalty_multiplier"
		},
		icon_xy = {
			3,
			0
		}
	}
	local deck6 = {
		cost = 1600,
		desc_id = "menu_deckall_6_desc",
		name_id = "menu_deckall_6",
		upgrades = {
			"armor_kit",
			"player_pick_up_ammo_multiplier"
		},
		icon_xy = {
			5,
			0
		}
	}
	local deck8 = {
		cost = 3200,
		desc_id = "menu_deckall_8_desc",
		name_id = "menu_deckall_8",
		upgrades = {
			"weapon_passive_damage_multiplier",
			"passive_doctor_bag_interaction_speed_multiplier"
		},
		icon_xy = {
			7,
			0
		}
	}

	local custom_deck = {
		{
				cost = 200,
				desc_id = "menu_deck_adaptive_1_desc",
				short_id = "menu_deck_adaptive_1_short",
				name_id = "menu_deck_adaptive_1",
				upgrades = {
					"adaptive_plate",
					"adaptive_plate_base",
					"temporary_adaptive_plate_stage_0"
				},
				icon_xy = {
					6,
					0
				}
			},
			deck2,
			{
				cost = 400,
				desc_id = "menu_deck_adaptive_3_desc",
				short_id = "menu_deck_adaptive_3_short",
				name_id = "menu_deck_adaptive_3",
				upgrades = {
					"player_tier_armor_multiplier_1",
					"player_tier_armor_multiplier_2"
				},
				icon_xy = {
					5,
					1
				}
			},
			deck4,
			{
				cost = 1000,
				desc_id = "menu_deck_adaptive_5_desc",
				short_id = "menu_deck_adaptive_5_short",
				name_id = "menu_deck_adaptive_5",
				upgrades = {
					"player_adaptive_plate_multiplier_1",
					"temporary_adaptive_plate_stage_1",
					"temporary_adaptive_plate_stage_2",
					"temporary_adaptive_plate_stage_3",
					"temporary_adaptive_plate_stage_4"
				},
				icon_xy = {
					7,
					1
				}
			},
			deck6,
			{
				cost = 2400,
				desc_id = "menu_deck_adaptive_7_desc",
				short_id = "menu_deck_adaptive_7_short",
				name_id = "menu_deck_adaptive_7",
				upgrades = {
					"player_tier_armor_multiplier_3",
					"player_tier_armor_multiplier_4"
				},
				icon_xy = {
					6,
					1
				}
			},
			deck8,
			{
				cost = 4000,
				desc_id = "menu_deck_adaptive_9_desc",
				short_id = "menu_deck_adaptive_9_short",
				name_id = "menu_deck_adaptive_9",
				upgrades = {
					"player_passive_always_regen_armor_1",
					"player_tier_armor_multiplier_5",
					"player_tier_armor_multiplier_6",
					"player_passive_loot_drop_multiplier"
				},
				icon_xy = {
					0,
					2
				}
			},
			name_id = "menu_st_spec_adaptive",
			desc_id = "menu_st_spec_adaptive_desc",
			category = "offensive"
	}
	
	if free then
		for k,v in pairs(custom_deck) do
			if v.cost then
				v.cost = 0
			end
		end
	end
	
	table.insert(self.specializations, custom_deck)
end

Hooks:Add("LocalizationManagerPostInit", "custom_deck_addlocalization", function( loc )
	
--		the 'generic' perkdeck cards ("menu_deckall_2_desc" etc) have a macro localization issue when referenced directly
--		so we need to fix it for our deck here and substitute the macro keys with the proper values
--		if a mod has edited the values, that will be a problem, however

	local adjusted_description_2 = loc:text("menu_deckall_2_desc")
	adjusted_description_2 = string.gsub(adjusted_description_2,"$multiperk;","15%%")
	local adjusted_description_4 = loc:text("menu_deckall_4_desc")
	adjusted_description_4 = string.gsub(adjusted_description_4,"$multiperk;","+1")
	adjusted_description_4 = string.gsub(adjusted_description_4,"$multiperk2;","25%%")
	adjusted_description_4 = string.gsub(adjusted_description_4,"$multiperk3;","45%%")
	local adjusted_description_6 = loc:text("menu_deckall_6_desc")
	adjusted_description_6 = string.gsub(adjusted_description_6,"$multiperk;","135%%")
	local adjusted_description_8 = loc:text("menu_deckall_8_desc")
	adjusted_description_8 = string.gsub(adjusted_description_8,"$multiperk;","5%%")
	adjusted_description_8 = string.gsub(adjusted_description_8,"$multiperk2;","20%%")
	
	loc:add_localized_strings({
		menu_deckall_2_desc = adjusted_description_2,
		menu_deckall_4_desc = adjusted_description_4,
		menu_deckall_6_desc = adjusted_description_6,
		menu_deckall_8_desc = adjusted_description_8 
	})
end)