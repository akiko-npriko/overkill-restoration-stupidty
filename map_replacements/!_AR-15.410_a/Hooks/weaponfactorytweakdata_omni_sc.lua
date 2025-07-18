
--Stolen directly from ResMod

local barrels = {
	--Short Barrel
	--barrels.short_b1_stats
		short_b1_stats = {
			value = 2,
			spread = -1,
			concealment = 1,
			falloff_start_mult = 0.925,
			falloff_end_mult = 0.925,
			ads_speed_mult = 0.975
		},
	--Shorter Barrel
	--barrels.short_b2_stats
		short_b2_stats = {
			value = 2,
			spread = -2,
			concealment = 2,
			falloff_start_mult = 0.85,
			falloff_end_mult = 0.85,
			ads_speed_mult = 0.95
		},
	--Shortest Barrel
	--barrels.short_b3_stats
		short_b3_stats = {
			value = 2,
			spread = -3,
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

Hooks:PostHook(WeaponFactoryTweakData, "init", "omniresmod", function(self)

	if BeardLib.Utils:FindMod("Weapon Texture Reworks") then	

		self.parts.wpn_fps_shot_omni_os_frontsight.unit = "units/mods/weapons/wpn_fps_shot_omni_pts/wpn_fps_shot_omni_os_frontsight_gsma"

	end

	--Partial ResMod integration

	if BeardLib.Utils:FindMod("RestorationMod") then

		self.parts.wpn_fps_upg_o_irons_mp7_down.visibility = {
			{
				objects = {
					g_sights_up_lod0 = false,
					g_sights_lod0 = true
				}
			}
		}

	--[[self.parts.wpn_fps_shot_omni_m_pmag.bullet_objects = {
			prefix = "g_shell_", 
			amount = 10
		}

		self.parts.wpn_fps_shot_omni_m_contraband.bullet_objects = {
			prefix = "g_shell_", 
			amount = 10
		}

		self.parts.wpn_fps_shot_omni_m_standard.bullet_objects = {
			prefix = "g_shell_", 
			amount = 2
		}]]
	
		self.parts.wpn_fps_shot_omni_m_pmag.supported = true
		self.parts.wpn_fps_shot_omni_m_pmag.stats = {
			concealment = 1,
			recoil = -2
		}
		self.parts.wpn_fps_shot_omni_m_pmag.custom_stats = {}
		self.parts.wpn_fps_shot_omni_m_contraband.custom_stats = {}

		self.parts.wpn_fps_shot_omni_m_t14.supported = true
		self.parts.wpn_fps_shot_omni_m_t14.stats = {
			spread = -1,
			recoil = 2
		}

		self.parts.wpn_fps_shot_omni_m_ext.supported = true
		self.parts.wpn_fps_shot_omni_m_ext.stats = {
			value = 2,
			extra_ammo = 5,
			reload = -3,
			concealment = -1
		}
		self.parts.wpn_fps_shot_omni_m_ext.custom_stats = {
			ads_speed_mult = 1.025
		}

		self.parts.wpn_fps_shot_omni_b_ecr.supported = true
		self.parts.wpn_fps_shot_omni_b_ecr.stats = deep_clone(barrels.short_b1_stats)
		self.parts.wpn_fps_shot_omni_b_ecr.custom_stats = deep_clone(barrels.short_b1_stats)

		self.parts.wpn_fps_shot_omni_fg_para.supported = true
		self.parts.wpn_fps_shot_omni_fg_para.stats = deep_clone(barrels.short_b2_stats)
		self.parts.wpn_fps_shot_omni_fg_para.custom_stats = deep_clone(barrels.short_b2_stats)

		--Wall Set
		self.parts.wpn_fps_shot_omni_body_wall.supported = true
		self.parts.wpn_fps_shot_omni_body_wall.stats = {}
		self.parts.wpn_fps_shot_omni_body_wall.custom_stats = {}
		self.parts.wpn_fps_shot_omni_body_wall.forbids = {"wpn_fps_ass_m16_os_frontsight", "wpn_fps_ass_m4_os_frontsight", "wpn_fps_shot_omni_fg_para"}
		self.parts.wpn_fps_shot_omni_body_wall.adds = {"wpn_fps_upg_o_irons_mp7_down"}
		self.parts.wpn_fps_shot_omni_body_wall.override = {
			wpn_fps_amcar_bolt_standard = {
				unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_ass_m4_bolt_ballos/wpn_fps_upg_ass_m4_bolt_ballos"
			},
			wpn_fps_m4_uupg_draghandle = {
				unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_m4_uupg_draghandle_ballos/wpn_fps_m4_uupg_draghandle_ballos",
				third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_m4_uupg_draghandle_ballos/wpn_third_m4_uupg_draghandle_ballos"
			},
			wpn_fps_upg_m4_s_standard_vanilla = {
				unit = "units/mods/weapons/wpn_fps_shot_omni_wall/wpn_fps_shot_omni_s_wall",
				third_unit = "units/mods/weapons/wpn_third_shot_omni_wall/wpn_third_shot_omni_s_wall"
			},
			wpn_fps_upg_m4_s_standard = {
				unit = "units/mods/weapons/wpn_fps_shot_omni_wall/wpn_fps_shot_omni_s_wall",
				third_unit = "units/mods/weapons/wpn_third_shot_omni_wall/wpn_third_shot_omni_s_wall"
			},
			wpn_fps_shot_omni_o_standard = {
				unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
				third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
				adds = { "wpn_fps_upg_o_irons_mp7" },
				forbids = {"wpn_fps_upg_o_irons_mp7_down"},
				stance_mod = {
					wpn_fps_shot_omni = {
						translation = Vector3(-0.03, -2, 0.72),
						rotation = Rotation(-0.1, 0, 0)
					}
				}
			},
			wpn_fps_addon_ris = {
				parent = "exclusive_set",
				a_obj = "a_fl_smr"			
			},
			wpn_fps_upg_o_xpsg33_magnifier = {
				forbids = {"wpn_fps_upg_o_irons_mp7_down"}
			},
			wpn_fps_upg_o_sig = {
				forbids = {"wpn_fps_upg_o_irons_mp7_down"}
			}
		}
		for i, part_id in ipairs(self.wpn_fps_shot_omni.uses_parts) do
			if self.parts[part_id] and self.parts[part_id].type then
				if self.parts[part_id].type == "foregrip" then
					self.parts.wpn_fps_shot_omni_body_wall.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = {},
						override = {},
						forbids = {}
					}
				elseif self.parts[part_id].type == "upper_reciever" then
					self.parts.wpn_fps_shot_omni_body_wall.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = { "wpn_fps_shot_omni_upper_wall" },
						override = {}
					}
				elseif self.parts[part_id].type == "lower_reciever" then
					self.parts.wpn_fps_shot_omni_body_wall.override[part_id] = {
						unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
						adds = { "wpn_fps_shot_omni_lower_wall" },
						override = {}
					}
				elseif self.parts[part_id].type == "gadget" then
					self.parts.wpn_fps_shot_omni_body_wall.override[part_id] = {
						parent = "exclusive_set",
						a_obj = "a_fl_smr"
					}
				end
			end
		end
		
	end

end )