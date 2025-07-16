--Stolen directly from ResMod

--ATTACHMENT PRESETS
local sight_1_5x_offset = {
	sights = {
		"wpn_fps_upg_o_eotech",
		"wpn_fps_upg_o_eotech_xps",
		"wpn_fps_upg_o_uh",
		"wpn_fps_upg_o_fc1"
	},
	offset = Vector3(0,-8,0),
	exclude = {
		""
		--"wpn_fps_snp_mosin"
	}
}

local sight_atibal_offset = {
	sights = {
		"wpn_fps_upg_o_atibal"
	},
	offset = Vector3(0.005, 0, -0.8),
	exclude = { "" }
}

local sight_atibal_rds_offset = {
	sights = {
		"wpn_fps_upg_o_atibal"
	},
	offset = Vector3(-0.12, -14, -5.2),
	exclude = { "" }
}

local sight_hamr_rds_offset = {
	sights = {
		"wpn_fps_upg_o_hamr_reddot"
	},
	offset = Vector3(0, -14, -3.3),
	exclude = { "" }
}

local barrels = {
	--Short Barrel
	--barrels.short_b1_stats
		short_b1_stats = {
			value = 2,
			spread = -2,
			concealment = 1,
			falloff_start_mult = 0.925,
			falloff_end_mult = 0.925,
			ads_speed_mult = 0.975
		},
	--Shorter Barrel
	--barrels.short_b2_stats
		short_b2_stats = {
			value = 2,
			spread = -4,
			concealment = 2,
			falloff_start_mult = 0.85,
			falloff_end_mult = 0.85,
			ads_speed_mult = 0.95
		},
	--Shortest Barrel
	--barrels.short_b3_stats
		short_b3_stats = {
			value = 2,
			spread = -6,
			concealment = 3,
			falloff_start_mult = 0.775,
			falloff_end_mult = 0.775,
			ads_speed_mult = 0.925
		},

	--Long Barrel
	--barrels.long_b1_stats
		long_b1_stats = {
			value = 2,
			spread = 1,
			concealment = -1,
			falloff_start_mult = 1.075,
			falloff_end_mult = 1.075,
			ads_speed_mult = 1.025
		},
	--Longer Barrel
	--barrels.long_b2_stats
		long_b2_stats = {
			value = 4,
			spread = 2,
			concealment = -2,
			falloff_start_mult = 1.15,
			falloff_end_mult = 1.15,
			ads_speed_mult = 1.05
		},
	--Longest Barrel
	--barrels.long_b3_stats
		long_b3_stats = {
			value = 6,
			spread = 3,
			concealment = -3,
			falloff_start_mult = 1.225,
			falloff_end_mult = 1.225,
			ads_speed_mult = 1.075
		}
}

--Stocks
--PRIMARILY FOR GUNS THAT ARE COMPATIBLE WITH AR-15 STOCKS
local stocks = {
	--DEFAULT RETRACTABLE/UNDERFOLDER/WIRE STOCK/STOCK WITH SUPER SHIT CHEEKWELD
		--Retract > Thumbhole Stock -----Con ++Acc +++Stab
			--stocks.nocheeks_to_thumb_stats
			nocheeks_to_thumb_stats = {
				value = 7,
				spread = 3,
				recoil = 8,
				concealment = -7,
				ads_speed_mult = 1.175
			},
		--Retract > Fixed Stock ----Con ++Acc ++Stab
			--stocks.nocheeks_to_fixed_acc2_rec2_stats
			nocheeks_to_fixed_acc2_rec2_stats = {
				value = 6,
				spread = 2,
				recoil = 4,
				concealment = -4,
				ads_speed_mult = 1.1
			},
		--Retract > Fixed Stock ----Con +Acc +++Stab
			--stocks.nocheeks_to_fixed_rec3_stats
			nocheeks_to_fixed_rec3_stats = {
				value = 6,
				spread = 1,
				recoil = 6,
				concealment = -4,
				ads_speed_mult = 1.1
			},
		--Retract > Heavy Adjustable Stock ---Con ++Acc +Stab
			nocheeks_to_hvy_acc2_rec1_stats = {
				value = 5,
				recoil = 2,
				spread = 2,
				concealment = -3,
				ads_speed_mult = 1.075
			},
		--Retract > Heavy Adjustable Stock ---Con +Acc ++Stab
			nocheeks_to_hvy_acc1_rec2_stats = {
				value = 5,
				recoil = 4,
				spread = 1,
				concealment = -3,
				ads_speed_mult = 1.075
			},
		--Retract > Adjustable Stock --Con ++Acc
			--stocks.nocheeks_to_adj_acc_stats
			nocheeks_to_adj_acc_stats = {
				value = 4,
				spread = 2,
				concealment = -2,
				ads_speed_mult = 1.05
			},
		--Retract > Adjustable Stock --Con +Acc +Stab
			--stocks.nocheeks_to_adj_dual_stats
			nocheeks_to_adj_dual_stats = {
				value = 4,
				spread = 1,
				recoil = 2,
				concealment = -2,
				ads_speed_mult = 1.05
			},
		--Retract > Adjustable Stock --Con ++Stab
			--stocks.nocheeks_to_adj_rec_stats
			nocheeks_to_adj_rec_stats = {
				value = 4,
				recoil = 4,
				concealment = -2,
				ads_speed_mult = 1.05
			},
		--Retract > SideFolder -Con +Acc
			--stocks.nocheeks_to_folder_stats
			nocheeks_to_folder_stats = {
				value = 4,
				recoil = 2,
				concealment = -1,
				ads_speed_mult = 1.025
			},
		--Retract > Retracted/Folded Stock +Con -Stab
			--stocks.fold_nocheeks_stats
			fold_nocheeks_stats = {
				value = 0,
				recoil = -2,
				concealment = 1,
				ads_speed_mult = 0.975
			},
		--Retract > No Stock +++Con ---Stab
			--stocks.remove_nocheeks_stats
			remove_nocheeks_stats = {
				value = 3,
				recoil = -6,
				concealment = 3,
				ads_speed_mult = 0.925
			},

	--DEFAULT SIDEFOLDER STOCK
		--Folder > Thumbhole Stock ----Con +Acc ++++Stab
			--stocks.folder_to_thumb_stats
			folder_to_thumb_stats = {
				value = 7,
				spread = 2,
				recoil = 8,
				concealment = -6,
				ads_speed_mult = 1.15
			},
		--Folder > Fixed Stock ---Con +Acc ++Stab
			--stocks.folder_to_fixed_acc1_rec2_stats
			folder_to_fixed_acc1_rec2_stats = {
				value = 6,
				spread = 1,
				recoil = 4,
				concealment = -3,
				ads_speed_mult = 1.075
			},
		--Folder > Fixed Stock ---Con +++Stab
			--stocks.folder_to_fixed_rec3_stats
			folder_to_fixed_rec3_stats = {
				value = 6,
				recoil = 6,
				concealment = -3,
				ads_speed_mult = 1.075
			},
		--Folder > Heavy Adjustable Stock --Con ++Acc
			folder_to_hvy_acc2_stats = {
				value = 5,
				spread = 2,
				recoil = 0,
				concealment = -2,
				ads_speed_mult = 1.05
			},	
		--Folder > Heavy Adjustable Stock --Con ++Stab
			folder_to_hvy_rec2_stats = {
				value = 5,
				spread = 0,
				recoil = 4,
				concealment = -2,
				ads_speed_mult = 1.05
			},	
		--Folder > Adjustable Stock -Con -Stab ++Acc
			folder_to_adj_acc2_stats = {
				value = 4,
				spread = 2,
				recoil = -2,
				concealment = -1,
				ads_speed_mult = 1.025
			},	
		--Folder > Adjustable Stock -Con +Acc
			folder_to_adj_acc1_stats = {
				value = 4,
				spread = 1,
				concealment = -1,
				ads_speed_mult = 1.025
			},
		--Folder > Adjustable Stock -Con +Stab
			folder_to_adj_rec_stats = {
				value = 4,
				recoil = 2,
				concealment = -1,
				ads_speed_mult = 1.025
			},
		--Folder +Stab -Acc
			--stocks.folder_rec_stats
			folder_rec_stats = {
				value = 3,
				recoil = 2,
				spread = -1
			},
		--Folder +Acc -Stab
			--stocks.folder_acc_stats
			folder_acc_stats = {
				value = 3,
				recoil = -2,
				spread = 1
			},
		--Folder > Retractable/Underfolder/Wire +Con -Stab
			--stocks.folder_to_nocheeks_stats
			folder_to_nocheeks_stats = {
				value = 4,
				recoil = -2,
				concealment = 1,
				ads_speed_mult = 0.975
			},
		--Folder > Folded Stock ++Con
			--stocks.fold_folder_stats
			fold_folder_stats = {
				value = 0,
				recoil = -4,
				concealment = 2,
				ads_speed_mult = 0.95
			},
		--Folder > No Stock +++Con
			--stocks.remove_folder_stats
			remove_folder_stats = {
				value = 5,
				recoil = -8,
				concealment = 4,
				ads_speed_mult = 0.9
			},
	
	--DEFAULT ADJUSTABLE STOCK (DEFAULT M4)
		--Adjustable > Thumbhole ---Con ++Stab +Acc
			adj_to_to_thumb_stats = {
				value = 7,
				spread = 2,
				recoil = 6,
				concealment = -5,
				ads_speed_mult = 1.125
			},
		--Adjustable > Fixed --Con ++Stab
			adj_to_fixed_acc_stats = {
				value = 5,
				spread = 1,
				recoil = 2,
				concealment = -2,
				ads_speed_mult = 1.05
			},
		--Adjustable > Fixed --Con ++Stab
			adj_to_fixed_rec_stats = {
				value = 5,
				recoil = 4,
				concealment = -2,
				ads_speed_mult = 1.05
			},
		--Adjustable > Heavy Adjustable -Con +Acc
			--stocks.adj_hvy_acc_stats
			adj_hvy_acc_stats = {
				value = 4,
				spread = 1,
				concealment = -1,
				ads_speed_mult = 1.025
			},
		--Adjustable > Heavy Adjustable -Con +Stab
			--stocks.adj_hvy_rec_stats
			adj_hvy_rec_stats = {
				value = 4,
				recoil = 2,
				concealment = -1,
				ads_speed_mult = 1.025
			},
		--Adjustable +Stab -Acc
			--stocks.adj_rec_stats
			adj_rec_stats = {
				value = 3,
				recoil = 2,
				spread = -1
			},
		--Adjustable +Acc -Stab
			--stocks.adj_acc_stats
			adj_acc_stats = {
				value = 3,
				recoil = -2,
				spread = 1
			},
		--Adjustable > Folder +Con -Stab
			adj_to_fold_stats = {
				value = 4,
				recoil = -2,
				concealment = 1,
				ads_speed_mult = 0.975
			},
		--Adjustable > Retractable/Underfolder/Wire ++Con -Acc -Stab
			--stocks.adj_to_nocheeks_stats
			adj_to_nocheeks_stats = {
				value = 4,
				spread = -1,
				recoil = -2,
				concealment = 2,
				ads_speed_mult = 0.95
			},
		--Adjustable > Folded/Retracted +++Con -Acc --Stab
			adj_to_folded_stats = {
				value = 4,
				spread = -1,
				recoil = -4,
				concealment = 3,
				ads_speed_mult = 0.925
			},
		--Adjustable > No Stock ++++Con --Acc --Stab
			remove_adj_stats = {
				value = 4,
				spread = -1,
				recoil = -8,
				concealment = 5,
				ads_speed_mult = 0.875
			},

	--DEFAULT FIXED STOCK (SELF EXPLANATORY)
		--Fixed > Thumbhole --Con +Acc +Stab
			--stocks.fixed_to_thumbhole_stats
			fixed_to_thumbhole_stats = {
				value = 6,
				spread = 1,
				recoil = 4,
				concealment = -3,
				ads_speed_mult = 1.075
			},
		--Fixed +Stab -Acc
			fixed_rec_stats = {
				value = 4,
				spread = -1,
				recoil = 2
			},
		--Fixed +Acc -Stab
			fixed_acc_stats = {
				value = 4,
				spread = 1,
				recoil = -2
			},
		--Fixed > Heavy Adjustable +Con -Acc
			fixed_to_hvy_acc_stats = {
				value = 4,
				spread = -1,
				concealment = 1,
				ads_speed_mult = 0.975
			},
		--Fixed > Heavy Adjustable +Con -Stab
			fixed_to_hvy_rec_stats = {
				value = 4,
				recoil = -2,
				concealment = 1,
				ads_speed_mult = 0.975
			},
		--Fixed > Adjustable ++Con --Stab
			fixed_to_adj_acc_stats = {
				value = 3,
				recoil = -4,
				concealment = 2,
				ads_speed_mult = 0.95
			},
		--Fixed > Adjustable ++Con --Acc
			fixed_to_adj_rec_stats = {
				value = 3,
				spread = -2,
				concealment = 2,
				ads_speed_mult = 0.95
			},
		--Fixed > Adjustable ++Con -Acc -Stab
			fixed_to_adj_dual_stats = {
				value = 3,
				spread = -1,
				recoil = -2,
				concealment = 2,
				ads_speed_mult = 0.95
			},
		--Fixed > Sidefolder +++Con ---Stab
			--stocks.fixed_to_folder_stats
			fixed_to_folder_stats = {
				value = 4,
				spread = -1,
				recoil = -4,
				concealment = 3,
				ads_speed_mult = 0.925
			},
		--Fixed > Retractable/Underfolder/Wire ++++Con -Acc ---Stab
			--stocks.fixed_to_nocheeks_stats
			fixed_to_nocheeks_stats = {
				value = 4,
				spread = -1,
				recoil = -6,
				concealment = 4,
				ads_speed_mult = 0.9
			},
		--Fixed > Folded/Retracted +++++Con -Acc ----Stab
			--stocks.fixed_to_folded_stats
			fixed_to_folded_stats = {
				value = 4,
				spread = -1,
				recoil = -8,
				concealment = 5,
				ads_speed_mult = 0.875
			},
		--Fixed > No stock ++++++Con -Acc ------Stab
			--stocks.remove_fixed_stats
			remove_fixed_stats = {
				value = 5,
				spread = -1,
				recoil = -12,
				concealment = 7,
				ads_speed_mult = 0.825
			},

	--DEFAULT FOLDED/COLLAPSED STOCK
		--Folded > Fixed Stock -----Con ++Acc +++Stab
			--stocks.folded_to_thumb
			folded_to_thumb = {
				value = 7,
				spread = 3,
				recoil = 10,
				concealment = -8,
				ads_speed_mult = 1.125
			},
		--Folded > Fixed Stock -----Con ++Acc +++Stab
			--stocks.folded_to_fixed_stats
			folded_to_fixed_stats = {
				value = 7,
				spread = 2,
				recoil = 6,
				concealment = -5,
				ads_speed_mult = 1.125
			},
		--Folded > Heavy Adjustable ----Con +++Acc +Stab
			--stocks.folded_to_hvy_rec2
			folded_to_hvy_rec2 = {
				value = 5,
				recoil = 2,
				spread = 3,
				concealment = -4,
				ads_speed_mult = 1.1
			},
		--Folded > Heavy Adjustable ----Con ++Acc ++Stab
			--stocks.folded_to_hvy_rec3
			folded_to_hvy_rec3 = {
				value = 5,
				recoil = 4,
				spread = 2,
				concealment = -4,
				ads_speed_mult = 1.1
			},
		--Folded > Adjustable ---Con +++Acc
			--stocks.folded_to_adj_rec1
			folded_to_adj_rec1 = {
				value = 4,
				spread = 3,
				recoil = 0,
				concealment = -3,
				ads_speed_mult = 1.075
			},
		--Folded > Adjustable ---Con ++Acc +Stab
			--stocks.folded_to_adj_rec2
			folded_to_adj_rec2 = {
				value = 4,
				spread = 2,
				recoil = 2,
				concealment = -3,
				ads_speed_mult = 1.075
			},
		--Folded > Adjustable ---Con +Acc ++Stab
			--stocks.folded_to_adj_rec3
			folded_to_adj_rec3 = {
				value = 4,
				spread = 1,
				recoil = 4,
				concealment = -3,
				ads_speed_mult = 1.075
			},
		--Folded > Unfolded --Con ++Stab
			--stocks.unfold_folded_stats
			unfold_folded_stats = {
				value = 3,
				recoil = 4,
				concealment = -2,
				ads_speed_mult = 1.05
			},
		--Folded > Uncollapsed -Con +Stab
			--stocks.unfold_nocheeks_stats
			unfold_nocheeks_stats = {
				value = 2,
				recoil = 2,
				concealment = -1,
				ads_speed_mult = 1.025
			},
		--Folded > No Stock ++Con --Stab
			--stocks.remove_folded_stats
			remove_folded_stats = {
				value = 1,
				recoil = -4,
				concealment = 2,
				ads_speed_mult = 0.95
			},

	--DEFAULT NO STOCK
		--No Stock > Fixed ------Con ++Acc ++++Stab
			add_fixed_rec_stats = {
				value = 7,
				spread = 2,
				recoil = 10,
				concealment = -7,
				ads_speed_mult = 1.175
			},
		--No Stock > Fixed ------Con +++Acc +++Stab
			add_fixed_stats = {
				value = 7,
				spread = 3,
				recoil = 8,
				concealment = -7,
				ads_speed_mult = 1.175
			},
		--No Stock > Heavy Adjustable -----Con ++Acc +++Stab
			add_hvy_rec_stats = {
				value = 5,
				spread = 2,
				recoil = 8,
				concealment = -6,
				ads_speed_mult = 1.15
			},
		--No Stock > Heavy Adjustable -----Con +++Acc ++Stab
			add_hvy_acc_stats = {
				value = 5,
				spread = 3,
				recoil = 6,
				concealment = -6,
				ads_speed_mult = 1.15
			},
		--No Stock > Adjustable ----Con +++Acc +Stab
			add_adj_acc3_stats = {
				value = 5,
				spread = 3,
				recoil = 4,
				concealment = -5,
				ads_speed_mult = 1.125
			},
		--No Stock > Adjustable ----Con ++Acc ++Stab
			add_adj_acc2_stats = {
				value = 5,
				spread = 2,
				recoil = 6,
				concealment = -5,
				ads_speed_mult = 1.125
			},
		--No Stock > Adjustable ----Con +Acc +++Stab
			add_adj_stats = {
				value = 5,
				spread = 1,
				recoil = 8,
				concealment = -5,
				ads_speed_mult = 1.125
			},
		--No Stock > Folder ----Con ++++Stab
		--stocks.add_folder_stats
			add_folder_stats = {
				value = 4,
				recoil = 8,
				concealment = -4,
				ads_speed_mult = 1.1
			},
		--No Stock > Retractable/Wire
		--stocks.add_nocheeks_stats ---Con +++Stab
			add_nocheeks_stats = {
				value = 2,
				recoil = 6,
				concealment = -3,
				ads_speed_mult = 1.075
			},
		--No Stock > Folded
		--stocks.add_folded_stats --Con ++Stab
			add_folded_stats = {
				value = 2,
				recoil = 4,
				concealment = -2,
				ads_speed_mult = 1.05
			}
}

--Muzzle device stats
local muzzle_device = {
	-- +Con -Acc/Range 
		muzzle_a_stats = {
			value = 3,
			spread = -1,
			concealment = 1
		},
		supp_a_stats = {
			suppression = 12,
			alert_size = -1,
			value = 3,
			spread = -1,
			concealment = 1
		},
		muzzle_a_custom_stats = {
			falloff_start_mult = 0.95,
			falloff_end_mult = 0.95
		},
	-- +Con -Stab 
		muzzle_a_alt_stats = {
			value = 3,
			recoil = -2,
			concealment = 1
		},
		supp_a_alt_stats = {
			suppression = 12,
			alert_size = -1,
			value = 3,
			recoil = -2,
			concealment = 1
		},


	-- +Stab -Acc/Range 
		muzzle_rec_stats = {
			value = 3,
			spread = -1,
			recoil = 2
		},
		supp_rec_stats = {
			suppression = 12,
			alert_size = -1,
			value = 3,
			spread = -1,
			recoil = 2
		},
		muzzle_rec_custom_stats = {
			falloff_start_mult = 0.95,
			falloff_end_mult = 0.95
		},
	-- +Acc/Range -Stab
		muzzle_acc_stats = {
			value = 3,
			spread = 1,
			recoil = -2
		},
		supp_acc_stats = {
			suppression = 12,
			alert_size = -1,
			value = 3,
			spread = 1,
			recoil = -2
		},
		muzzle_acc_custom_stats = {
			falloff_start_mult = 1.05,
			falloff_end_mult = 1.05
		},


	-- -Con +Stab
		muzzle_b_stats = {
			value = 2,
			recoil = 2,
			concealment = -1
		},
		supp_b_stats = {
			suppression = 12,
			alert_size = -1,
			value = 2,
			recoil = 2,
			concealment = -1
		},
	-- -Con +Acc/Range
		muzzle_b_alt_stats = {
			value = 2,
			spread = 1,
			concealment = -1
		},
		supp_b_alt_stats = {
			suppression = 12,
			alert_size = -1,
			value = 2,
			spread = 1,
			concealment = -1
		},
		muzzle_b_alt_custom_stats = {
			falloff_start_mult = 1.05,
			falloff_end_mult = 1.05
		},


	-- --Con ++Acc/Range
		muzzle_c_stats = {
			value = 5,
			spread = 2,
			concealment = -2
		},
		supp_c_stats = {
			suppression = 12,
			alert_size = -1,
			value = 5,
			spread = 2,
			concealment = -2
		},
		muzzle_c_custom_stats = {
			falloff_start_mult = 1.1,
			falloff_end_mult = 1.1
		},
	-- --Con ++Stab
		muzzle_c_alt_stats = {
			value = 5,
			recoil = 4,
			concealment = -2
		},
		supp_c_alt_stats = {
			suppression = 12,
			alert_size = -1,
			value = 5,
			recoil = 4,
			concealment = -2
		},
	-- --Con +Stab +Acc/Range
		muzzle_c_duo_stats = {
			value = 5,
			spread = 1,
			recoil = 2,
			concealment = -2
		},
		supp_c_duo_stats = {
			suppression = 12,
			alert_size = -1,
			value = 5,
			spread = 1,
			recoil = 2,
			concealment = -2
		},
		muzzle_c_duo_custom_stats = {
			falloff_start_mult = 1.05,
			falloff_end_mult = 1.05,
			ads_speed_mult = 1.025
		},


	-- ++Stab --Acc/Range
		muzzle_rec2_stats = {
			value = 5,
			spread = -1,
			recoil = 4,
			concealment = -1
		},
		supp_rec2_stats = {
			suppression = 12,
			alert_size = -1,
			value = 5,
			spread = -1,
			recoil = 4,
			concealment = -1
		},
		muzzle_rec2_custom_stats = {
			falloff_start_mult = 0.9,
			falloff_end_mult = 0.9
		},	
	-- ++Acc --Stab
		muzzle_acc2_stats = {
			value = 5,
			spread = 2,
			concealment = -2
		},
		supp_acc2_stats = {
			suppression = 12,
			alert_size = -1,
			value = 5,
			spread = 2,
			concealment = -2
		},
		muzzle_acc2_custom_stats = {
			falloff_start_mult = 1.1,
			falloff_end_mult = 1.1
		},

	-- +++Acc ---Stab
		muzzle_acc3_stats = {
			value = 6,
			spread = 3,
			recoil = -6
		},
		supp_acc3_stats = {
			suppression = 12,
			alert_size = -1,
			value = 6,
			spread = 3,
			recoil = -6
		},
		muzzle_acc3_custom_stats = {
			falloff_start_mult = 1.15,
			falloff_end_mult = 1.15
		},

	-- ----Con ++Stab ++Acc/Range
		muzzle_rec2_acc2_stats = {
			value = 7,
			spread = 2,
			recoil = 4,
			concealment = -4
		},
		supp_rec2_acc2_stats = {
			suppression = 12,
			alert_size = -1,
			value = 7,
			spread = 2,
			recoil = 4,
			concealment = -4
		},
		muzzle_rec2_acc2_custom_stats = {
			falloff_start_mult = 1.1,
			falloff_end_mult = 1.1,
			ads_speed_mult = 1.05
		}
}

local grips = {

	recoil_1 = {
		value = 4,
		recoil = 2,
		concealment = -1
	},
	recoil_acc = {
		value = 3,
		recoil = 2,
		spread = -1
	},
	recoil_2 = {
		value = 6,
		recoil = 4,
		concealment = -2
	},

	acc_1 = {
		value = 4,
		spread = 1,
		concealment = -1
	},
		acc_recoil = {
			value = 3,
			spread = 1,
			recoil = -2
		},
	acc_2 = {
		value = 6,
		spread = 2,
		concealment = -2
	},
		acc_2_recoil = {
			value = 3,
			spread = 1,
			recoil = -2
		},
		acc_dual = {
			value = 5,
			spread = 2,
			recoil = -2,
			concealment = -1
		},

	dual_stat_1 = {
		value = 8,
		spread = 1,
		recoil = 2,
		concealment = -2,
		ads_speed_mult = 1.05
	},

	quickdraw_1 = {
		value = 5,
		concealment = 1,
		recoil = -2,
		ads_speed_mult = 0.975
	},
		quickdraw_acc = {
			value = 3,
			concealment = 1,
			spread = -1,
			ads_speed_mult = 0.975
		},
	quickdraw_2 = {
		value = 7,
		concealment = 2,
		recoil = -4,
		ads_speed_mult = 0.95
	},
		quickdraw_dual = {
			value = 5,
			concealment = 2,
			recoil = -2,
			spread = -1,
			ads_speed_mult = 0.95
		},

}

Hooks:PostHook(WeaponFactoryTweakData, "init", "byakurenhijiriyes_sc2", function(self)

	--Partial ResMod integration

	if BeardLib.Utils:FindMod("RestorationMod") and self.parts.wpn_fps_shot_m590_set then

	--M590 Set

		self.parts.wpn_fps_shot_m590_set.supported = true
		self.parts.wpn_fps_shot_m590_set.stats = {
			recoil = -2,
			concealment = -1,
			reload = 3
		}
		self.parts.wpn_fps_shot_m590_set.custom_stats = {}

		for k, used_part_id in ipairs(self.wpn_fps_sho_m590.uses_parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].type and self.parts[used_part_id].pcs then
				if not table.contains(self.wpn_fps_sho_m590.default_blueprint, used_part_id) then
					if self.parts[used_part_id].type == "stock" or
					self.parts[used_part_id].type == "lower_reciever" then
						table.insert(self.parts.wpn_fps_shot_m590_set.forbids, used_part_id )
					end
				end
			end
		end
		
	end

end)

Hooks:PostHook(WeaponFactoryTweakData, "init", "akmtacticool_sc2", function(self)

	--Tacticool AKM
	
	if BeardLib.Utils:FindMod("RestorationMod") and self.parts.wpn_fps_ass_akm_body_tacticool then
		
		self.parts.wpn_fps_ass_akm_body_tacticool.supported = true
		self.parts.wpn_fps_ass_akm_body_tacticool.stats = {}
		self.parts.wpn_fps_ass_akm_body_tacticool.custom_stats = {}
		self.parts.wpn_fps_ass_akm_body_tacticool.forbids = {
			"wpn_fps_upg_o_ak_scopemount",
			"wpn_fps_mount_lock"
		}

		for i, part_id in ipairs(self.wpn_fps_ass_akm.uses_parts) do
			if self.parts[part_id] and self.parts[part_id].type then
				if self.parts[part_id].type == "upper_reciever" then
					self.parts.wpn_fps_ass_akm_body_tacticool.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						override = {},
						adds = {},
						forbids = { "wpn_fps_mount_lock", "wpn_fps_ak_extra_ris" }
					}
				elseif self.parts[part_id].type == "barrel" then
					self.parts.wpn_fps_ass_akm_body_tacticool.override[part_id] = {
						unit = "units/mods/weapons/wpn_fps_ass_akm_tacticool/wpn_fps_ass_akm_b_tacticool_dummy",
						third_unit = "units/mods/weapons/wpn_fps_ass_akm_tacticool/wpn_fps_ass_akm_b_tacticool_dummy",
						override = {},
						adds = {}
					}
				elseif self.parts[part_id].type == "foregrip" then
					self.parts.wpn_fps_ass_akm_body_tacticool.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						override = {},
						adds = {}
					}
				elseif self.parts[part_id].type == "gadget" then
					self.parts.wpn_fps_ass_akm_body_tacticool.override[part_id] = {
						forbids = { "wpn_fps_ass_akm_fg_railcover_gadget" }
					}
				end
			end
		end

		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_specter = {
			parent = "exclusive_set",
			a_obj = "a_o",
			forbids = {"wpn_fps_ass_ak_o_creedmoor_dummy"},
			stance_mod = {
				wpn_fps_ass_akm = {
					translation = Vector3(-0.005, 15.5, -4.6) + Vector3(0, -25.4, 1.455),
					rotation = Rotation(-0.004, 0, 0)
				},
				wpn_fps_ass_74 = {
					translation = Vector3(-0.005, 15.5, -4.6) + Vector3(0, -25.4, 1.455),
					rotation = Rotation(-0.004, 0, 0)
				}
			}
		}
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_specter_piggyback = {}
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_specter_piggyback.stance_mod = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_specter.stance_mod)
		for i, weap in pairs(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_specter_piggyback.stance_mod) do
			if weap and weap.translation then
				weap.translation = weap.translation + Vector3(0, -10, -3.15)
			end
		end
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_hamr = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_specter)
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_hamr_reddot = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_hamr)
		for i, weap in pairs(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_hamr_reddot.stance_mod) do
			if weap and weap.translation then
				weap.translation = weap.translation + sight_hamr_rds_offset.offset
			end
		end
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_atibal = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_specter)
		for i, weap in pairs(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_atibal.stance_mod) do
			if weap and weap.translation then
				weap.translation = weap.translation + sight_atibal_offset.offset
			end
		end
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_atibal_reddot = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_atibal)
		for i, weap in pairs(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_atibal_reddot.stance_mod) do
			if weap and weap.translation then
				weap.translation = weap.translation + sight_atibal_rds_offset.offset
			end
		end

		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_aimpoint = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_specter)
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_aimpoint_2 = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_aimpoint)
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_cs = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_aimpoint)

		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_docter = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_specter)
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_cmore = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_docter)
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_reflex = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_docter)
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_rx01 = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_docter)
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_rx30 = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_docter)

		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_t1micro = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_specter)
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_tf90 = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_t1micro)

		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_eotech = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_specter)
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_eotech_xps = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_eotech)
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_uh = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_eotech)
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_fc1 = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_eotech)
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_health = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_eotech)
		for i, part_id in ipairs(sight_1_5x_offset.sights) do
			for i, weap in pairs(self.parts.wpn_fps_ass_akm_body_tacticool.override[ part_id ].stance_mod) do
				if weap and weap.translation then
					weap.translation = weap.translation + sight_1_5x_offset.offset
				end
			end
		end

		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_spot = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_specter)
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_poe = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_specter)

		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_acog = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_specter)
		for i, weap in pairs(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_acog.stance_mod) do
			if weap and weap.translation then
				weap.translation = weap.translation + Vector3(0,4,0)
			end
		end
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_bmg = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_specter)
		for i, weap in pairs(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_bmg.stance_mod) do
			if weap and weap.translation then
				weap.translation = weap.translation + Vector3(0,10,0)
			end
		end

		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_northtac = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_specter)
		for i, weap in pairs(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_northtac.stance_mod) do
			if weap and weap.translation then
				weap.translation = weap.translation + Vector3(0,-22,-0.01)
			end
		end
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_northtac_reddot = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_specter)
		for i, weap in pairs(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_northtac_reddot.stance_mod) do
			if weap and weap.translation then
				weap.translation = weap.translation + Vector3(0,-32,-0.01)
			end
		end
		
		if self.parts.wpn_fps_upg_o_northtac_zoomlow then
		
			self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_northtac_zoomlow = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_specter)
			for i, weap in pairs(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_northtac_zoomlow.stance_mod) do
				if weap and weap.translation then
					weap.translation = weap.translation + Vector3(0,-8,-0.01)
				end
			end

			self.parts.wpn_fps_ass_ak_body_creedmoor.override.wpn_fps_upg_o_northtac_zoomlow = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_specter)
			for i, weap in pairs(self.parts.wpn_fps_ass_ak_body_creedmoor.override.wpn_fps_upg_o_northtac_zoomlow.stance_mod) do
				if weap and weap.translation then
					weap.translation = weap.translation + Vector3(0,-8,-0.01)
				end
			end
		
		end
		
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_northtac_alt = deep_clone(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_specter)
		for i, weap in pairs(self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_o_northtac_alt.stance_mod) do
			if weap and weap.translation then
				weap.translation = weap.translation + Vector3(-0.045, -5, -5.1)
				weap.rotation = (weap.rotation or Rotation(0,0,0)) * Rotation(-0.07, 0, 0)
			end
		end
		self.parts.wpn_fps_ass_akm_body_tacticool.adds = {
			"wpn_fps_ass_akm_fg_tacticool",
			"wpn_fps_ass_ak_o_creedmoor_dummy",
			"wpn_fps_ass_akm_fg_railcover",
			"wpn_fps_ass_akm_b_tacticool",
			"wpn_fps_ass_akm_fg_railcover_gadget",
			"wpn_fps_ass_akm_tacticool_upper"
		}
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_upg_ak_g_standard = {
			unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
			third_unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
			adds = {"wpn_fps_ass_ak_g_creedmoor"}
		}
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_upg_ak_g_wgrip = {
			forbids = {"wpn_fps_ass_ak_g_creedmoor"}
		}
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_upg_ak_s_psl = {
			forbids = {"wpn_fps_ass_ak_g_creedmoor"}
		}
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_fps_mount_lock = {
			forbids = {}
		}
		self.parts.wpn_fps_ass_akm_body_tacticool.override.wpn_upg_ak_fg_combo1 = {
			unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
			third_unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
			override = {},
			adds = {},
			forbids = { "wpn_fps_mount_lock", "wpn_fps_ak_extra_ris" }
		}

		self.parts.wpn_fps_ass_ak_body_creedmoor.override.wpn_upg_ak_g_standard = {
			unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
			third_unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
			adds = {"wpn_fps_ass_ak_g_creedmoor"}
		}
		self.parts.wpn_fps_ass_ak_body_creedmoor.override.wpn_fps_upg_ak_g_wgrip = {
			forbids = {"wpn_fps_ass_ak_g_creedmoor"}
		}
		self.parts.wpn_fps_ass_ak_body_creedmoor.override.wpn_upg_ak_s_psl = {
			forbids = {"wpn_fps_ass_ak_g_creedmoor"}
		}
		self.parts.wpn_fps_ass_ak_body_creedmoor.override.wpn_fps_mount_lock = {
			forbids = {}
		}
		self.parts.wpn_fps_ass_ak_body_creedmoor.override.wpn_upg_ak_fg_combo1 = {
			unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
			third_unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
			override = {},
			adds = {},
			forbids = { "wpn_fps_mount_lock", "wpn_fps_ak_extra_ris" }
		}

	end
	
end)	

Hooks:PostHook(WeaponFactoryTweakData, "init", "miscstuff_sc", function(self)

	if BeardLib.Utils:FindMod("RestorationMod") then

		--DMC forgot to add the unique mag the Chimera Set comes with
		self.parts.wpn_fps_ass_m16_body_mcbravo.override.wpn_fps_m4_uupg_m_std_vanilla = {
			unit = "units/mods/weapons/wpn_fps_ass_m16_mcbravo/wpn_fps_ass_m16_m_mcbravo"
		}
		self.parts.wpn_fps_ass_m16_body_mcbravo.override.wpn_fps_m16_s_solid_vanilla = {}

		if self.parts.wpn_fps_smg_shepheard_g_ergo then

			self.parts.wpn_fps_smg_shepheard_body_ar45.override = self.parts.wpn_fps_smg_shepheard_body_ar45.override or {}
			self.parts.wpn_fps_smg_shepheard_body_ar45.override.wpn_fps_smg_shepheard_g_ergo = {
				unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
				third_unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
				adds = { "wpn_fps_snp_tti_vg_standard", "wpn_fps_upg_m4_g_standard_vanilla" }
			}
			
			self.parts.wpn_fps_smg_x_shepheard_body_ar45.override = self.parts.wpn_fps_smg_x_shepheard_body_ar45.override or {}
			self.parts.wpn_fps_smg_x_shepheard_body_ar45.override.wpn_fps_smg_shepheard_g_ergo = {
				unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
				third_unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
				adds = { "wpn_fps_snp_tti_vg_standard", "wpn_fps_upg_m4_g_standard_vanilla" }
			}

			self.parts.wpn_fps_smg_shepheard_body_ar45.forbids = self.parts.wpn_fps_smg_shepheard_body_ar45.forbids or {}
			table.insert(self.parts.wpn_fps_smg_shepheard_body_ar45.forbids, "wpn_fps_smg_shepheard_body_long") 
			table.insert(self.parts.wpn_fps_smg_shepheard_body_ar45.forbids, "wpn_fps_smg_shepheard_fg_suppressed") 

			self.parts.wpn_fps_smg_x_shepheard_body_ar45.forbids = self.parts.wpn_fps_smg_x_shepheard_body_ar45.forbids or {}
			table.insert(self.parts.wpn_fps_smg_x_shepheard_body_ar45.forbids, "wpn_fps_smg_shepheard_body_long") 
			table.insert(self.parts.wpn_fps_smg_x_shepheard_body_ar45.forbids, "wpn_fps_smg_shepheard_fg_suppressed") 

			for k, used_part_id in ipairs(self.wpn_fps_smg_shepheard.uses_parts) do
				if self.parts[used_part_id] and self.parts[used_part_id].type then
					if not table.contains(self.wpn_fps_smg_shepheard.default_blueprint, used_part_id) and not table.contains(self.parts.wpn_fps_smg_shepheard_body_ar45.forbids, used_part_id) then
						if self.parts[used_part_id].type == "foregrip" or
						self.parts[used_part_id].type == "barrel" or
						self.parts[used_part_id].type == "magazine" then
							table.insert(self.parts.wpn_fps_smg_shepheard_body_ar45.forbids, used_part_id)
						end
					end
				end
			end

			for k, used_part_id in ipairs(self.wpn_fps_smg_x_shepheard.uses_parts) do
				if self.parts[used_part_id] and self.parts[used_part_id].type then
					if not table.contains(self.wpn_fps_smg_x_shepheard.default_blueprint, used_part_id) and not table.contains(self.parts.wpn_fps_smg_x_shepheard_body_ar45.forbids, used_part_id) then
						if self.parts[used_part_id].type == "foregrip" or
						self.parts[used_part_id].type == "barrel" or
						self.parts[used_part_id].type == "magazine" then
							table.insert(self.parts.wpn_fps_smg_x_shepheard_body_ar45.forbids, used_part_id)
						end
					end
				end
			end
			
			self.parts.wpn_fps_ass_amcar_body_ddm4.override = self.parts.wpn_fps_ass_amcar_body_ddm4.override or {}
			self.parts.wpn_fps_ass_amcar_body_ddm4.override.wpn_fps_ass_m4_m_wick = {}
			
		end

		self.parts.wpn_fps_ass_scar_body_hamr.override = self.parts.wpn_fps_ass_scar_body_hamr.override or {}
		self.parts.wpn_fps_ass_scar_body_hamr.override.wpn_fps_upg_vg_ass_smg_afg_vanilla = {
			unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
			third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"
		}

		self.parts.wpn_fps_ass_m4_body_tantone.forbids = {
			"wpn_fps_m4_uupg_b_medium",
			"wpn_fps_m4_uupg_b_long",
			"wpn_fps_m4_uupg_b_short"
		}
		for k, used_part_id in ipairs(self.wpn_fps_ass_m4.uses_parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].type then
				if not table.contains(self.wpn_fps_ass_m4.default_blueprint, used_part_id) and not table.contains(self.parts.wpn_fps_ass_m4_body_tantone.forbids, used_part_id) then
					if self.parts[used_part_id].type == "upper_reciever" or
					self.parts[used_part_id].type == "foregrip" then
						table.insert(self.parts.wpn_fps_ass_m4_body_tantone.forbids, used_part_id)
					end
				end
				if not self.parts.wpn_fps_ass_m4_body_tantone.override[used_part_id] then
					if self.parts[used_part_id].type == "lower_reciever" then
						self.parts.wpn_fps_ass_m4_body_tantone.override[used_part_id] = {
							adds = {},
							override = {},
							unit = "units/mods/weapons/wpn_fps_ass_m4_tantone/wpn_fps_ass_m4_tantone_lower"
						}
					end
				end
			end
		end
		
		if self.parts.wpn_fps_m4_uupg_m_sharps then
		
			self.parts.wpn_fps_ass_m4_body_tantone.forbids = self.parts.wpn_fps_ass_m4_body_tantone.forbids or {}
			table.insert(self.parts.wpn_fps_ass_m4_body_tantone.forbids, "wpn_fps_m4_uupg_m_sharps") 
		
		end

		--Punchier firing sounds for the DDM4 set
		self.parts.wpn_fps_ass_amcar_ddm4_sound.unit = "units/pd2_dlc_par/weapons/wpn_fps_lmg_par/wpn_fps_lmg_par"
		self.parts.wpn_fps_ass_amcar_ddm4_sound.third_unit = "units/pd2_dlc_par/weapons/wpn_fps_lmg_par/wpn_fps_lmg_par"
		self.parts.wpn_fps_ass_amcar_ddm4_sound.custom_stats = {
			sounds = {
				fire = "svinet_fire_single",
				fire_single = "svinet_fire_single",
				stop_fire = "svinet_stop",
				fire_auto = "svinet_fire"		
			}
		}
		
	end
	
end)		

Hooks:PostHook(WeaponFactoryTweakData, "init", "sterling57_sc2", function(self)

	if BeardLib.Utils:FindMod("RestorationMod") and self.parts.wpn_fps_smg_sterling_body_pdw then

		--Stats for the 5.7mm Sterling
		self.parts.wpn_fps_smg_sterling_body_pdw.supported = true
		self.parts.wpn_fps_smg_sterling_body_pdw.keep_damage = true
		self.parts.wpn_fps_smg_sterling_body_pdw.stats = {
			damage = -12,
			total_ammo_mod = 198,
			extra_ammo = 30 ,
			spread = 10,
			recoil = 4,
			reload = -6,
			concealment = -3
		}
		self.parts.wpn_fps_smg_sterling_body_pdw.custom_stats = {
			falloff_start_mult = 1.2,
			falloff_end_mult = 1,
			damage_min_mult = 2.77777,
			ammo_pickup_max_mul = 1.15625,
			ammo_pickup_min_mul = 1.15625,
			alt_ammo_pickup_max_mul = 1.15625,
			alt_ammo_pickup_min_mul = 1.15625,
			can_shoot_through_enemy = false,
			hs_mult_desc = true,
			armor_piercing_override = 0.75,
			ap_desc = "bm_pdw_sc_paint_desc",
			hs_mult = 1.33333,
			rof_mult = 1.2,
			ads_speed_mult = 1.222222,
			srm = {
				0.02,
				{0.9, 1},
				4
			}				
		}
		
	end	

end)

Hooks:PostHook(WeaponFactoryTweakData, "init", "s550set_sc2", function(self)

	if BeardLib.Utils:FindMod("RestorationMod") and self.parts.wpn_fps_ass_s552_body_s550 then

		--SG550-1 Kit
		for i, part_id in ipairs(self.wpn_fps_ass_s552.uses_parts) do
			if self.parts[part_id] and self.parts[part_id].type then
				if self.parts[part_id].type == "barrel_ext" then
					self.parts.wpn_fps_ass_s552_body_s550.override[part_id] = {
						forbids = { "wpn_fps_ass_s552_ns_s550" }
					}
				end
			end
		end

		self.parts.wpn_fps_ass_s552_body_s550.supported = true
		
		self.parts.wpn_fps_ass_s552_body_s550.keep_damage = true
		self.parts.wpn_fps_ass_s552_body_s550.stats = {
			value = 0,
			damage = 10,
			total_ammo_mod = -242,		--Working with this shit sucks ngl
			recoil = -10,
			concealment = -4,
			reload = -6
		}
		self.parts.wpn_fps_ass_s552_body_s550.custom_stats = {
			alt_desc = "bm_s552_body_s550_sc_desc",
			hs_mult_desc = true,
			lock_semi = true,
			falloff_start_mult = 1.3,
			falloff_end_mult = 1.3,
			damage_min_mult = 24 / 36,
			ammo_pickup_max_mul = 0.29032258064,
			ammo_pickup_min_mul = 0.29032258064,
			alt_ammo_pickup_max_mul = 0.29032258064,
			alt_ammo_pickup_min_mul = 0.29032258064,
			can_shoot_through_enemy = true,
			can_shoot_through_wall = true,
			can_shoot_through_shield = true,
			can_shoot_through_enemy_unlim = true,
			ignore_rof_mult_anims = true,
			armor_piercing_add = 1,
			armor_piercing_override = 1,
			armor_piercing_add_override = 1,
			hs_mult = 2,
			sms = 0.7,
			rof_mult = 360 / 700,
			ads_speed_mult = 2,
			srm = {
				-0.01,
				{1, 1.05},
				4
			}			
		}
		self.parts.wpn_fps_ass_s552_body_s550.perks = { 
			"fire_mode_single" 
		}
		self.parts.wpn_fps_ass_s552_body_s550.desc_id = "bm_s552_body_s550_sc_desc"
		
	--[[self.parts.wpn_fps_ass_s552_body_s550.stats = deep_clone(self.parts.wpn_fps_m4_upg_fg_mk12.stats)
		self.parts.wpn_fps_ass_s552_body_s550.custom_stats = deep_clone(self.parts.wpn_fps_m4_upg_fg_mk12.custom_stats)	]]

		for k, used_part_id in ipairs(self.wpn_fps_ass_s552.uses_parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].type then
				if not table.contains(self.wpn_fps_ass_s552.default_blueprint, used_part_id) and not table.contains(self.parts.wpn_fps_ass_s552_body_s550.forbids, used_part_id) then
					if self.parts[used_part_id].type == "barrel" or
					self.parts[used_part_id].type == "custom" or
					self.parts[used_part_id].type == "foregrip" then
						table.insert(self.parts.wpn_fps_ass_s552_body_s550.forbids, used_part_id)
					end
				end
			end
		end

		self.parts.wpn_fps_ass_s552_m_s550.supported = true
		self.parts.wpn_fps_ass_s552_m_s550.stats = {
			concealment = 2,
			reload = 5,
			extra_ammo = -10
		}
		self.parts.wpn_fps_ass_s552_m_s550.custom_stats = { 
			ads_speed_mult = 0.95
		}
		self.parts.wpn_fps_ass_s552_m_s550.bullet_objects = {
			prefix = "g_bullet_", 
			amount = 20
		}
	end
	
	--[[	--Long Barrel
	--barrels.long_b1_stats
		long_b1_stats = {
			value = 2,
			spread = 1,
			concealment = -1,
			falloff_start_mult = 1.075,
			falloff_end_mult = 1.075,
			ads_speed_mult = 1.025
		},
	--Longer Barrel
	--barrels.long_b2_stats
		long_b2_stats = {
			value = 4,
			spread = 2,
			concealment = -2,
			falloff_start_mult = 1.15,
			falloff_end_mult = 1.15,
			ads_speed_mult = 1.05
		},
	--Longest Barrel
	--barrels.long_b3_stats
		long_b3_stats = {
			value = 6,
			spread = 3,
			concealment = -3,
			falloff_start_mult = 1.225,
			falloff_end_mult = 1.225,
			ads_speed_mult = 1.075
		}]]
	
end)

Hooks:PostHook(WeaponFactoryTweakData, "init", "hk416olympic_sc", function(self)

	if BeardLib.Utils:FindMod("RestorationMod") and self.parts.wpn_fps_smg_olympic_body_hk416c then

		--HK416C Kit

		for i, part_id in ipairs(self.wpn_fps_smg_olympic.uses_parts) do
			if self.parts[part_id] and self.parts[part_id].type then
				if self.parts[part_id].type == "barrel_ext" then
					self.parts.wpn_fps_smg_olympic_body_hk416c.override[part_id] = {
						forbids = { "wpn_fps_ass_tecci_ns_standard" }
					}
				elseif self.parts[part_id].type == "foregrip" then
					self.parts.wpn_fps_smg_olympic_body_hk416c.override[part_id] = {
						unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
						third_unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
						override = {},
						adds = {}
					}
				elseif self.parts[part_id].type == "gadget" then
					self.parts.wpn_fps_smg_olympic_body_hk416c.override[part_id] = {
						parent = "exclusive_set"
					}
				elseif self.parts[part_id].type == "sight" then
					self.parts.wpn_fps_smg_olympic_body_hk416c.override[part_id] = {
						parent = "exclusive_set"
					}
				end
			end
		end

		self.parts.wpn_fps_smg_olympic_body_hk416c.supported = true
		self.parts.wpn_fps_smg_olympic_body_hk416c.stats = {
			concealment = -1,
			recoil = -4
		}
		self.parts.wpn_fps_smg_olympic_body_hk416c.custom_stats = {
			alt_desc = "bm_wp_wpn_fps_smg_olympic_body_hk416c_sc_desc",
			rof_mult = 1.0625
		}
		self.parts.wpn_fps_smg_olympic_body_hk416c.adds = {
			"wpn_fps_ass_tecci_fg_standard",
			"wpn_fps_ass_tecci_ns_standard"
		}


		self.wpn_fps_smg_x_olympic.override.wpn_fps_smg_olympic_body_hk416c = {
			stats = {
				concealment = -1,
				recoil = -4			
			},
			custom_stats = {
				alt_desc = "bm_wp_wpn_fps_smg_x_olympic_body_hk416c_sc_desc",	
				rof_mult = 1.0625			
			},
			adds = {
				"wpn_fps_ass_tecci_fg_standard",
				"wpn_fps_ass_tecci_ns_standard"
			}
		}	

		self.parts.wpn_fps_smg_olympic_body_hk416c.override.wpn_fps_ass_m16_o_handle_sight = {
			parent = "exclusive_set",
			unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_fps_ass_tecci_o_standard",
			third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_o_standard",
			stance_mod = {
				wpn_fps_smg_olympic = {
					translation = Vector3(0, 3, 1.55),
					rotation = Rotation(0, 0, 0)
				}			
			}
		}
		self.parts.wpn_fps_smg_olympic_body_hk416c.override.wpn_fps_m4_uupg_b_medium = {
			unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_fps_ass_tecci_b_long",
			third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_b_long",
			override = {},
			a_obj = "a_fg"
		}
		self.parts.wpn_fps_smg_olympic_body_hk416c.override.wpn_fps_smg_olympic_s_adjust = {
			unit = "units/mods/weapons/wpn_fps_smg_shepheard_ar45/wpn_fps_smg_shepheard_s_tecci",
			third_unit = "units/mods/weapons/wpn_third_smg_shepheard_ar45/wpn_third_smg_shepheard_s_tecci",
			parent = "exclusive_set"
		}
		self.parts.wpn_fps_smg_olympic_body_hk416c.override.wpn_fps_smg_olympic_s_short = {
			unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_fps_ass_tecci_s_standard",
			third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_s_standard",
			parent = "exclusive_set"
		}
		self.parts.wpn_fps_smg_olympic_body_hk416c.override.wpn_fps_m4_lower_reciever = {
			unit = "units/mods/weapons/wpn_fps_smg_olympic_hk416/wpn_fps_smg_olympic_lower_hk416",
			third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_lower_reciever"
		}
		self.parts.wpn_fps_smg_olympic_body_hk416c.override.wpn_fps_m4_upper_reciever_round = {
			unit = "units/mods/weapons/wpn_fps_smg_olympic_hk416/wpn_fps_smg_olympic_upper_hk416",
			third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_upper_reciever",
			override = {}
		}
		self.parts.wpn_fps_smg_olympic_body_hk416c.override.wpn_fps_m4_uupg_draghandle = {
			unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_fps_ass_tecci_dh_standard",
			third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_dh_standard"
		}
		self.parts.wpn_fps_smg_olympic_body_hk416c.override.wpn_fps_amcar_bolt_standard = {
			unit = "units/mods/weapons/wpn_fps_smg_olympic_hk416/wpn_fps_smg_olympic_bolt_hk416"
		}
		self.parts.wpn_fps_smg_olympic_body_hk416c.override.wpn_fps_upg_o_hamr_reddot = {
			parent = "exclusive_set",
			stance_mod = {
				wpn_fps_smg_olympic = {
					translation = Vector3(0, 0, -3.6),
					rotation = Rotation(0, 0, 0)
				}			
			}
		}
		self.parts.wpn_fps_smg_olympic_body_hk416c.override.wpn_fps_upg_o_atibal_reddot = {
			parent = "exclusive_set",
			stance_mod = {
				wpn_fps_smg_olympic = {
					translation = Vector3(-0.125, 0, -6.15),
					rotation = Rotation(0, 0, 0)
				}			
			}
		}

		local wpn_fps_smg_olympic_body_hk416c_parts_to_override = {
			"wpn_fps_upg_o_45rds_v2",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_45steel",
			"wpn_fps_upg_o_45iron"
		}
		for h, part_id in pairs(wpn_fps_smg_olympic_body_hk416c_parts_to_override) do
			if self.parts[part_id] then
				self.parts.wpn_fps_smg_olympic_body_hk416c.override[part_id] = {
					parent = "exclusive_set"
				}
			end
		end

		for k, used_part_id in ipairs(self.wpn_fps_smg_olympic.uses_parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].type then
				if not table.contains(self.wpn_fps_smg_olympic.default_blueprint, used_part_id) and not table.contains(self.parts.wpn_fps_smg_olympic_body_hk416c.forbids, used_part_id) then
					if self.parts[used_part_id].type == "upper_reciever" or
					self.parts[used_part_id].type == "lower_reciever" then
						if self.parts[used_part_id].stats then
							table.insert(self.parts.wpn_fps_smg_olympic_body_hk416c.forbids, used_part_id)
						end
					elseif self.parts[used_part_id].type == "magazine" then
						if (self.parts[used_part_id].custom_stats and (self.parts[used_part_id].custom_stats.damage_min_mult or self.parts[used_part_id].custom_stats.rof_mult)) then
							table.insert(self.parts.wpn_fps_smg_olympic_body_hk416c.forbids, used_part_id)
						end
					end
				end
			end
		end

		attachment_list = {
			"wpn_fps_smg_olympic"
		}
		for i, factory_id in ipairs(attachment_list) do
			for k, used_part_id in ipairs(self[factory_id].uses_parts) do
				if self.parts[used_part_id] and self.parts[used_part_id].type then
					if self.parts[used_part_id].type ~= "custom" then
						if self.parts[used_part_id].custom_stats and self.parts[used_part_id].custom_stats.rof_mult then
							table.insert(self.parts.wpn_fps_smg_olympic_body_hk416c.forbids, used_part_id)
						end
					end
				end
			end
		end

	end
	
end)

Hooks:PostHook(WeaponFactoryTweakData, "init", "ac556set_sc", function(self)

	--Ruger AC-556
	
	if BeardLib.Utils:FindMod("RestorationMod") and self.parts.wpn_fps_ass_m14_body_ac556 then

		self.parts.wpn_fps_ass_m14_body_ac556.supported = true
		self.parts.wpn_fps_ass_m14_body_ac556.desc_id = "bm_wp_wpn_fps_ass_m14_body_ac556_sc_desc"
		self.parts.wpn_fps_ass_m14_body_ac556.keep_damage = true
		self.parts.wpn_fps_ass_m14_body_ac556.stats = {
			value = 0,
			spread = -22,
			recoil = 18,
			reload = 3,
			concealment = 6,
			damage = -30,
			extra_ammo = 10,
			total_ammo_mod = 400
		}
		self.parts.wpn_fps_ass_m14_body_ac556.custom_stats = {
			alt_desc = "bm_wp_wpn_fps_ass_m14_body_ac556_desc",
			funco_chan = true, 
			add_burst = true,
			ads_speed_mult = 0.78947,
			rof_mult = 750 / 700,
			armor_piercing_override = 0,
			armor_piercing_add_override = 0,
			falloff_start_mult = 0.5,
			falloff_end_mult = 0.66176470588,
			damage_min_mult = 0.83333333333,
			alt_ammo_pickup_min_mul = 4.3 / 1.7,
			alt_ammo_pickup_max_mul = 4.3 / 1.7,
			ammo_pickup_min_mul = 4.3 / 1.7,
			ammo_pickup_max_mul = 4.3 / 1.7,
			srm = {
				-0.01,
				{1, 1.05},
				4
			}
		}

		for k, used_part_id in ipairs(self.wpn_fps_ass_m14.uses_parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].type then
				if not table.contains(self.wpn_fps_ass_m14.default_blueprint, used_part_id) and not table.contains(self.parts.wpn_fps_ass_m14_body_ac556.forbids, used_part_id) then
					if self.parts[used_part_id].type == "stock" or
					self.parts[used_part_id].type == "magazine" then
						table.insert(self.parts.wpn_fps_ass_m14_body_ac556.forbids, used_part_id)
					end
				--[[if self.parts[used_part_id].type == "sight" then
						self.parts.wpn_fps_ass_m14_body_ac556.override[used_part_id] = self.parts.wpn_fps_ass_m14_body_ac556.override[used_part_id] or {}
						self.parts.wpn_fps_ass_m14_body_ac556.override[used_part_id].adds = (self.parts[used_part_id].adds and deep_clone(self.parts[used_part_id].adds)) or {}
						table.insert(self.parts.wpn_fps_ass_m14_body_ac556.override[used_part_id].adds, "wpn_fps_ass_m14_ac556_mount")
					end]]
				end
			end
		end

	--[[self.parts.wpn_fps_ass_m14_body_ac556.override = self.parts.wpn_fps_ass_m14_body_ac556.override or {}
		for i, part_id in ipairs(self.wpn_fps_ass_m14.uses_parts) do
			if self.parts[part_id] and self.parts[part_id].type then
				if self.parts[part_id].type == "sight" then
					self.parts.wpn_fps_ass_m14_body_ac556.override[part_id] = {
						forbids = { "wpn_fps_ass_m14_ac556_mount_blocker" }
					}
				end
			end
		end]]

		self.parts.wpn_fps_ass_m14_ac556_mount.visibility = {
			{
				objects = {
					g_ruger = false,
					g_ruger_rail = true,
					g_side_rail = false
				}
			}
		}

		if self.parts.wpn_fps_ass_m14_body_old then
		
			self.parts.wpn_fps_ass_m14_body_ac556.forbids = self.parts.wpn_fps_ass_m14_body_ac556.forbids or {}
			table.insert(self.parts.wpn_fps_ass_m14_body_ac556.forbids, "wpn_fps_ass_m14_body_old") 
			table.insert(self.parts.wpn_fps_ass_m14_body_ac556.forbids, "wpn_fps_ass_m14_m_curve") 

		end
	
	end

end)

Hooks:PostHook(WeaponFactoryTweakData, "init", "10mmautoar_sc", function(self)

	--Centimeter AR-10mm
	
	if BeardLib.Utils:FindMod("RestorationMod") and self.parts.wpn_fps_smg_shepheard_body_centi then

		--Combination of the Strike Magazine, MP5 Straight Mag, and Para-23 Medium Barrel

		self.parts.wpn_fps_smg_shepheard_body_centi.supported = true
		self.parts.wpn_fps_smg_shepheard_body_centi.keep_damage = true
		self.parts.wpn_fps_smg_shepheard_body_centi.stats = {
			extra_ammo = 0,
			value = 0,
			recoil = -6,
			spread = 2,
			concealment = -1
		}
		self.parts.wpn_fps_smg_shepheard_body_centi.custom_stats = {
			damage_min_mult = 2,
			rof_mult = 0.82352941176,
			falloff_start_mult = 1.075,
			falloff_end_mult = 1.075,
			ads_speed_mult = 1.025,
			alt_desc = "bm_wp_wpn_fps_smg_shepheard_body_centi_desc"
		}
		self.parts.wpn_fps_smg_shepheard_body_centi.stance_mod = {
			wpn_fps_smg_shepheard = {
				translation = Vector3(-0.005, -1.8, 0.285)
			}
		}

		self.parts.wpn_fps_smg_shepheard_body_centi.override = self.parts.wpn_fps_smg_shepheard_body_centi.override or {}
		self.parts.wpn_fps_smg_shepheard_body_centi.override.wpn_fps_smg_shepheard_body = {
			unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy", 
			third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
			override = {
				wpn_fps_smg_shepheard_o_standard = {
					unit = "units/mods/weapons/wpn_fps_smg_shepheard_centi/wpn_fps_smg_shepheard_o_centi",
					stance_mod = {
						wpn_fps_smg_shepheard = {
							translation = Vector3(-0.008, -6, 1.28),
							rotation = Rotation(-0.0, 0, 0)
						}						
					},
					parent = "exclusive_set"
				},
				wpn_fps_smg_shepheard_b_standard = {
					unit = "units/mods/weapons/wpn_fps_smg_shepheard_centi/wpn_fps_smg_shepheard_b_centi",		
					third_unit = "units/pd2_dlc_savi/weapons/wpn_third_snp_victor_pts/wpn_third_snp_victor_b_standard",		
					parent = "exclusive_set"
				},
				wpn_fps_snp_victor_fg_standard = {
					unit = "units/mods/weapons/wpn_fps_smg_shepheard_centi/wpn_fps_smg_shepheard_fg_centi",
					third_unit = "units/mods/weapons/wpn_third_smg_shepheard_centi/wpn_third_smg_shepheard_fg_centi",						
					parent = "exclusive_set",
					a_obj = "a_b"
				},
				wpn_fps_addon_ris = { parent="exclusive_set" },
				wpn_fps_upg_fl_ass_smg_sho_peqbox = { parent="exclusive_set" },
				wpn_fps_upg_fl_ass_smg_sho_surefire = { parent="exclusive_set" },
				wpn_fps_upg_fl_ass_peq15 = { parent="exclusive_set" },
				wpn_fps_upg_fl_ass_laser = { parent="exclusive_set" },
				wpn_fps_upg_fl_ass_utg = { parent="exclusive_set" },
				wpn_fps_upg_fl_dbal_laser = { parent="exclusive_set" },
				wpn_fps_snp_tti_vg_standard = { parent="exclusive_set" }
			},
			adds = {
				"wpn_fps_snp_tti_vg_standard"
			}
		}

		self.parts.wpn_fps_smg_shepheard_body_centi.override.wpn_fps_smg_shepheard_body_short = {
			unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy", 
			third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
			override = {
				wpn_fps_smg_shepheard_o_standard = {
					unit = "units/mods/weapons/wpn_fps_smg_shepheard_centi/wpn_fps_smg_shepheard_o_centi_short",
					stance_mod = {
						wpn_fps_smg_shepheard = {
							translation = Vector3(-0.008, -6, 1.28),
							rotation = Rotation(-0.0, 0, 0)
						}						
					},
					parent = "exclusive_set"
				},
				wpn_fps_smg_shepheard_b_standard = {
					unit = "units/mods/weapons/wpn_fps_smg_shepheard_centi/wpn_fps_smg_shepheard_b_centi_short",
					third_unit = "units/pd2_dlc_savi/weapons/wpn_third_snp_victor_pts/wpn_third_snp_victor_b_sbr",						
					parent = "exclusive_set"
				},
				wpn_fps_snp_victor_fg_standard = {
					unit = "units/mods/weapons/wpn_fps_smg_shepheard_centi/wpn_fps_smg_shepheard_fg_centi_short",
					third_unit = "units/mods/weapons/wpn_third_smg_shepheard_centi/wpn_third_smg_shepheard_fg_centi_short",						
					parent = "exclusive_set",
					a_obj = "a_b"
				},
				wpn_fps_addon_ris = { 
					unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy", 
					third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"
				},
				wpn_fps_upg_fl_ass_smg_sho_peqbox = { parent="exclusive_set", a_obj="a_fl_hera" },
				wpn_fps_upg_fl_ass_smg_sho_surefire = { parent="exclusive_set", a_obj="a_fl_hera" },
				wpn_fps_upg_fl_ass_peq15 = { parent="exclusive_set", a_obj="a_fl_hera" },
				wpn_fps_upg_fl_ass_laser = { parent="exclusive_set", a_obj="a_fl_hera" },
				wpn_fps_upg_fl_ass_utg = { parent="exclusive_set", a_obj="a_fl_hera" },
				wpn_fps_upg_fl_dbal_laser = { parent="exclusive_set", a_obj="a_fl_hera" },
				wpn_fps_ass_g36_vg_afg_cut = { parent="exclusive_set", a_obj="a_vg2" }
			},
			adds = {
				"wpn_fps_ass_g36_vg_afg_cut"
			}
		}

		if self.parts.wpn_fps_smg_shepheard_g_ergo then

			self.parts.wpn_fps_smg_shepheard_body_centi.override = self.parts.wpn_fps_smg_shepheard_body_centi.override or {}
			self.parts.wpn_fps_smg_shepheard_body_centi.override.wpn_fps_smg_shepheard_g_ergo = {
				unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
				third_unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
				adds = { "wpn_fps_sho_sko12_body_grip" }
			}

			self.parts.wpn_fps_smg_shepheard_body_centi.forbids = self.parts.wpn_fps_smg_shepheard_body_centi.forbids or {}
			table.insert(self.parts.wpn_fps_smg_shepheard_body_centi.forbids, "wpn_fps_smg_shepheard_body_long") 
			table.insert(self.parts.wpn_fps_smg_shepheard_body_centi.forbids, "wpn_fps_smg_shepheard_fg_suppressed") 

			for k, used_part_id in ipairs(self.wpn_fps_smg_shepheard.uses_parts) do
				if self.parts[used_part_id] and self.parts[used_part_id].type then
					if not table.contains(self.wpn_fps_smg_shepheard.default_blueprint, used_part_id) and not table.contains(self.parts.wpn_fps_smg_shepheard_body_centi.forbids, used_part_id) then
						if self.parts[used_part_id].type == "barrel" or
						self.parts[used_part_id].type == "magazine" then
							table.insert(self.parts.wpn_fps_smg_shepheard_body_centi.forbids, used_part_id)
						end
					end
				end
			end
			
		end
	
	end

end)	

Hooks:PostHook(WeaponFactoryTweakData, "init", "hk416m203_sc", function(self)

	--HK416 + M203
	
	if BeardLib.Utils:FindMod("RestorationMod") and self.parts.wpn_fps_ass_contraband_body_little then

		self.parts.wpn_fps_ass_contraband_body_little.supported = true
		self.parts.wpn_fps_ass_contraband_body_little.keep_damage = true
		self.parts.wpn_fps_ass_contraband_body_little.stats = {
			value = 10,
			extra_ammo = 10,
			damage = -21,
			total_ammo_mod = 350,
			spread = -1,
			recoil = 22,
			concealment = 0
		}
		self.parts.wpn_fps_ass_contraband_body_little.custom_stats = {
			alt_desc = "bm_m203_paintsets_sc_desc",
			falloff_start_mult = 1.05,
			falloff_end_mult = 1.26,
			damage_min_mult = 0.9375,
			ammo_pickup_max_mul = 2.36,
			ammo_pickup_min_mul = 2.36,
			alt_ammo_pickup_max_mul = 2.36,
			alt_ammo_pickup_min_mul = 2.36,
			can_shoot_through_enemy = false,
			rof_mult = 1.166667,
			armor_piercing_override = 0,
			ads_speed_mult = 0.826875,
			srm = {
				-0.005,
				{1, 1.05},
				9
			}
		}
		self.parts.wpn_fps_ass_contraband_body_little.adds = {
			"wpn_fps_ass_contraband_little_sound",
			"wpn_fps_ass_tecci_upper_reciever",
			"wpn_fps_ass_contraband_frontsight_down"
		}

		self.parts.wpn_fps_ass_contraband_body_little.override = self.parts.wpn_fps_ass_contraband_body_little.override or {}
		self.parts.wpn_fps_ass_contraband_body_little.override.wpn_fps_ass_contraband_s_standard = {
			parent = "exclusive_set",
			a_obj = "a_s"
		} 
		self.parts.wpn_fps_ass_contraband_body_little.override.wpn_fps_ass_contraband_s_tecci = {
			parent = "exclusive_set",
			a_obj = "a_s"
		} 
		self.parts.wpn_fps_ass_contraband_body_little.override.wpn_fps_ass_sg416_fg_hera = {
			parent = "exclusive_set",
			a_obj = "a_fg"		
		}
		self.parts.wpn_fps_ass_contraband_body_little.override.wpn_fps_ass_contraband_b_long = {
			parent = "exclusive_set",
			a_obj = "a_fg"
		}
		self.parts.wpn_fps_ass_contraband_body_little.override.wpn_fps_ass_contraband_b_short =  {
			parent = "exclusive_set",
			a_obj = "a_fg"
		}
		
	--[[self.parts.wpn_fps_ass_contraband_body_little.override = {
			wpn_fps_ass_contraband_body_standard = {
				unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_lower_reciever",
				parent = "exclusive_set",
				a_obj = "a_lower"
			},
			wpn_fps_ass_contraband_fg_standard = {
				unit = "units/payday2/weapons/wpn_fps_ass_m16_pts/wpn_fps_m16_fg_railed",
				parent = "exclusive_set",
				a_obj = "a_fg"
			},
			wpn_fps_ass_contraband_b_standard = {
				unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_uupg_b_long",
				parent = "exclusive_set",
				a_obj = "a_fg"
			},
			wpn_fps_ass_contraband_b_long = {
				unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_uupg_b_long",
				parent = "exclusive_set",
				a_obj = "a_fg"
			},
			wpn_fps_ass_contraband_b_short = {
				unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_uupg_b_medium",
				parent = "exclusive_set",
				a_obj = "a_fg"
			},
			wpn_fps_ass_contraband_bolt_standard = {
				unit = "units/payday2/weapons/wpn_fps_ass_amcar_pts/wpn_fps_amcar_bolt_standard",
				parent = "exclusive_set",
				a_obj = "a_bolt"
			},
			wpn_fps_ass_contraband_m_standard = {
				unit = "units/mods/weapons/wpn_fps_ass_contraband_pts/wpn_fps_ass_contraband_body_little_mag"
			},
			wpn_fps_ass_contraband_g_standard = {
				unit = "units/payday2/weapons/wpn_fps_upg_m4_reusable/wpn_fps_upg_m4_g_standard",
				parent = "exclusive_set",
				a_obj = "a_g"
			},
			wpn_fps_smg_car9_upper_standard = {
				parent = "exclusive_set",
				a_obj = "a_upper"
			},
			wpn_fps_ass_contraband_gl_m203 = {
				parent = "exclusive_set",
				a_obj = "a_gl"
			},
			wpn_fps_ass_m4_ns_frontsight = {
				parent = "exclusive_set",
				a_obj = "a_os"
			},
			wpn_fps_upg_m4_s_adapter = {
				parent = "exclusive_set",
				a_obj = "a_s"
			},

			wpn_fps_ass_contraband_o_standard = {
				unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy"
			},
			wpn_fps_ass_contraband_ns_standard = {
				unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy"
			},
			wpn_fps_ass_contraband_dh_standard = {
				unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy"
			},
			wpn_fps_addon_ris = {
				unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy"
			}
		}]]

		for part_id, i in pairs(self.parts) do
			if self.parts[part_id] and self.parts[part_id].type and self.parts[part_id].type == "charm" then
				self.parts.wpn_fps_ass_contraband_body_little.override[part_id] = {
					parent = "exclusive_set",
					a_obj = "a_charm"
				}
			end
		end

		for i, part_id in ipairs(self.wpn_fps_ass_contraband.uses_parts) do
			if self.parts[part_id] and self.parts[part_id].type then
				if self.parts[part_id].type == "grip" then
					self.parts.wpn_fps_ass_contraband_body_little.override[part_id] = {
						parent = "exclusive_set",
						a_obj = "a_g"
					}
				elseif self.parts[part_id].type == "foregrip" then
					self.parts.wpn_fps_ass_contraband_body_little.override[part_id] = {
						parent = "exclusive_set",
						a_obj = "a_fg"
					}
				elseif self.parts[part_id].type == "barrel" then
					self.parts.wpn_fps_ass_contraband_body_little.override[part_id] = {
						parent = "exclusive_set",
						a_obj = "a_fg"
					}
				elseif self.parts[part_id].type == "stock" then
					self.parts.wpn_fps_ass_contraband_body_little.override[part_id] = {
						parent = "exclusive_set",
						a_obj = "a_s"
					}
				end
			end
		end
	
	end

end)

Hooks:PostHook(WeaponFactoryTweakData, "init", "vectornine_sc", function(self)

	if BeardLib.Utils:FindMod("RestorationMod") and self.parts.wpn_fps_smg_polymer_body_nine then
	
		self.parts.wpn_fps_smg_polymer_body_nine.supported = true
		self.parts.wpn_fps_smg_polymer_body_nine.keep_damage = true
		self.parts.wpn_fps_smg_polymer_body_nine.stats = {
			value = 0,
			extra_ammo = -3,
			damage = -6,
			total_ammo_mod = 98,
			reload = 3,
			spread = 2,
			recoil = 6,
			concealment = 2
		}
		self.parts.wpn_fps_smg_polymer_body_nine.custom_stats = {
		--rof_mult = 1.09090909091,
			damage_min_mult = 0.83333333333,
			ammo_pickup_max_mul = 8.1 / 6.2,
			ammo_pickup_min_mul = 8.1 / 6.2,
			alt_ammo_pickup_max_mul = 8.1 / 6.2,
			alt_ammo_pickup_min_mul = 8.1 / 6.2,
			ads_speed_mult = 0.90909090909
		}		
		
		if self.parts.wpn_fps_upg_m_vecsgmt then
		
			self.parts.wpn_fps_smg_polymer_body_nine.forbids = self.parts.wpn_fps_smg_polymer_body_nine.forbids or {}
			table.insert(self.parts.wpn_fps_smg_polymer_body_nine.forbids, "wpn_fps_upg_m_vecsgmt") 			
		
		end
		
		if self.parts.wpn_fps_smg_polymer_m_d50 then
			
			self.parts.wpn_fps_smg_polymer_body_nine.forbids = self.parts.wpn_fps_smg_polymer_body_nine.forbids or {}
			table.insert(self.parts.wpn_fps_smg_polymer_body_nine.forbids, "wpn_fps_smg_polymer_m_slim") 		
			table.insert(self.parts.wpn_fps_smg_polymer_body_nine.forbids, "wpn_fps_smg_polymer_m_d50") 		
			table.insert(self.parts.wpn_fps_smg_polymer_body_nine.forbids, "wpn_fps_smg_polymer_m_cmag") 					
			table.insert(self.parts.wpn_fps_smg_polymer_body_nine.forbids, "wpn_fps_smg_polymer_m_speed") 
			
		end
			
	end

end)
