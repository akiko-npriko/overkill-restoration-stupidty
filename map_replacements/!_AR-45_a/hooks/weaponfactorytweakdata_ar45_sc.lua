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

--[[ 				<value_node value="wpn_fps_smg_ar45_s_short"/>	
				<value_node value="wpn_fps_m4_uupg_s_fold"/>
				<value_node value="wpn_fps_m4_uupg_s_zulu"/>]]

Hooks:PostHook( WeaponFactoryTweakData, "init", "ar45stuff_sc", function(self)

	if restoration then

	--Overrides Tables

		self.wpn_fps_smg_ar45.override = self.wpn_fps_smg_ar45.override or {}
		self.wpn_fps_smg_ar45.override.wpn_fps_upg_m4_s_standard = {
			stats = deep_clone(stocks.nocheeks_to_adj_dual_stats),
			custom_stats = deep_clone(stocks.nocheeks_to_adj_dual_stats)
		}
		self.wpn_fps_smg_ar45.override.wpn_fps_upg_m4_s_pts = {
			stats = deep_clone(stocks.nocheeks_to_adj_acc_stats),
			custom_stats = deep_clone(stocks.nocheeks_to_adj_acc_stats)
		}
		self.wpn_fps_smg_ar45.override.wpn_fps_sho_sko12_stock = {
			stats = deep_clone(stocks.nocheeks_to_adj_acc_stats),
			custom_stats = deep_clone(stocks.nocheeks_to_adj_acc_stats)
		}
		self.wpn_fps_smg_ar45.override.wpn_fps_upg_m4_s_crane = {
			stats = deep_clone(stocks.nocheeks_to_adj_rec_stats),
			custom_stats = deep_clone(stocks.nocheeks_to_adj_rec_stats)
		}
		self.wpn_fps_smg_ar45.override.wpn_fps_upg_m4_s_mk46 = {
			stats = deep_clone(stocks.nocheeks_to_adj_rec_stats),
			custom_stats = deep_clone(stocks.nocheeks_to_adj_rec_stats)
		}
		self.wpn_fps_smg_ar45.override.wpn_fps_snp_victor_s_mod0 = {
			stats = deep_clone(stocks.nocheeks_to_adj_rec_stats),
			custom_stats = deep_clone(stocks.nocheeks_to_adj_rec_stats),
			override = {
				wpn_fps_upg_m4_s_adapter = {
					unit = "units/pd2_dlc_savi/weapons/wpn_fps_snp_victor_pts/wpn_fps_snp_victor_s_adapter",
					third_unit = "units/pd2_dlc_savi/weapons/wpn_third_snp_victor_pts/wpn_third_snp_victor_s_adapter"
				}
			}
		}
		self.wpn_fps_smg_ar45.override.wpn_fps_upg_m4_s_ubr = {
			stats = deep_clone(stocks.nocheeks_to_hvy_acc1_rec2_stats),
			custom_stats = deep_clone(stocks.nocheeks_to_hvy_acc1_rec2_stats)
		}
		self.wpn_fps_smg_ar45.override.wpn_fps_snp_tti_s_vltor = {
			stats = deep_clone(stocks.nocheeks_to_hvy_acc2_rec1_stats),
			custom_stats = deep_clone(stocks.nocheeks_to_hvy_acc2_rec1_stats)
		}
		self.wpn_fps_smg_ar45.override.wpn_fps_upg_m4_s_mag = {
			stats = {
				value = 0,
				reload = 3,
				spread = 0,
				recoil = 2,
				concealment = -3,
			},
			custom_stats = deep_clone(stocks.nocheeks_to_adj_dual_stats)
		}
		self.wpn_fps_smg_ar45.override.wpn_fps_upg_m4_s_magless = {
			stats = deep_clone(stocks.nocheeks_to_adj_dual_stats),
			custom_stats = deep_clone(stocks.nocheeks_to_adj_dual_stats)
		}
		self.wpn_fps_smg_ar45.override.wpn_fps_smg_ar45_s_short = {
			stats = deep_clone(stocks.remove_nocheeks_stats),
			custom_stats = deep_clone(stocks.remove_nocheeks_stats)
		}
		self.wpn_fps_smg_ar45.override.wpn_fps_m4_uupg_s_fold = {
				stats = deep_clone(stocks.nocheeks_to_folder_stats),
				custom_stats = deep_clone(stocks.nocheeks_to_folder_stats)
		}
		self.wpn_fps_smg_ar45.override.wpn_fps_m4_uupg_s_zulu = {
			stats = deep_clone(stocks.nocheeks_to_folder_stats),
			custom_stats = deep_clone(stocks.nocheeks_to_folder_stats)
		}

--Other stocks

		self.wpn_fps_smg_ar45.override.wpn_fps_upg_s_saintvictor_hera = {
			stats = deep_clone(stocks.nocheeks_to_thumb_stats),
			custom_stats = deep_clone(stocks.nocheeks_to_thumb_stats)
		}
		self.wpn_fps_smg_ar45.override.wpn_fps_ass_m16_s_fixed = {
			stats = deep_clone(stocks.nocheeks_to_fixed_rec3_stats),
			custom_stats = deep_clone(stocks.nocheeks_to_fixed_rec3_stats)
		}
		
		self.wpn_fps_smg_ar45.override.wpn_fps_ass_m16_s_op = {
			stats = deep_clone(stocks.nocheeks_to_fixed_acc2_rec2_stats),
			custom_stats = deep_clone(stocks.nocheeks_to_fixed_acc2_rec2_stats)
		}
		self.wpn_fps_smg_ar45.override.wpn_fps_ass_tecci_s_minicontra = {
			stats = deep_clone(stocks.nocheeks_to_fixed_rec3_stats),
			custom_stats = deep_clone(stocks.nocheeks_to_fixed_rec3_stats)
		}
		
		self.wpn_fps_smg_ar45.override.wpn_fps_ass_tecci_s_wire = {
			stats = {},
			custom_stats = {}
		}
		self.wpn_fps_smg_ar45.override.wpn_fps_upg_m4_s_hera_paint = {
			stats = deep_clone(stocks.nocheeks_to_thumb_stats),
			custom_stats = deep_clone(stocks.nocheeks_to_thumb_stats)
		}
	

		if self.parts.wpn_fps_ass_tecci_s_minicontra then

			table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_ass_tecci_s_minicontra")
			table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_ass_m16_s_op")
		
		end

		if self.parts.wpn_fps_upg_m4_s_hera_paint then

			table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_upg_m4_s_hera_paint")
			table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_ass_tecci_s_wire")
		
		end

		table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_ass_m16_s_fixed")
		table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_upg_s_saintvictor_hera")

		if self.parts.wpn_fps_pis_czshadow_ns_sparrow then
		
			table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_pis_czshadow_ns_sparrow")
		
		end

	--[[self.wpn_fps_smg_ar45.override.wpn_fps_upg_i_og_rof = {
			stats = {
				spread = 1,
				recoil = 2
			},
			custom_stats = {
				rof_mult = 0.8
			},
			desc_id = ""
		}

		table.insert(self.wpn_fps_smg_ar45.uses_parts, "wpn_fps_upg_i_og_rof")]]

	-- Unique Mods

		self.parts.wpn_fps_smg_ar45_s_flint.supported = true
		self.parts.wpn_fps_smg_ar45_s_flint.stats = deep_clone(stocks.nocheeks_to_adj_acc_stats)
		self.parts.wpn_fps_smg_ar45_s_flint.custom_stats = deep_clone(stocks.nocheeks_to_adj_acc_stats)

		self.parts.wpn_fps_smg_ar45_s_fixed.supported = true
		self.parts.wpn_fps_smg_ar45_s_fixed.stats = deep_clone(stocks.nocheeks_to_fixed_acc2_rec2_stats)
		self.parts.wpn_fps_smg_ar45_s_fixed.custom_stats = deep_clone(stocks.nocheeks_to_fixed_acc2_rec2_stats)
				
		self.parts.wpn_fps_upg_o_handle_ar45.supported = true
		self.parts.wpn_fps_upg_o_handle_ar45.stats = { value = 0 }	
		
		self.parts.wpn_fps_upg_o_dd_ar45.supported = true
		self.parts.wpn_fps_upg_o_dd_ar45.stats = { value = 0 }

		self.parts.wpn_fps_upg_o_mbus_pro_ar45.supported = true
		self.parts.wpn_fps_upg_o_mbus_pro_ar45.stats = { value = 0 }	
		
		self.parts.wpn_fps_smg_ar45_upper_round.supported = true
		self.parts.wpn_fps_smg_ar45_upper_round.stats = {
			value = 2,
			recoil = -2,
			concealment = 1
		}		

		self.parts.wpn_fps_smg_ar45_fg_light.supported = true
		self.parts.wpn_fps_smg_ar45_fg_light.stats = {
			value = 3,
			recoil = -4,
			concealment = 2
		}	

		self.parts.wpn_fps_smg_ar45_fg_long.supported = true
		self.parts.wpn_fps_smg_ar45_fg_long.stats = {
			value = 5,
			spread = 1,
			recoil = 2,
			concealment = -2
		}	

		self.parts.wpn_fps_smg_ar45_fg_m4.supported = true
		self.parts.wpn_fps_smg_ar45_fg_m4.stats = {
			value = 3,
			spread = 1,
			recoil = 0,
			concealment = -1
		}	
		
		self.parts.wpn_fps_smg_ar45_fg_jp.supported = true
		self.parts.wpn_fps_smg_ar45_fg_jp.stats = {
			value = 5,
			spread = 1,
			recoil = -2
		}

		self.parts.wpn_fps_smg_ar45_s_collapse.supported = true
		self.parts.wpn_fps_smg_ar45_s_collapse.stats = deep_clone(stocks.remove_nocheeks_stats)
		self.parts.wpn_fps_smg_ar45_s_collapse.custom_stats = deep_clone(stocks.remove_nocheeks_stats)

		self.parts.wpn_fps_smg_ar45_m_9mm.supported = true
		self.parts.wpn_fps_smg_ar45_m_9mm.keep_damage = true
		self.parts.wpn_fps_smg_ar45_m_9mm.stats = {
			value = 7,
			extra_ammo = 3,
			damage = -6,
			recoil = 6,
			concealment = 1,
			total_ammo_mod = 98
		}
		self.parts.wpn_fps_smg_ar45_m_9mm.custom_stats = {
			damage_min_mult = 0.83333333333,
			rof_mult = 1.13333333333,
			ammo_pickup_max_mul = 8.1 / 6.2,
			ammo_pickup_min_mul = 8.1 / 6.2,
			alt_ammo_pickup_max_mul = 8.1 / 6.2,
			alt_ammo_pickup_min_mul = 8.1 / 6.2,
			ads_speed_mult = 0.9
		}

		self.parts.wpn_fps_smg_ar45_m_d50.keep_damage = true
		self.parts.wpn_fps_smg_ar45_m_d50.supported = true
		self.parts.wpn_fps_smg_ar45_m_d50.stats = {
			value = 9,
			extra_ammo = 20,
			concealment = -1,
			reload = -5,
			total_ammo_mod = 98,
			damage = -6,
			recoil = 6
		}
		self.parts.wpn_fps_smg_ar45_m_d50.custom_stats = {
			damage_min_mult = 0.83333333333,
			rof_mult = 1.13333333333,
			ammo_pickup_max_mul = 8.1 / 6.2,
			ammo_pickup_min_mul = 8.1 / 6.2,
			alt_ammo_pickup_max_mul = 8.1 / 6.2,
			alt_ammo_pickup_min_mul = 8.1 / 6.2,
			ads_speed_mult = 0.9675
		}

		self.parts.wpn_fps_smg_ar45_m_speed.supported = true

		self.parts.wpn_fps_smg_ar45_m_trans.supported = true
		self.parts.wpn_fps_smg_ar45_m_trans.stats = {
			value = 1,
			concealment = 1,
			extra_ammo = -5,
			reload = 3
		}
		self.parts.wpn_fps_smg_ar45_m_trans.custom_stats = { 
			ads_speed_mult = 0.975
		}

	--[[self.parts.wpn_fps_smg_ar45_m_trans.supported = true
		self.parts.wpn_fps_smg_ar45_m_trans.stats = {
			value = 4,
			extra_ammo = 6,
			concealment = -1,
			reload = -1
		}
		self.parts.wpn_fps_smg_ar45_m_trans.custom_stats = {}]]

		self.parts.wpn_fps_smg_ar45_m_short.name_id = "bm_wp_wpn_fps_smg_ar45_m_short_sc"
		self.parts.wpn_fps_smg_ar45_m_short.desc_id = "bm_ar45_m_short_desc_sc"
		self.parts.wpn_fps_smg_ar45_m_short.has_description = true
		self.parts.wpn_fps_smg_ar45_m_short.supported = true
		self.parts.wpn_fps_smg_ar45_m_short.stats = {
			value = 2,
			concealment = 2,
			reload = 5,
			extra_ammo = -20
		}
		self.parts.wpn_fps_smg_ar45_m_short.custom_stats = { 
			ads_speed_mult = 0.95
		}

		self.parts.wpn_fps_smg_ar45_fg_moe.supported = true
		self.parts.wpn_fps_smg_ar45_fg_moe.stats = {
			concealment = -1,
			recoil = 2,
		}

		self.parts.wpn_fps_upg_ar45_upper_custom.supported = true
		self.parts.wpn_fps_upg_ar45_upper_custom.stats = {
			value = 1,
			spread = -1,
			recoil = 2
		}

		self.parts.wpn_fps_upg_ar45_lower_custom.supported = true
		self.parts.wpn_fps_upg_ar45_lower_custom.stats = {
			value = 1,
			spread = 1,
			recoil = -2
		}

		self.parts.wpn_fps_smg_ar45_upper_edge.supported = true
		self.parts.wpn_fps_smg_ar45_upper_edge.stats = {
			value = 0,
			spread = -1,
			concealment = 1
		}

		self.parts.wpn_fps_smg_ar45_fg_lvoa.supported = true
		self.parts.wpn_fps_smg_ar45_fg_lvoa.stats = {
			value = 5,
			concealment = -1,
			recoil = 2
		}

		self.parts.wpn_fps_smg_ar45_lower_tan.supported = true
		self.parts.wpn_fps_smg_ar45_lower_tan.stats = {
			value = 0,
			spread = -1,
			recoil = 2
		}

		self.parts.wpn_fps_smg_ar45_fg_sd.has_description = true
		self.parts.wpn_fps_smg_ar45_fg_sd.desc_id = "bm_wp_upg_suppressor"
		self.parts.wpn_fps_smg_ar45_fg_sd.supported = true
		self.parts.wpn_fps_smg_ar45_fg_sd.stats = {
			value = 0,
			alert_size = 12,
			suppression = -1 
		}
		for k, used_part_id in ipairs(self.wpn_fps_smg_ar45.uses_parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].type then
				if not table.contains(self.wpn_fps_smg_ar45.default_blueprint, used_part_id) then
					if self.parts[used_part_id].type == "barrel_ext" then
						table.insert(self.parts.wpn_fps_smg_ar45_fg_sd.forbids, used_part_id)
					end
				end
			end
		end

		self.parts.wpn_fps_smg_ar45_g_shepheard.supported = true
		self.parts.wpn_fps_smg_ar45_g_shepheard.stats = {
			value = 0,
			recoil = 2,
			spread = -1
		}	

		for factory_id, i in pairs(self) do
			if self[factory_id] and self[factory_id .. "_npc"] then
				if self[factory_id].uses_parts and table.contains(self[factory_id].uses_parts, "wpn_fps_upg_m4_g_sniper") then
					attachment_list = {
						"wpn_fps_smg_ar45_g_shepheard"
					}
					for _, part_id in ipairs(attachment_list) do
						if not table.contains(self[factory_id].uses_parts, part_id) and self.parts[part_id] then
							table.insert(self[factory_id].uses_parts, part_id)
							self[factory_id .. "_npc"].uses_parts = deep_clone(self[factory_id].uses_parts)
						end
						if self[factory_id].override and self[factory_id].override.wpn_fps_upg_m4_g_sniper then
							self[factory_id].override[part_id] = deep_clone(self[factory_id].override.wpn_fps_upg_m4_g_sniper)
							self[factory_id .. "_npc"].override = deep_clone(self[factory_id].override)
						end
						for k, used_part_id in ipairs(self[factory_id].uses_parts) do
							if self.parts[used_part_id] and self.parts[used_part_id].type and self.parts[used_part_id].type ~= "stock" and self.parts[used_part_id].forbids and table.contains(self.parts[used_part_id].forbids, "wpn_fps_upg_m4_g_sniper") then
								if not table.insert(self.parts[used_part_id].forbids, part_id) then
									table.insert(self.parts[used_part_id].forbids, part_id)
								end
							end
						end
					end
				end					
			end
		end

		self.parts.wpn_fps_smg_ar45_m_rowland.supported = true
		self.parts.wpn_fps_smg_ar45_m_rowland.stats = {
			value = 7,
			recoil = -10,
			reload = 3,
			concealment = -1
		}
		self.parts.wpn_fps_smg_ar45_m_rowland.custom_stats = {
			damage_min_mult = 30 / 18,
			rof_mult = 0.8
		}

		self.parts.wpn_fps_smg_ar45_b_fluted.supported = true
		self.parts.wpn_fps_smg_ar45_b_fluted.stats = {
			value = 2,
			recoil = -2,
			concealment = 1
		}	
		self.parts.wpn_fps_smg_ar45_b_fluted.custom_stats = {}

		self.parts.wpn_fps_smg_ar45_fg_cylinder.supported = true
		self.parts.wpn_fps_smg_ar45_fg_cylinder.stats = {
			value = 3,
			recoil = -2,
			spread = 1
		}	

		self.parts.wpn_fps_smg_ar45_fg_smr.supported = true
		self.parts.wpn_fps_smg_ar45_fg_smr.stats = {
			value = 5,
			concealment = -1,
			spread = 1,
		}

		self.parts.wpn_fps_smg_ar45_ck_business.supported = true
		self.parts.wpn_fps_smg_ar45_ck_business.stats = { value = 0 }
		self.parts.wpn_fps_smg_ar45_ck_business.custom_stats = {}
		self.parts.wpn_fps_smg_ar45_ck_business.forbids = {}

		for i, part_id in ipairs(self.wpn_fps_smg_ar45.uses_parts) do
			if self.parts[part_id] and self.parts[part_id].type then
				if self.parts[part_id].type == "upper_reciever" then
					self.parts.wpn_fps_smg_ar45_ck_business.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						override = {},
						adds = {}
					}
				elseif self.parts[part_id].type == "foregrip" then
					self.parts.wpn_fps_smg_ar45_ck_business.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						override = {},
						adds = {}
					}
				elseif self.parts[part_id].type == "lower_reciever" then
					self.parts.wpn_fps_smg_ar45_ck_business.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						override = {},
						adds = {}
					}
				end
			end
		end

		self.parts.wpn_fps_smg_ar45_ck_business.override = self.parts.wpn_fps_smg_ar45_ck_business.override or {}
		self.parts.wpn_fps_smg_ar45_ck_business.override.wpn_fps_smg_ar45_fg_smr = {}
		self.parts.wpn_fps_smg_ar45_ck_business.override.wpn_fps_smg_ar45_fg_lvoa = {
			unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
			third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
			override = {
				wpn_fps_smg_ar45_fl_tlr1 = {
					parent = "exclusive_set"
				},
				wpn_fps_smg_ar45_fl_mount = {
					a_obj = "a_fl_mount",
					parent = "exclusive_set"
				}			
			},
			adds = { 
				"wpn_fps_smg_ar45_fl_tlr1" ,
				"wpn_fps_smg_ar45_fl_mount"
			},
			forbids	= {}			
		}
		self.parts.wpn_fps_smg_ar45_ck_business.override.wpn_fps_smg_ar45_fg_m4 = {
			unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
			third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
			override = {},
			adds = {},
			forbids	= {}	
		}
		self.parts.wpn_fps_smg_ar45_ck_business.override.wpn_fps_smg_ar45_fg_standard = {
			unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
			third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
			override = {},
			adds = {},
			forbids	= {}	
		}
		self.parts.wpn_fps_smg_ar45_ck_business.override.wpn_fps_smg_ar45_fg_moe = {
			unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
			third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
			override = {},
			adds = {},
			forbids	= {}	
		}
		self.parts.wpn_fps_smg_ar45_ck_business.override.wpn_fps_smg_ar45_fg_sd = {
			unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
			third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
			override = {},
			adds = { "wpn_fps_m4_upg_ns_mk12" }
		} 
		self.parts.wpn_fps_smg_ar45_ck_business.override.wpn_fps_smg_ar45_fg_smr_short = {
			unit = "units/mods/weapons/wpn_fps_smg_ar45_business/wpn_fps_smg_ar45_fg_smr_short",
			third_unit = "units/mods/weapons/wpn_third_smg_ar45_business/wpn_third_smg_ar45_fg_smr_short",
		} 
		self.parts.wpn_fps_smg_ar45_ck_business.override.wpn_fps_smg_ar45_fg_smr_mid = {
			unit = "units/mods/weapons/wpn_fps_smg_ar45_business/wpn_fps_smg_ar45_fg_smr_mid",
			third_unit = "units/mods/weapons/wpn_third_smg_ar45_business/wpn_third_smg_ar45_fg_smr_mid",
		} 


		self.parts.wpn_fps_smg_ar45_fg_smr_short.supported = true
		self.parts.wpn_fps_smg_ar45_fg_smr_short.stats = {
			value = 2,
			spread = -2,
			recoil = -2,
			concealment = 3
		}	

		self.parts.wpn_fps_smg_ar45_fg_smr_mid.supported = true
		self.parts.wpn_fps_smg_ar45_fg_smr_mid.stats = {
			value = 1,
			spread = -1,
			recoil = -2,
			concealment = 2
		}	

		self.parts.wpn_fps_upg_ar45_upper_hera.supported = true
		self.parts.wpn_fps_upg_ar45_upper_hera.stats = {
			value = 0,
			recoil = -2,
			concealment = 1
		}	

		self.parts.wpn_fps_upg_ar45_lower_hera.supported = true
		self.parts.wpn_fps_upg_ar45_lower_hera.stats = {
			value = 0,
			spread = -1,
			concealment = 1
		}	

		self.parts.wpn_fps_smg_ar45_lower_milspec.supported = true
		self.parts.wpn_fps_smg_ar45_lower_milspec.stats = {
			value = 2,
			recoil = -2,
			spread = 1
		}		

		self.wpn_fps_smg_ar45_npc.uses_parts = deep_clone(self.wpn_fps_smg_ar45.uses_parts)
		self.wpn_fps_smg_x_ar45_npc.uses_parts = deep_clone(self.wpn_fps_smg_x_ar45.uses_parts)

		if self.parts.wpn_fps_smg_polymer_body_nine then --A Bunch of Exclusive Sets

			self.parts.wpn_fps_smg_polymer_body_nine.forbids = self.parts.wpn_fps_smg_polymer_body_nine.forbids or {}	
			table.insert(self.parts.wpn_fps_smg_polymer_body_nine.forbids, "wpn_fps_smg_ar45_m_speed")
			table.insert(self.parts.wpn_fps_smg_polymer_body_nine.forbids, "wpn_fps_smg_ar45_m_trans")
			table.insert(self.parts.wpn_fps_smg_polymer_body_nine.forbids, "wpn_fps_smg_ar45_m_rowland")
		
		end

		--Akimbo shit
		self.wpn_fps_smg_x_ar45.override = self.wpn_fps_smg_x_ar45.override or {}
		self.wpn_fps_smg_x_ar45.override.wpn_fps_smg_ar45_m_9mm = {
			stats = {
				value = 7,
				extra_ammo = 6,
				damage = -6,
				recoil = 6,
				concealment = 1,
				total_ammo_mod = 98
			},
			custom_stats = {
				damage_min_mult = 0.83333333333,
				rof_mult = 977.5 / 862.5,
				ammo_pickup_max_mul = 8.1 / 6.2,
				ammo_pickup_min_mul = 8.1 / 6.2,
				alt_ammo_pickup_max_mul = 8.1 / 6.2,
				alt_ammo_pickup_min_mul = 8.1 / 6.2,
				ads_speed_mult = 0.9
			}
		}

		self.wpn_fps_smg_x_ar45.override.wpn_fps_smg_ar45_m_d50 = {
			stats = {
				value = 9,
				extra_ammo = 40,
				concealment = -1,
				reload = -5,
				total_ammo_mod = 98,
				damage = -6,
				recoil = 6
			},
			custom_stats = {
				damage_min_mult = 0.83333333333,
				rof_mult = 977.5 / 862.5,
				ammo_pickup_max_mul = 8.1 / 6.2,
				ammo_pickup_min_mul = 8.1 / 6.2,
				alt_ammo_pickup_max_mul = 8.1 / 6.2,
				alt_ammo_pickup_min_mul = 8.1 / 6.2,
				ads_speed_mult = 0.9675
			}
		}

		self.wpn_fps_smg_x_ar45.override.wpn_fps_smg_ar45_m_rowland = {}
		self.wpn_fps_smg_x_ar45.override.wpn_fps_smg_ar45_ck_business = {}

		self.wpn_fps_smg_x_ar45.override.wpn_fps_smg_ar45_m_short = {
			stats = {
				value = 2,
				concealment = 2,
				reload = 5,
				extra_ammo = -40
			},
			custom_stats = { 
				ads_speed_mult = 0.95
			}
		}

		self.wpn_fps_smg_x_ar45.override.wpn_fps_smg_ar45_m_trans = {
			stats = {
				value = 1,
				concealment = 1,
				extra_ammo = -10,
				reload = 3
			},
			custom_stats = { 
				ads_speed_mult = 0.975
			}
		}
		
		--More glock mags for guns with glock mags
		self.wpn_fps_smg_x_ar45.override.wpn_fps_smg_polymer_m_d50 = {
			stats = {
				value = 7,
				concealment = -4,
				reload = -6,
				extra_ammo = 40
			},
			custom_stats = {
				ads_speed_mult = 1.1
			}
		}

		self.wpn_fps_smg_x_ar45.override.wpn_fps_smg_polymer_m_cmag = {
			stats = {
				value = 9,
				extra_ammo = 90,
				reload = -9,
				concealment = -7
			},
			custom_stats = {
				ads_speed_mult = 1.175
			}
		}
		
		--Tacticool magazines
		self.wpn_fps_smg_x_ar45.override.wpn_fps_upg_m_vecsgmt = {
			stats = {
				value = 7,
				concealment = -4,
				reload = -6,
				extra_ammo = 40
			},
			custom_stats = {
				ads_speed_mult = 1.1
			}
		}
		
	end	

end)