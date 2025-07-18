	
--Stolen directly from ResMod

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

Hooks:PostHook(WeaponFactoryTweakData, "init", "socomstuff_sc_init", function(self)

	--ResMod integration

	if restoration then	

	--[[table.insert(self.wpn_fps_snp_sierra458.uses_parts, "wpn_fps_upg_i_singlefire")
		table.insert(self.wpn_fps_snp_sierra458.uses_parts, "wpn_fps_upg_i_autofire")]] --It is now a sniper rifle now that the real FTAC Recon has ResMod Support

		self.parts.wpn_fps_snp_sierra458_s_solid.supported = true
		self.parts.wpn_fps_snp_sierra458_s_solid.stats = deep_clone(stocks.adj_to_fixed_acc_stats)
		self.parts.wpn_fps_snp_sierra458_s_solid.custom_stats = deep_clone(stocks.adj_to_fixed_acc_stats)

		self.parts.wpn_fps_snp_sierra458_b_ecr.supported = true
		self.parts.wpn_fps_snp_sierra458_b_ecr.stats = deep_clone(barrels.short_b1_stats)
		self.parts.wpn_fps_snp_sierra458_b_ecr.custom_stats = deep_clone(barrels.short_b1_stats)

		self.wpn_fps_snp_sierra458.override = self.wpn_fps_snp_sierra458.override or {}	
		self.wpn_fps_snp_sierra458.override.wpn_fps_smg_olympic_s_short = {
			stats = deep_clone(stocks.remove_adj_stats),
			custom_stats = deep_clone(stocks.remove_adj_stats)
		}

	--This is just for the default ammo guns
		self.parts.wpn_fps_snp_sierra458_m_standard.adds = nil
		self.parts.wpn_fps_snp_sierra458_m_transparent.adds = nil
		self.parts.wpn_fps_snp_sierra458_m_d60.adds = nil
		self.parts.wpn_fps_snp_sierra458_m_quick.adds = nil
		self.parts.wpn_fps_snp_sierra458_m_treefiddy.adds = nil
		self.parts.wpn_fps_snp_sierra458_m_short.adds = nil

		self.parts.wpn_fps_snp_sierra458_beowulf_switch.supported = true
		self.parts.wpn_fps_snp_sierra458_beowulf_switch.no_cull = true
		self.parts.wpn_fps_snp_sierra458_beowulf_switch.custom_stats = {
			armor_piercing_override = 1,
			can_shoot_through_wall = true,
			can_shoot_through_shield = true,
			sounds = {
				fire = "ching_fire",
				fire_single = "ching_fire",
				fire_auto = "ching_fire",
				fire_stop = "scar_stop"
			}
		}


		self.parts.wpn_fps_snp_sierra458_ecr_switch.supported = true
		self.parts.wpn_fps_snp_sierra458_ecr_switch.no_cull = true
		self.parts.wpn_fps_snp_sierra458_ecr_switch.custom_stats = {
			sounds = {
				fire = "ching_fire",
				fire_single = "ching_fire",
				fire_auto = "ching_fire",
				fire_stop = "scar_stop"
			}
		}

		--[[Remove these when Gold comes

		self.parts.wpn_fps_snp_sierra458_m_ecr.supported = true
		self.parts.wpn_fps_snp_sierra458_m_ecr.keep_damage = true
		self.parts.wpn_fps_snp_sierra458_m_ecr.stats = {
			value = 0,
			spread = -1,
			recoil = -2
		}
		self.parts.wpn_fps_snp_sierra458_m_ecr.custom_stats = {
			alt_desc = "bm_w_sierra458_beo_desc",
			ads_speed_mult = 1.05,
			rof_mult = 0.9,
			hip_mult = 1.666666,
			sms = 0.7
		}

		self.parts.wpn_fps_snp_sierra458_m_siege.supported = true
		self.parts.wpn_fps_snp_sierra458_m_siege.keep_damage = true
		self.parts.wpn_fps_snp_sierra458_m_siege.stats = {
			value = 0,
			recoil = -4,
			spread = -1,
			concealment = -1,
			reload = 3
		}
		self.parts.wpn_fps_snp_sierra458_m_siege.custom_stats = {
			alt_desc = "bm_w_sierra458_beo_desc",
			ads_speed_mult = 1.05,
			rof_mult = 0.9,
			hip_mult = 1.666666,
			sms = 0.7
		}]]

		self.parts.wpn_fps_snp_sierra458_m_quick.supported = true
		self.parts.wpn_fps_snp_sierra458_m_quick.stats = deep_clone(self.parts.wpn_fps_m4_upg_m_quick.stats)

		self.parts.wpn_fps_snp_sierra458_ecr_switch.supported = true
		self.parts.wpn_fps_snp_sierra458_ecr_switch.no_cull = true
		self.parts.wpn_fps_snp_sierra458_ecr_switch.custom_stats = {
			sounds = {
				fire = "ching_fire",
				fire_single = "ching_fire",
				fire_auto = "ching_fire",
				fire_stop = "scar_stop"
			}
		}

		self.parts.wpn_fps_snp_sierra458_m_beoplus.supported = true
		self.parts.wpn_fps_snp_sierra458_m_beoplus.keep_damage = true
		self.parts.wpn_fps_snp_sierra458_m_beoplus.stats = {
			value = 0,
			damage = 30,
			recoil = -18,
			total_ammo_mod = -136,
			concealment = -1
		}
		self.parts.wpn_fps_snp_sierra458_m_beoplus.custom_stats = {
			alt_desc = "bm_w_sierra458_beo_desc",
			ads_speed_mult = 1.1,
			rof_mult = 0.6125,
			hip_mult = 1.666666,
			damage_min_mult = 1.11111,
			falloff_start_mult = 0.8,
			falloff_end_mult = 0.862068,
			alt_ammo_pickup_min_mul = 0.6,
			alt_ammo_pickup_max_mul = 0.6,
			ammo_pickup_min_mul = 0.6,
			ammo_pickup_max_mul = 0.6,
			sms = 0.9
		}

		self.parts.wpn_fps_snp_sierra458_m_short.supported = true
		self.parts.wpn_fps_snp_sierra458_m_short.stats = {
			value = 0,
			concealment = 2,
			reload = 5,
			extra_ammo = -5
		}
		self.parts.wpn_fps_snp_sierra458_m_short.custom_stats = { 
			ads_speed_mult = 0.95
		}

		self.parts.wpn_fps_snp_sierra458_m_beowulf_short.supported = true
		self.parts.wpn_fps_snp_sierra458_m_beowulf_short.stats = {
			value = 0,
			concealment = 1,
			recoil = -6,
			reload = 5,
			extra_ammo = -5
		}
		self.parts.wpn_fps_snp_sierra458_m_beowulf_short.custom_stats = { 
			ads_speed_mult = 0.95,
			damage_min_mult = 1.3334,
			falloff_start_mult = 0.8,
			falloff_end_mult = 0.862068
		}
		
		self.parts.wpn_fps_snp_sierra458_m_treefiddy.supported = true		
		self.parts.wpn_fps_snp_sierra458_m_treefiddy.stats = deep_clone(self.parts.wpn_fps_m4_upg_m_quick.stats)
		
		self.parts.wpn_fps_snp_sierra458_m_transparent.supported = true		

		self.parts.wpn_fps_snp_sierra458_upper_custom.supported = true
		self.parts.wpn_fps_snp_sierra458_upper_custom.stats = {
			value = 0,
			recoil = 2,
			concealment = -1
		}

		self.parts.wpn_fps_snp_sierra458_lower_custom.supported = true
		self.parts.wpn_fps_snp_sierra458_lower_custom.stats = {
			value = 0,
			recoil = 2,
			spread = -1
		}

		self.parts.wpn_fps_snp_sierra458_ns_comp.supported = true
		self.parts.wpn_fps_snp_sierra458_ns_comp.stats = deep_clone(muzzle_device.muzzle_rec_stats)
		self.parts.wpn_fps_snp_sierra458_ns_comp.custom_stats = deep_clone(muzzle_device.muzzle_rec_custom_stats)

		self.parts.wpn_fps_snp_sierra458_ns_tank.supported = true
		self.parts.wpn_fps_snp_sierra458_ns_tank.stats = deep_clone(muzzle_device.muzzle_c_stats)
		self.parts.wpn_fps_snp_sierra458_ns_tank.custom_stats = deep_clone(muzzle_device.muzzle_c_stats)

		self.parts.wpn_fps_snp_sierra458_fg_desert.supported = true
		self.parts.wpn_fps_snp_sierra458_fg_desert.stats = {
			value = 0,
			recoil = 2,
			concealment = -1
		}
	
	end	

end)

Hooks:PostHook(WeaponFactoryTweakData, "init", "socomsets_sc_init", function(self)

	if restoration then

		--FTAC Recon Set
		self.parts.wpn_fps_snp_sierra458_body_msecho.supported = true
		self.parts.wpn_fps_snp_sierra458_body_msecho.stats = deep_clone(barrels.long_b2_stats) 
		self.parts.wpn_fps_snp_sierra458_body_msecho.custom_stats = {} 		
		self.parts.wpn_fps_snp_sierra458_body_msecho.adds = {}
		self.parts.wpn_fps_snp_sierra458_body_msecho.forbids = { "wpn_fps_snp_sierra458_b_ecr" }
		self.parts.wpn_fps_snp_sierra458_body_msecho.override = {
			wpn_fps_addon_ris = {
				unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
				third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"
			},	
			wpn_fps_upg_m4_s_standard_vanilla = {
				unit = "units/mods/weapons/wpn_fps_snp_sierra458_msecho/wpn_fps_snp_sierra458_s_msecho"
			},
			wpn_fps_snp_sierra458_o_down = {
				unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
				third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
				adds = { "wpn_fps_upg_o_mbus_msecho_down" }
			},
			wpn_fps_upg_sierra458_o_backup = {
				unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
				third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
				adds = { "wpn_fps_upg_o_mbus_msecho" },
				stance_mod = {
					wpn_fps_snp_sierra458 = {
						translation = Vector3(0, 0, 0),
						rotation = Rotation(-0, 0, 0)
					}
				}
			},
			wpn_fps_amcar_bolt_standard = {
				unit = "units/mods/weapons/wpn_fps_snp_sierra458_msecho/wpn_fps_snp_sierra458_bolt_msecho"
			},
			wpn_fps_m4_uupg_draghandle = {
				unit = "units/pd2_dlc_mxm/weapons/wpn_fps_upg_mxm_m4/wpn_fps_m4_uupg_draghandle_radian",
				third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_m4_uupg_draghandle_core/wpn_third_m4_uupg_draghandle_core"
			},
			wpn_fps_upg_vg_ass_smg_afg = {
				parent= "exclusive_set",
				a_obj= "a_vg_tti"	
			}
		}
		for i, part_id in ipairs(self.wpn_fps_snp_sierra458.uses_parts) do
			if self.parts[part_id] and self.parts[part_id].type then
				if self.parts[part_id].type == "foregrip" then
					self.parts.wpn_fps_snp_sierra458_body_msecho.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						override = {},
						forbids = {},
						adds = {}
					}
				elseif self.parts[part_id].type == "upper_reciever" then
					self.parts.wpn_fps_snp_sierra458_body_msecho.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = { "wpn_fps_snp_sierra458_upper_msecho" },
						override = {}
					}
				elseif self.parts[part_id].type == "lower_reciever" then
					self.parts.wpn_fps_snp_sierra458_body_msecho.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = { "wpn_fps_snp_sierra458_lower_msecho" },
						override = {}
					}
				elseif self.parts[part_id].type == "gadget" then
					self.parts.wpn_fps_snp_sierra458_body_msecho.override[part_id] = {
						parent = "exclusive_set",
						a_obj = "a_fl_tti"
					}
				end
			end
		end			

		--Beowulf ECR set
		self.parts.wpn_fps_snp_sierra458_body_ecr.supported = true
		self.parts.wpn_fps_snp_sierra458_body_ecr.desc_id = "bm_wp_wpn_fps_snp_sierra458_body_ecr_sc_desc"
		self.parts.wpn_fps_snp_sierra458_body_ecr.custom_stats = {
				burst_fire = {
				count = 3,
				rof_mult = 1.3,
				delay = 0.320,
				recoil_mult = 0.85,
				last_recoil_mult = 1.05
			},
			info_add_burst = true
		}
		self.parts.wpn_fps_snp_sierra458_body_ecr.stats = {
			recoil = -2,
			spread = -2
		}
		self.parts.wpn_fps_snp_sierra458_body_ecr.adds = { "wpn_fps_snp_sierra458_fg_ecr" }
		self.parts.wpn_fps_snp_sierra458_body_ecr.forbids = { "wpn_fps_snp_sierra458_m_bush", "wpn_fps_snp_sierra458_m_beoplus" }
		self.parts.wpn_fps_snp_sierra458_body_ecr.override = {
			wpn_fps_snp_sierra458_m_standard = {
				adds = {"wpn_fps_snp_sierra458_ecr_switch"}
			},
			wpn_fps_snp_sierra458_m_quick = {
				adds = {"wpn_fps_snp_sierra458_ecr_switch"}
			},
			wpn_fps_snp_sierra458_m_treefiddy = {
				adds = {"wpn_fps_snp_sierra458_ecr_switch"}
			},
			wpn_fps_snp_sierra458_m_d60 = {
				adds = {"wpn_fps_snp_sierra458_ecr_switch"}
			},
			wpn_fps_snp_sierra458_m_transparent = {
				adds = {"wpn_fps_snp_sierra458_ecr_switch"}
			},
			wpn_fps_snp_sierra458_m_short = {
				adds = {"wpn_fps_snp_sierra458_ecr_switch"}
			},
			wpn_fps_addon_ris = {
				unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
				third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"
			},	
			wpn_fps_snp_sierra458_fg_standard = {
				unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
				third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"
			},	
			wpn_fps_m16_s_solid = {
				unit = "units/mods/weapons/wpn_fps_snp_sierra458_ecr/wpn_fps_snp_sierra458_s_ecr",
				third_unit = "units/pd2_dlc_chico/weapons/wpn_third_ass_contraband_pts/wpn_third_ass_contraband_s_standard"
			},
			wpn_fps_upg_m4_g_standard = {
				unit = "units/mods/weapons/wpn_fps_snp_sierra458_ecr/wpn_fps_snp_sierra458_g_ecr"
			},
			wpn_fps_upg_m4_g_standard_vanilla = {
				unit = "units/mods/weapons/wpn_fps_snp_sierra458_ecr/wpn_fps_snp_sierra458_g_ecr"
			},
			wpn_fps_amcar_bolt_standard = {
				unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_bolt_edge"
			},
			wpn_fps_m4_uupg_draghandle = {
				unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_fps_ass_tecci_dh_standard",
				third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_dh_standard"
			}
		}
		for i, part_id in ipairs(self.wpn_fps_snp_sierra458.uses_parts) do
			if self.parts[part_id] and self.parts[part_id].type then
				if self.parts[part_id].type == "upper_reciever" then
					self.parts.wpn_fps_snp_sierra458_body_ecr.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = { "wpn_fps_snp_sierra458_upper_ecr" },
						override = {}
					}
				elseif self.parts[part_id].type == "lower_reciever" then
					self.parts.wpn_fps_snp_sierra458_body_ecr.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = { "wpn_fps_snp_sierra458_lower_ecr" },
						override = {}
					}
				elseif self.parts[part_id].type == "gadget" then
					self.parts.wpn_fps_snp_sierra458_body_ecr.override[part_id] = {
						parent = "exclusive_set",
						a_obj = "a_fl_ecr_2"
					}
				end
			end
		end	

		for k, used_part_id in ipairs(self.wpn_fps_snp_sierra458.uses_parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].type and self.parts[used_part_id].pcs then
				if not table.contains(self.wpn_fps_snp_sierra458.default_blueprint, used_part_id) then
					if self.parts[used_part_id].type == "foregrip" then
						table.insert(self.parts.wpn_fps_snp_sierra458_body_ecr.forbids, used_part_id )
					end
				end
			end
		end

		--Maverick AR-15.50 set
		self.parts.wpn_fps_snp_sierra458_body_siege.supported = true
		self.parts.wpn_fps_snp_sierra458_body_siege.stats = { value = 0 }
		self.parts.wpn_fps_snp_sierra458_body_siege.custom_stats = {}
		self.parts.wpn_fps_snp_sierra458_body_siege.forbids = { "wpn_fps_m4_uupg_fg_rail_ext" }
		self.parts.wpn_fps_snp_sierra458_body_siege.adds = {
			"wpn_fps_snp_sierra458_os_siege",
			"wpn_fps_snp_sierra458_upper_siege",
			"wpn_fps_snp_sierra458_lower_siege",
			"wpn_fps_snp_sierra458_ris_siege"
		}
		self.parts.wpn_fps_snp_sierra458_body_siege.override = {
			wpn_fps_addon_ris = {
				unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
				third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"
			},	
			wpn_fps_snp_sierra458_os_siege = {
				parent = "exclusive_set",
				a_obj = "a_os"			
			},
			wpn_fps_snp_sierra458_ris_siege = {
				parent = "exclusive_set",
				a_obj = "a_fl"
			},	
			wpn_fps_upg_m4_s_standard_vanilla = {
				unit = "units/mods/weapons/wpn_fps_snp_sierra458_siege/wpn_fps_snp_sierra458_s_siege"
			},
			wpn_fps_upg_m4_g_standard = {
				unit = "units/mods/weapons/wpn_fps_snp_sierra458_siege/wpn_fps_snp_sierra458_g_siege"
			},
			wpn_fps_upg_m4_g_standard_vanilla = {
				unit = "units/mods/weapons/wpn_fps_snp_sierra458_siege/wpn_fps_snp_sierra458_g_siege"
			},
			wpn_fps_amcar_bolt_standard = {
				unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_bolt_edge"
			},
			wpn_fps_m4_uupg_draghandle = {
				unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_fps_ass_tecci_dh_standard",
				third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_dh_standard"
			},
			wpn_fps_snp_sierra458_o_down = {
				unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
				third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"
			},
			wpn_fps_upg_sierra458_o_backup = {
				unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
				third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
				adds = { "wpn_fps_ass_m16_o_handle_sight" },
				override = {
					wpn_fps_ass_m16_os_frontsight = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"
					}
				},
				stance_mod = {
					wpn_fps_snp_sierra458 = {
						translation = Vector3(0, 0, 0),
						rotation = Rotation(-0, 0, 0)
					}
				}
			}
		}
		
		for i, part_id in ipairs(self.wpn_fps_snp_sierra458.uses_parts) do
			if self.parts[part_id] and self.parts[part_id].type then
				if self.parts[part_id].type == "foregrip" then
					self.parts.wpn_fps_snp_sierra458_body_siege.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						override = {},
						forbids = {},
						adds = {}
					}
				elseif self.parts[part_id].type == "upper_reciever" then
					self.parts.wpn_fps_snp_sierra458_body_siege.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = {},
						override = {}
					}
				elseif self.parts[part_id].type == "lower_reciever" then
					self.parts.wpn_fps_snp_sierra458_body_siege.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = {},
						override = {}
					}
				elseif self.parts[part_id].type == "gadget" then
					self.parts.wpn_fps_snp_sierra458_body_siege.override[part_id] = {
						parent = "exclusive_set",
						a_obj = "a_fl"
					}
				elseif self.parts[part_id].type == "barrel" then
					self.parts.wpn_fps_snp_sierra458_body_siege.override[part_id] = {
						unit = "units/mods/weapons/wpn_fps_snp_sierra458_siege/wpn_fps_snp_sierra458_b_siege_dummy",
						third_unit = "units/mods/weapons/wpn_fps_snp_sierra458_siege/wpn_fps_snp_sierra458_b_siege_dummy",
						adds = { "wpn_fps_snp_sierra458_b_siege" }
					}
				end
			end
		end	

		--Beowulf TCR set
		self.parts.wpn_fps_snp_sierra458_body_tcr.supported = true
		self.parts.wpn_fps_snp_sierra458_body_tcr.stats = { value = 0 }
		self.parts.wpn_fps_snp_sierra458_body_tcr.custom_stats = {}
		self.parts.wpn_fps_snp_sierra458_body_tcr.forbids = {}

		for i, part_id in ipairs(self.wpn_fps_snp_sierra458.uses_parts) do
			if self.parts[part_id] and self.parts[part_id].type then
				if self.parts[part_id].type == "foregrip" then
					self.parts.wpn_fps_snp_sierra458_body_tcr.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						override = {},
						forbids = {},
						adds = {}
					}
				elseif self.parts[part_id].type == "upper_reciever" then
					self.parts.wpn_fps_snp_sierra458_body_tcr.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = { "wpn_fps_m4_upper_reciever_round" },
						override = {}
					}
				elseif self.parts[part_id].type == "lower_reciever" then
					self.parts.wpn_fps_snp_sierra458_body_tcr.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = { "wpn_fps_m4_lower_reciever" },
						override = {}
					}
				elseif self.parts[part_id].type == "gadget" then
					self.parts.wpn_fps_snp_sierra458_body_tcr.override[part_id] = {
						parent = "exclusive_set",
						a_obj = "a_fl"
					}
				end
			end
		end	

		--GFL Beowulf set
		self.parts.wpn_fps_snp_sierra458_body_gfl.supported = true
		self.parts.wpn_fps_snp_sierra458_body_gfl.stats = { 
			value = 0,
			concealment = 2,
			recoil = -2,
			spread = -1
		}
		self.parts.wpn_fps_snp_sierra458_body_gfl.custom_stats = {}
		self.parts.wpn_fps_snp_sierra458_body_gfl.forbids = {}

		for i, part_id in ipairs(self.wpn_fps_snp_sierra458.uses_parts) do
			if self.parts[part_id] and self.parts[part_id].type then
				if self.parts[part_id].type == "upper_reciever" then
					self.parts.wpn_fps_snp_sierra458_body_gfl.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = { "wpn_fps_m4_upper_reciever_round" },
						override = {}
					}
				elseif self.parts[part_id].type == "lower_reciever" then
					self.parts.wpn_fps_snp_sierra458_body_gfl.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = { "wpn_fps_m4_lower_reciever" },
						override = {}
					}
				elseif self.parts[part_id].type == "gadget" then
					self.parts.wpn_fps_snp_sierra458_body_gfl.override[part_id] = {
						parent = "exclusive_set",
						a_obj = "a_fl"
					}
				end
			end
		end	

		for k, used_part_id in ipairs(self.wpn_fps_snp_sierra458.uses_parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].type and self.parts[used_part_id].pcs then
				if not table.contains(self.wpn_fps_snp_sierra458.default_blueprint, used_part_id) then
					if self.parts[used_part_id].type == "foregrip" then
						table.insert(self.parts.wpn_fps_snp_sierra458_body_gfl.forbids, used_part_id )
					end
				end
			end
		end

		--FNV Survivalist Rifle set
		self.parts.wpn_fps_snp_sierra458_body_fnv.supported = true
		self.parts.wpn_fps_snp_sierra458_body_fnv.stats = { 
			value = 0,
			concealment = -3,
			recoil = 2,
			spread = 2
		}
		self.parts.wpn_fps_snp_sierra458_body_fnv.custom_stats = deep_clone(barrels.long_b2_stats)
		self.parts.wpn_fps_snp_sierra458_body_fnv.forbids = {}

		for i, part_id in ipairs(self.wpn_fps_snp_sierra458.uses_parts) do
			if self.parts[part_id] and self.parts[part_id].type then
				if self.parts[part_id].type == "upper_reciever" then
					self.parts.wpn_fps_snp_sierra458_body_fnv.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = {},
						override = {}
					}
				elseif self.parts[part_id].type == "lower_reciever" then
					self.parts.wpn_fps_snp_sierra458_body_fnv.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = {},
						override = {}
					}
				elseif self.parts[part_id].type == "gadget" then
					self.parts.wpn_fps_snp_sierra458_body_fnv.override[part_id] = {
						parent = "exclusive_set",
						a_obj = "a_fl"
					}
				end
			end
		end	

		for k, used_part_id in ipairs(self.wpn_fps_snp_sierra458.uses_parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].type and self.parts[used_part_id].pcs then
				if not table.contains(self.wpn_fps_snp_sierra458.default_blueprint, used_part_id) then
					if self.parts[used_part_id].type == "foregrip" or
					self.parts[used_part_id].type == "barrel" then
						table.insert(self.parts.wpn_fps_snp_sierra458_body_fnv.forbids, used_part_id )
					end
				end
			end
		end
		
	end

end)

--[[		if self.parts.wpn_fps_ass_m16_body_556_tcr then


			for i, part_id in ipairs(self.wpn_fps_ass_m16.uses_parts) do
				if self.parts[part_id] and self.parts[part_id].type then
					if self.parts[part_id].type == "gadget" then
						self.parts.wpn_fps_ass_m16_body_556_tcr.override[part_id] = {
							parent = "exclusive_set",
							a_obj = "a_fl"
						}
					elseif self.parts[part_id].type == "barrel" then
						self.parts.wpn_fps_ass_m16_body_556_tcr.override[part_id] = {
							a_obj = "a_fg"
						}
					end
				end
			end	

			for k, used_part_id in ipairs(self.wpn_fps_ass_m16.uses_parts) do
				if self.parts[used_part_id] and self.parts[used_part_id].type then
					if not table.contains(self.wpn_fps_ass_m16.default_blueprint, used_part_id) and not table.contains(self.parts.wpn_fps_ass_m16_body_556_tcr.forbids, used_part_id) then
						if self.parts[used_part_id].type == "foregrip" or
						self.parts[used_part_id].type == "upper_reciever" or
						self.parts[used_part_id].type == "lower_reciever" or
						self.parts[used_part_id].type == "vertical_grip" then
							if self.parts[used_part_id].stats then
								table.insert(self.parts.wpn_fps_ass_m16_body_556_tcr.forbids, used_part_id)
							end
						elseif self.parts[used_part_id].type == "magazine" then
							if (self.parts[used_part_id].stats and (self.parts[used_part_id].stats.extra_ammo and self.parts[used_part_id].stats.extra_ammo > 15)) or
							(self.parts[used_part_id].custom_stats and (self.parts[used_part_id].custom_stats.damage_min_mult or self.parts[used_part_id].custom_stats.rof_mult)) then
								table.insert(self.parts.wpn_fps_ass_m16_body_556_tcr.forbids, used_part_id)
							end
						end
					end
				end
			end
		
			self.parts.wpn_fps_ass_m16_body_556_tcr.override = self.parts.wpn_fps_ass_m16_body_556_tcr.override or {}
			self.parts.wpn_fps_ass_m16_body_556_tcr.override.wpn_fps_ass_m4_os_frontsight = {
				unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
				third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"
			}
			self.parts.wpn_fps_ass_m16_body_556_tcr.override.wpn_fps_upg_m16_os_victor_frontsight = {
				unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
				third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"
			}
			self.parts.wpn_fps_ass_m16_body_556_tcr.override.wpn_fps_m16_s_solid_vanilla = {
				unit = "units/mods/weapons/wpn_fps_snp_sierra458_ecr/wpn_fps_snp_sierra458_s_ecr",
				third_unit = "units/pd2_dlc_chico/weapons/wpn_third_ass_contraband_pts/wpn_third_ass_contraband_s_standard"
			}
		
			self.parts.wpn_fps_ass_m16_body_556_tcr.supported = true
			self.parts.wpn_fps_ass_m16_body_556_tcr.forbids = { "wpn_fps_upg_m4_m_quad" }	
			self.parts.wpn_fps_ass_m16_body_556_tcr.alt_icon = "guis/dlcs/mods/textures/pd2/blackmarket/icons/mods/wpn_fps_snp_sierra458_body_tcr"
			self.parts.wpn_fps_ass_m16_body_556_tcr.name_id = "bm_wp_wpn_fps_snp_sierra458_body_tcr"
			self.parts.wpn_fps_ass_m16_body_556_tcr.desc_id = "bm_wp_wpn_fps_snp_sierra458_body_tcr_556_desc"
			self.parts.wpn_fps_ass_m16_body_556_tcr.stats = {
				value = 0,
				spread = 4,
				recoil = -6,
				concealment = -5,
				total_ammo_mod = -82
			}
			self.parts.wpn_fps_ass_m16_body_556_tcr.custom_stats = {
				alt_desc = "bm_wp_wpn_fps_snp_sierra458_body_tcr_556_desc",
				hs_mult_desc = true,
				lock_semi = true,
				rof_mult = 0.85714285714,
				ads_speed_mult = 0.88235294117,
				alt_ammo_pickup_min_mul = 0.54385964912,
				alt_ammo_pickup_max_mul = 0.54385964912,
				ammo_pickup_min_mul = 0.54385964912,
				ammo_pickup_max_mul = 0.54385964912,
				can_shoot_through_enemy = false,
				can_shoot_through_wall = false,
				can_shoot_through_shield = false,
				can_shoot_through_enemy_unlim = false,
				ignore_rof_mult_anims = true,
				armor_piercing_add = 0.25,
				armor_piercing_override = 0.25,
				hs_mult = 1.5,
				srm = {
					-0.02,
					{1, 1.1},
					4
				}
			}
			self.parts.wpn_fps_ass_m16_body_556_tcr.perks = {
				"fire_mode_single"
			}
			self.parts.wpn_fps_ass_m16_body_556_tcr.adds = {
				"wpn_fps_m4_uupg_fg_rail_ext_dummy",
				"wpn_fps_ass_m16_tcr_switch"
			}]]