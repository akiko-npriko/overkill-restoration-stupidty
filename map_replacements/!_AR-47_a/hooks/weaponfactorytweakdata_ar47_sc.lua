	
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

Hooks:PostHook(WeaponFactoryTweakData, "init", "mallninja762init_sc", function(self)

	--ResMod integration

	if BeardLib.Utils:FindMod("RestorationMod") then

		if self.parts.wpn_fps_vg_vmp_pod then

			table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_ass_contraband_s_tecci")

			table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_vg_vmp_cheems")
			table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_vg_vmp_pod")
			table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_vg_vmp_vert")
			table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_vg_vmp_medium")
		
		end

		if self.parts.wpn_fps_ass_scarl_bolt then

			table.insert(self.wpn_fps_ass_scarl.uses_parts, "wpn_fps_ass_m16_m_soviet")
		
		end

		self.parts.wpn_fps_ass_ar47_vg_hera.pcs = {}
		self.parts.wpn_fps_ass_ar47_vg_hera.supported = true
		self.parts.wpn_fps_ass_ar47_vg_hera.stats = {
			spread = 2,
			recoil = 2,
			concealment = -3
		}

		self.parts.wpn_fps_upg_ass_ar47_b_short.override = {}
		self.parts.wpn_fps_upg_ass_ar47_b_sd.override = {
			wpn_fps_ass_ar47_sd_suppressor = {
				parent = "barrel",
				a_obj = "a_ns"		
			}
		}

		table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_upg_i_m16a2") --Cause I wanted to use a burst-fire, 60 damage AR-15 without using the M16
		table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_upg_o_northtac")

		self.parts.wpn_fps_ass_ar47_s_solid.supported = true
		self.parts.wpn_fps_ass_ar47_s_solid.stats = deep_clone(stocks.adj_to_fixed_acc_stats)
		self.parts.wpn_fps_ass_ar47_s_solid.custom_stats = deep_clone(stocks.adj_to_fixed_acc_stats)

		--C7 Set
		self.parts.wpn_fps_ass_ar47_body_c7.supported = true
		self.parts.wpn_fps_ass_ar47_body_c7.stats = deep_clone(barrels.long_b3_stats) 
		self.parts.wpn_fps_ass_ar47_body_c7.stats.recoil = -2
		self.parts.wpn_fps_ass_ar47_body_c7.custom_stats = deep_clone(barrels.long_b3_stats)
		self.parts.wpn_fps_ass_ar47_body_c7.custom_stats.rof_mult = 1.1		
		self.parts.wpn_fps_ass_ar47_body_c7.adds = {
			"wpn_fps_ass_ar47_fg_c7", 
			"wpn_fps_ass_ar47_os_frontsight_c7"
		}
		self.parts.wpn_fps_ass_ar47_body_c7.forbids = {
			"wpn_fps_upg_ass_ar47_b_sd", 
			"wpn_fps_ass_ar47_b_ck", 
			"wpn_fps_upg_ass_ar47_b_heavy",
			"wpn_fps_smg_schakal_vg_surefire"
		}
		self.parts.wpn_fps_ass_ar47_body_c7.override = {
			wpn_fps_addon_ris = {
				unit = "units/mods/weapons/wpn_fps_ass_ar47_c7/wpn_fps_ass_ar47_b_c7_short_dummy",
				third_unit = "units/mods/weapons/wpn_fps_ass_ar47_c7/wpn_fps_ass_ar47_b_c7_short_dummy"
			},	
			wpn_fps_upg_ass_ar47_b_short = {
				unit = "units/mods/weapons/wpn_fps_ass_ar47_c7/wpn_fps_ass_ar47_b_c7_short_dummy",
				third_unit = "units/mods/weapons/wpn_fps_ass_ar47_c7/wpn_fps_ass_ar47_b_c7_short_dummy",
				adds = { "wpn_fps_m4_uupg_b_medium_c7" }
			},		
			wpn_fps_ass_ar47_b_standard = {
				unit = "units/mods/weapons/wpn_fps_ass_ar47_c7/wpn_fps_ass_ar47_b_c7_standard_dummy",
				third_unit = "units/mods/weapons/wpn_fps_ass_ar47_c7/wpn_fps_ass_ar47_b_c7_standard_dummy",
				adds = { "wpn_fps_m4_uupg_b_long_c7" }
			},
			wpn_fps_upg_m4_g_standard_vanilla = {
				unit = "units/mods/weapons/wpn_fps_ass_ar47_c7/wpn_fps_ass_ar47_g_c7"
			},
			wpn_fps_ass_ar47_ns_standard = {
				unit = "units/mods/weapons/wpn_fps_ass_ar47_c7/wpn_fps_ass_ar47_b_c7_standard_dummy",
				third_unit = "units/mods/weapons/wpn_fps_ass_ar47_c7/wpn_fps_ass_ar47_b_c7_standard_dummy"
			},
			wpn_fps_upg_m4_s_standard_vanilla = {
				unit = "units/mods/weapons/wpn_fps_ass_ar47_c7/wpn_fps_ass_ar47_s_c7_standard"
			},
			wpn_fps_upg_m4_s_standard = {
				unit = "units/mods/weapons/wpn_fps_ass_ar47_c7/wpn_fps_ass_ar47_s_c7_standard"
			},
			wpn_fps_ass_ar47_o_standard = {
				unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
				third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
				adds = { "wpn_fps_ass_m16_o_handle_sight" },
				stance_mod = {
					wpn_fps_ass_ar47 = {
						translation = Vector3(0.015, -1, -0.1),
						rotation = Rotation(-0, -0, 0)
					}
				}
			},
			wpn_fps_ass_m16_fg_smooth = {
				unit = "units/mods/weapons/wpn_fps_ass_ar47_c7/wpn_fps_ass_ar47_b_c7_standard_dummy",
				third_unit = "units/mods/weapons/wpn_fps_ass_ar47_c7/wpn_fps_ass_ar47_b_c7_standard_dummy"
			},
			wpn_fps_ass_ar47_o_down = {
				unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
				third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
			},
			wpn_fps_m16_s_solid = {
				unit = "units/mods/weapons/wpn_fps_ass_ar47_c7/wpn_fps_ass_ar47_s_c7"
			},
			wpn_fps_m16_s_solid_vanilla = {
				unit = "units/mods/weapons/wpn_fps_ass_ar47_c7/wpn_fps_ass_ar47_s_c7"
			},
			wpn_fps_ass_m16_os_frontsight = {
				a_obj = "a_os"			
			}
		}
		for i, part_id in ipairs(self.wpn_fps_ass_ar47.uses_parts) do
			if self.parts[part_id] and self.parts[part_id].type then
				if self.parts[part_id].type == "foregrip" then
					self.parts.wpn_fps_ass_ar47_body_c7.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = {},
						override = {},
						forbids = {}
					}
				elseif self.parts[part_id].type == "vertical_grip" then
					self.parts.wpn_fps_ass_ar47_body_c7.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = { "wpn_fps_ass_ar47_vg_c7" },
						override = {}
					}
				elseif self.parts[part_id].type == "upper_reciever" then
					self.parts.wpn_fps_ass_ar47_body_c7.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = { "wpn_fps_ass_ar47_upper_c7" },
						override = {}
					}
				elseif self.parts[part_id].type == "lower_reciever" then
					self.parts.wpn_fps_ass_ar47_body_c7.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = { "wpn_fps_ass_ar47_lower_c7" },
						override = {}
					}
				elseif self.parts[part_id].type == "gadget" then
					self.parts.wpn_fps_ass_ar47_body_c7.override[part_id] = {
						parent = "exclusive_set",
						a_obj = "a_fl_c7"
					}
				end
			end
		end

		for i, part_id in ipairs(self.wpn_fps_ass_m16.uses_parts) do
			if self.parts[part_id] and self.parts[part_id].type then
				if self.parts[part_id].type == "foregrip" then
					self.parts.wpn_fps_ass_ar47_body_c7.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = {},
						override = {},
						forbids = {}
					}
				elseif self.parts[part_id].type == "vertical_grip" then
					self.parts.wpn_fps_ass_ar47_body_c7.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = { "wpn_fps_ass_ar47_vg_c7" },
						override = {}
					}
				elseif self.parts[part_id].type == "upper_reciever" then
					self.parts.wpn_fps_ass_ar47_body_c7.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = { "wpn_fps_ass_ar47_upper_c7" },
						override = {}
					}
				elseif self.parts[part_id].type == "lower_reciever" then
					self.parts.wpn_fps_ass_ar47_body_c7.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = { "wpn_fps_ass_ar47_lower_c7" },
						override = {}
					}
				elseif self.parts[part_id].type == "gadget" then
					self.parts.wpn_fps_ass_ar47_body_c7.override[part_id] = {
						parent = "exclusive_set",
						a_obj = "a_fl_c7"
					}
				end
			end
		end

		self.parts.wpn_fps_m4_uupg_b_medium_c7 = deep_clone(self.parts.wpn_fps_m4_uupg_fg_rail_ext)
		self.parts.wpn_fps_m4_uupg_b_medium_c7.unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_uupg_b_medium"
		self.parts.wpn_fps_m4_uupg_b_medium_c7.third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_uupg_b_medium"

		self.parts.wpn_fps_ass_ar47_os_c7 = deep_clone(self.parts.wpn_fps_m4_uupg_fg_rail_ext)
		self.parts.wpn_fps_ass_ar47_os_c7.unit = "units/payday2/weapons/wpn_fps_ass_m16_pts/wpn_fps_ass_m16_os_frontsight"
		self.parts.wpn_fps_ass_ar47_os_c7.third_unit = "units/payday2/weapons/wpn_third_ass_m16_pts/wpn_third_ass_m16_os_frontsight"
		self.parts.wpn_fps_ass_ar47_os_c7.a_obj = "a_os"

		self.parts.wpn_fps_m4_uupg_b_long_c7 = deep_clone(self.parts.wpn_fps_m4_uupg_fg_rail_ext)
		self.parts.wpn_fps_m4_uupg_b_long_c7.unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_uupg_b_long"
		self.parts.wpn_fps_m4_uupg_b_long_c7.third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_uupg_b_long"		
		
		self.parts.wpn_fps_ass_ar47_upper_c7 = deep_clone(self.parts.wpn_fps_m4_upper_reciever_round)
		self.parts.wpn_fps_ass_ar47_upper_c7.unit = "units/mods/weapons/wpn_fps_ass_ar47_c7/wpn_fps_ass_ar47_upper_c7"
		self.parts.wpn_fps_ass_ar47_upper_c7.third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_upper_reciever_round"

		self.parts.wpn_fps_ass_ar47_lower_c7 = deep_clone(self.parts.wpn_fps_ass_tecci_lower_reciever)
		self.parts.wpn_fps_ass_ar47_lower_c7.unit = "units/mods/weapons/wpn_fps_ass_ar47_c7/wpn_fps_ass_ar47_lower_c7"		
		self.parts.wpn_fps_ass_ar47_lower_c7.third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_lower_reciever"
		self.parts.wpn_fps_ass_ar47_lower_c7.adds = {}

	--[[self.wpn_fps_ass_m16.override = self.wpn_fps_ass_m16.override or {}		
		self.wpn_fps_ass_m16.override.wpn_fps_ass_ar47_body_c7 = {
			stats = {
				recoil = -2
			},
			custom_stats = {
				rof_mult = 1.1
			},
			adds = { "wpn_fps_ass_ar47_fg_c7" },
			forbids = table.list_add(self.parts.wpn_fps_ass_ar47_body_c7.forbids,{ "wpn_fps_ass_ar47_vg_c7" })
			
		}]]

		self.wpn_fps_ass_m16.override = self.wpn_fps_ass_m16.override or {}		
		self.wpn_fps_ass_m16.override.wpn_fps_ass_ar47_fg_c7 = {
			forbids = { "wpn_fps_ass_ar47_vg_c7" }
		}
		self.wpn_fps_ass_m16.override.wpn_fps_ass_ar47_body_c7 = {
			stats = {
				recoil = -2
			},
			custom_stats = {
				rof_mult = 1.1
			}
		}

		self.parts.wpn_fps_ass_ar47_m_pmag.supported = true
		self.parts.wpn_fps_ass_ar47_m_pmag.stats = {
			concealment = -1,
			spread = 1
		}
		self.parts.wpn_fps_ass_ar47_m_pmag.custom_stats = {}

		--HK416 Set

		self.parts.wpn_fps_ass_ar47_hk416.supported = true
		self.parts.wpn_fps_ass_ar47_hk416.stats = {
			value = 0,
			spread = 1,
			recoil = 4,
			concealment = -3
		}
		self.parts.wpn_fps_ass_ar47_hk416.custom_stats = deep_clone(barrels.long_b1_stats)			

		self.parts.wpn_fps_ass_ar47_hk416.forbids = { 
			"wpn_fps_upg_ass_ar47_b_sd", 
			"wpn_fps_ass_ar47_b_ck", 
			"wpn_fps_upg_ass_ar47_b_heavy",
			"wpn_fps_m4_uupg_fg_rail_ext" 
		}

		for i, part_id in ipairs(self.wpn_fps_ass_ar47.uses_parts) do
			if self.parts[part_id] and self.parts[part_id].type then
				if self.parts[part_id].type == "foregrip" then
					self.parts.wpn_fps_ass_ar47_hk416.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = {},
						override = {},
						forbids = {}
					}
				elseif self.parts[part_id].type == "vertical_grip" then
					self.parts.wpn_fps_ass_ar47_hk416.override[part_id] = {
						parent = "exclusive_set"
					}
				elseif self.parts[part_id].type == "upper_reciever" then
					self.parts.wpn_fps_ass_ar47_hk416.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = { "wpn_fps_m4_upper_reciever_round" },
						override = {}
					}
				elseif self.parts[part_id].type == "gadget" then
					self.parts.wpn_fps_ass_ar47_hk416.override[part_id] = {
						parent = "exclusive_set"
					}
				end
			end
		end

		self.parts.wpn_fps_ass_ar47_hk416.override = self.parts.wpn_fps_ass_ar47_hk416.override or {}
		self.parts.wpn_fps_ass_ar47_hk416.override.wpn_fps_ass_tecci_lower_reciever = {
			unit = "units/mods/weapons/wpn_fps_ass_ar47_hk416/wpn_fps_ass_ar47_lower_hk416"
		}
		self.parts.wpn_fps_ass_ar47_hk416.override.wpn_fps_m4_upper_reciever_round = {
			unit = "units/mods/weapons/wpn_fps_ass_ar47_hk416/wpn_fps_ass_ar47_upper_hk416",
			third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_upper_reciever"
		}
	--[[self.parts.wpn_fps_ass_ar47_hk416.override.wpn_fps_ass_ar47_o_standard = {
			unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
			third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
			adds = { "wpn_fps_ass_ar47_o_hk416", "wpn_fps_ass_hk416_gasblock_up" },
			stance_mod = {
				wpn_fps_ass_ar47 = {
					translation = Vector3(0, -3, 1.55),
					rotation = Rotation(0, 0, 0)
				}
			},
			override = {
				wpn_fps_ass_hk416_gasblock_down = {
					unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
					third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"					
				}
			}
		}]]

		self.parts.wpn_fps_upg_ass_ar47_b_heavy_gasblock.visibility = {
			{
				objects = {
					g_barrel = false
				}
			}
		}

		self.parts.wpn_fps_ass_hk416_gasblock.visibility = {
			{
				objects = {
					g_barrel = false,
					g_flipup = false,
					g_flipdown = false
				}
			}
		}

		self.parts.wpn_fps_ass_hk416_gasblock_down.visibility = {
			{
				objects = {
					g_barrel = false,
					g_gas = false,
					g_flipup = false,
					g_flipdown = true
				}
			}
		}

		self.parts.wpn_fps_ass_hk416_gasblock_up.visibility = {
			{
				objects = {
					g_barrel = false,
					g_gas = false,
					g_flipup = true,
					g_flipdown = false
				}
			}
		}

		self.parts.wpn_fps_ass_ar47_m_d60.supported = true
		self.parts.wpn_fps_ass_ar47_m_d60.stats = {
			value = 0,
			recoil = 2,
			concealment = -4,
			reload = -6,
			extra_ammo = 30
		}
		self.parts.wpn_fps_ass_ar47_m_d60.custom_stats = {
			rof_mult = 1.33334,
			falloff_start_mult = 0.75,
			falloff_end_mult = 0.75,
			ads_speed_mult = 1.1
		}

		self.parts.wpn_fps_ass_ar47_m_pmag.bullet_objects = {
			prefix = "g_bullet_", 
			amount = 30
		}

		self.parts.wpn_fps_ass_ar47_m_d60.bullet_objects = {
			prefix = "g_bullet_", 
			amount = 6
		}

--[[table.insert(self.wpn_fps_ass_l85a2.uses_parts, "wpn_fps_ass_ar47_m_blk")
		table.insert(self.wpn_fps_ass_m16.uses_parts, "wpn_fps_ass_ar47_m_blk")

		self.wpn_fps_ass_l85a2.override = self.wpn_fps_ass_l85a2.override or {}
		self.wpn_fps_ass_l85a2.override.wpn_fps_ass_ar47_m_blk = {
			stats = {
				value = 0,
				recoil = -4,
				concealment = -4
			},
			custom_stats = {
				damage_min_mult = 1.8,
				falloff_start_mult = 0.75,
				falloff_end_mult = 0.55384615384
			}
		}

		self.wpn_fps_ass_m16.override = self.wpn_fps_ass_m16.override or {}
		self.wpn_fps_ass_m16.override.wpn_fps_ass_ar47_m_blk = {
			stats = {
				value = 0,
				recoil = -4,
				concealment = -4
			},
			custom_stats = {
				damage_min_mult = 1.8,
				falloff_start_mult = 0.75,
				falloff_end_mult = 0.55384615384
			}
		}]]

		self.parts.wpn_fps_ass_m16_m_soviet.supported = true
		self.parts.wpn_fps_ass_m16_m_soviet.has_description = false
		self.parts.wpn_fps_ass_m16_m_soviet.desc_id = {}
		self.parts.wpn_fps_ass_m16_m_soviet.adds = { "wpn_fps_ass_ar47_762_sound_switch" }
		self.parts.wpn_fps_ass_m16_m_soviet.stats = {
			value = 0,
			recoil = -4,
			concealment = -3
		}
		self.parts.wpn_fps_ass_m16_m_soviet.custom_stats = {
			rof_mult = 0.9,
			damage_min_mult = 1.5,
			falloff_end_mult = 0.73846153846
		}

	--[[self.wpn_fps_ass_l85a2.override = self.wpn_fps_ass_l85a2.override or {}
		self.wpn_fps_ass_l85a2.override.wpn_fps_ass_m16_m_soviet = {
			stats = {
				spread = 1,
				concealment = -1
			},
			custom_stats = {
				rof_mult = 0.9,
				damage_min_mult = 1.2
			}
		}

		table.insert(self.wpn_fps_ass_ar47.uses_parts, "wpn_fps_m4_uupg_m_std")

		self.wpn_fps_ass_ar47.override = self.wpn_fps_ass_ar47.override or {}
		self.wpn_fps_ass_ar47.override.wpn_fps_m4_uupg_m_std = {
			name_id = "bm_wp_wpn_fps_ass_ar47_m_std",
			stats = {
				value = 8,
				spread = 2,
				recoil = 6,
				damage = -6,
				total_ammo_mod = 49
			},
			custom_stats = {
				rof_mult = 1.08333333,
				falloff_end_mult = 1.142857,
				falloff_start_mult = 1.1875,
				damage_min_mult = 0.8333333,
				ads_speed_mult = 0.93333333,
				alt_ammo_pickup_min_mul = 1.298245,
				alt_ammo_pickup_max_mul = 1.298245,
				ammo_pickup_min_mul = 1.298245,
				ammo_pickup_max_mul = 1.298245,
			}
		}]]

		self.wpn_fps_ass_l85a2.override = self.wpn_fps_ass_l85a2.override or {}
		self.wpn_fps_ass_l85a2.override.wpn_fps_ass_m16_m_soviet = {}

		self.parts.wpn_fps_ass_ar47_fg_standard_old.supported = true
		self.parts.wpn_fps_ass_ar47_fg_standard_old.stats = { value = 0 }
	
	end

end)

Hooks:PostHook(WeaponFactoryTweakData, "init", "ar47bdgrpts_sc", function(self)

	if self.wpn_fps_ass_bdgr and BeardLib.Utils:FindMod("RestorationMod") then

		table.insert(self.wpn_fps_ass_bdgr.uses_parts, "wpn_fps_ass_bdgr_m_soviet")
		table.insert(self.wpn_fps_ass_bdgr.uses_parts, "wpn_fps_ass_bdgr_m_blk")			

		self.parts.wpn_fps_ass_bdgr_m_soviet.supported = true
		self.parts.wpn_fps_ass_bdgr_m_soviet.name_id = "bm_wp_wpn_fps_ass_m16_m_soviet"
		self.parts.wpn_fps_ass_bdgr_m_soviet.stats = {
			value = 10,
			recoil = -2
		}
		self.parts.wpn_fps_ass_bdgr_m_soviet.alt_icon = "guis/dlcs/mods/textures/pd2/blackmarket/icons/mods/wpn_fps_ass_ar47_m_pmag"
		self.parts.wpn_fps_ass_bdgr_m_soviet.custom_stats = {
			rof_mult = 0.75,
			falloff_start_mult = 1.25,
			falloff_end_mult = 1.25
		}
		self.parts.wpn_fps_ass_bdgr_m_soviet.bullet_objects = {prefix = "g_bullet_", amount = 30}		

		self.parts.wpn_fps_ass_bdgr_m_blk.supported = true
		self.parts.wpn_fps_ass_bdgr_m_blk.name_id = "bm_wp_wpn_fps_ass_ar47_m_blk"
		self.parts.wpn_fps_ass_bdgr_m_blk.stats = {}
		self.parts.wpn_fps_ass_bdgr_m_blk.alt_icon = "guis/dlcs/mods/textures/pd2/blackmarket/icons/mods/wpn_fps_ass_ar47_m_blk"
		self.parts.wpn_fps_ass_bdgr_m_blk.custom_stats = {}
		self.parts.wpn_fps_ass_bdgr_m_blk.bullet_objects = {prefix = "g_bullet_", amount = 3}			

	end
	
end)	