
--Stolen directly from ResMod

--Barrels
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
	--Shortestest Barrel
	--barrels.short_b4_stats
		short_b4_stats = {
			value = 2,
			spread = -8,
			concealment = 4,
			falloff_start_mult = 0.7,
			falloff_end_mult = 0.7,
			ads_speed_mult = 0.9
		},
	--Shortestest-est Barrel
	--barrels.short_b4_stats
		short_b5_stats = {
			value = 2,
			spread = -10,
			concealment = 5,
			falloff_start_mult = 0.625,
			falloff_end_mult = 0.625,
			ads_speed_mult = 0.875
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

Hooks:PostHook(WeaponFactoryTweakData, "init", "additionalpartsinit_sc", function(self)

	--Partial ResMod integration

	if BeardLib.Utils:FindMod("RestorationMod") then

-- AK mods

			self.parts.wpn_fps_upg_m16_fg_railed_a4.forbids = self.parts.wpn_fps_upg_m16_fg_railed_a4.forbids or {}
			table.insert(self.parts.wpn_fps_upg_m16_fg_railed_a4.forbids, "wpn_fps_ass_m4_os_frontsight")

			table.insert(self.wpn_fps_lmg_rpk.uses_parts, "wpn_fps_upg_ak_fg_reversecombo")
			table.insert(self.wpn_fps_lmg_rpk.uses_parts, "wpn_fps_upg_ak_fg_vityaz")
			table.insert(self.wpn_fps_lmg_rpk.uses_parts, "wpn_fps_upg_ak_fg_74m")
			table.insert(self.wpn_fps_lmg_rpk.uses_parts, "wpn_fps_upg_ak_fg_rota")

			self.wpn_fps_lmg_rpk.override = self.wpn_fps_lmg_rpk.override or {}
			self.wpn_fps_lmg_rpk.override.wpn_fps_upg_ak_s_rpk = {
				stats = deep_clone(stocks.fixed_rec_stats),
				custom_stats = deep_clone(stocks.fixed_rec_stats)
			}

			--StG-940 Mag Stock			
			self.wpn_fps_lmg_rpk.override.wpn_fps_upg_ak_s_mag = {
				stats = {        
					spread = -1,
					concealment = -1,
					reload = 3
				},
				custom_stats = nil
			}

			--Modern Handguard			
			self.wpn_fps_lmg_rpk.override.wpn_fps_upg_ak_fg_vityaz = {
				adds = {
					"wpn_fps_upg_vg_ass_smg_verticalgrip_vanilla"
				},
				forbids = {
					"wpn_fps_ak_extra_ris"
				}
			}

			--Regretless Handguard			
			self.wpn_fps_lmg_rpk.override.wpn_fps_upg_ak_fg_reversecombo = {
				adds = {
					"wpn_fps_upg_vg_ass_smg_verticalgrip_vanilla"
				},
				forbids = {
					"wpn_fps_ak_extra_ris"
				}
			}

			--Goliath Handguard			
			self.wpn_fps_lmg_rpk.override.wpn_fps_upg_ak_fg_rota = {
				adds = {
					"wpn_fps_upg_vg_ass_smg_verticalgrip_vanilla"
				}
			}

			--Plastic Modern Handguard			
			self.wpn_fps_lmg_rpk.override.wpn_fps_upg_ak_fg_74m = {
				adds = {
					"wpn_fps_upg_vg_ass_smg_verticalgrip_vanilla",
					"wpn_fps_pis_usp_fl_adapter"
				},
				unit = "units/mods/weapons/wpn_fps_upg_74m_pts/wpn_fps_upg_ak_fg_74m_plum"
			}

			self.wpn_fps_lmg_rpk.override.wpn_fps_pis_usp_fl_adapter = {
				a_obj = "a_vg",
				parent = "shitass"
			}

			--AS Val Stock
			self.wpn_fps_lmg_rpk.override.wpn_fps_upg_ak_s_asval = {
				stats = deep_clone(stocks.fixed_to_folder_stats),
				custom_stats = deep_clone(stocks.fixed_to_folder_stats)
			}

			--RPK Topless Handguard
			self.parts.wpn_fps_lmg_rpk_fg_topless.supported = true
			self.parts.wpn_fps_lmg_rpk_fg_topless.stats = {
				recoil = -2,
				concealment = 1
			}
			self.parts.wpn_fps_lmg_rpk_fg_topless.adds = {
				"wpn_fps_lmg_rpk_b_topless",
				"wpn_fps_upg_vg_ass_smg_verticalgrip_vanilla"
			}
			self.parts.wpn_fps_lmg_rpk_fg_topless.forbids = {"wpn_fps_addon_ris"}
			self.parts.wpn_fps_lmg_rpk_fg_topless.override = {
				wpn_fps_ak_extra_ris = {
					unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
					third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
					adds = { "wpn_fps_lmg_rpk_fg_topless_extra" }
				},
				wpn_fps_upg_o_ak_scopemount = {
					forbids = { "wpn_fps_lmg_rpk_fg_topless_extra" }
				},
				wpn_fps_upg_fl_ass_smg_sho_peqbox = { parent = "foregrip" },
				wpn_fps_upg_fl_ass_smg_sho_surefire = { parent = "foregrip" },
				wpn_fps_upg_fl_ass_peq15 = { parent = "foregrip" },
				wpn_fps_upg_fl_ass_laser = { parent = "foregrip" },
				wpn_fps_upg_fl_ass_utg = { parent = "foregrip" },
				wpn_fps_upg_fl_dbal_laser = { parent = "foregrip" }
			}

			self.parts.wpn_fps_lmg_rpk_fg_topless_extra = deep_clone(self.parts.wpn_fps_m4_uupg_fg_rail_ext)
			self.parts.wpn_fps_lmg_rpk_fg_topless_extra.unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_upg_ak_fg_combo3"
			self.parts.wpn_fps_lmg_rpk_fg_topless_extra.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_upg_ak_fg_combo3"
			self.parts.wpn_fps_lmg_rpk_fg_topless_extra.visibility = {
				{
					objects = {
						g_lowerrail = false,
					}
				}
			}

			--StG-943 Barrel
			self.parts.wpn_fps_upg_ak_b_stg_short.pcs = {}
			self.parts.wpn_fps_upg_ak_b_stg_short.supported = true
			self.parts.wpn_fps_upg_ak_b_stg_short.stats = deep_clone(barrels.short_b1_stats)
			self.parts.wpn_fps_upg_ak_b_stg_short.custom_stats = deep_clone(barrels.short_b1_stats)

			--StG-940 Barrel
			self.parts.wpn_fps_upg_ak_b_stg.supported = true
			self.parts.wpn_fps_upg_ak_b_stg.stats = {
				value = 4,
				recoil = -2,
				spread = 1
			}
			self.parts.wpn_fps_upg_ak_b_stg.custom_stats = {}

			--StG-940 Handguard
			self.parts.wpn_fps_upg_ak_fg_stg.supported = true
			self.parts.wpn_fps_upg_ak_fg_stg.stats = {
				spread = 1,
				recoil = 2,
				concealment = -2
			}

			--StG-940 Mag Stock
			self.parts.wpn_fps_upg_ak_s_mag.supported = true
			self.parts.wpn_fps_upg_ak_s_mag.stats = {
				recoil = 4,
				concealment = -4,
				reload = 3
			}
			self.parts.wpn_fps_upg_ak_s_mag.custom_stats = {
				ads_speed_mult = 1.075
			}

			self.wpn_fps_ass_akm.override = self.wpn_fps_ass_akm.override or {}
			self.wpn_fps_ass_akm.override.wpn_fps_upg_ak_s_mag = {
				stats = {
					recoil = 4,
					spread = 1,
					concealment = -5,
					reload = 3
				},
				custom_stats = deep_clone(stocks.nocheeks_to_fixed_rec3_stats)
			}

			self.wpn_fps_ass_akm_gold.override = self.wpn_fps_ass_akm_gold.override or {}
			self.wpn_fps_ass_akm_gold.override.wpn_fps_upg_ak_s_mag = {
				stats = {
					recoil = 4,
					spread = 1,
					concealment = -5,
					reload = 3
				},
				custom_stats = deep_clone(stocks.nocheeks_to_fixed_rec3_stats)
			}

			self.wpn_fps_smg_akmsu.override = self.wpn_fps_smg_akmsu.override or {}
			self.wpn_fps_smg_akmsu.override.wpn_fps_upg_ak_s_mag = {
				stats = {
					recoil = 4,
					spread = 1,
					concealment = -5,
					reload = 3
				},
				custom_stats = deep_clone(stocks.nocheeks_to_fixed_rec3_stats)
			}
	
			--AK Galil Handguard
			self.parts.wpn_fps_upg_ak_fg_galil.supported = true
			self.parts.wpn_fps_upg_ak_fg_galil.stats = {
				spread = 2,
				recoil = 2,
				concealment = -3
			}
			self.parts.wpn_fps_upg_ak_fg_galil.custom_stats = nil

			table.insert(self.wpn_fps_ass_groza.uses_parts, "wpn_fps_upg_ak_m_double")		
			table.insert(self.wpn_fps_ass_groza.uses_parts, "wpn_fps_upg_ak_m_basset")	
			table.insert(self.wpn_fps_ass_groza.uses_parts, "wpn_fps_upg_ak_m_bakeband")
		
			if BeardLib.Utils:FindMod("Custom Attachment Points") then	

				self.wpn_fps_ass_groza.override = self.wpn_fps_ass_groza.override or {}
				self.wpn_fps_ass_groza.override.wpn_fps_upg_ak_m_basset = { a_obj = "a_m_fix" } 
				self.wpn_fps_ass_groza.override.wpn_fps_upg_ak_m_double = { a_obj = "a_m_fix" } 
				self.wpn_fps_ass_groza.override.wpn_fps_upg_ak_m_bakeband = { a_obj = "a_m_fix" } 
				self.wpn_fps_ass_groza.override.wpn_fps_upg_groza_m_bakelite = { a_obj = "a_m_fix" } 

			end

			table.insert(self.wpn_fps_ass_asval.uses_parts, "wpn_fps_upg_ak_s_mag")
			table.insert(self.wpn_fps_ass_asval.uses_parts, "wpn_fps_upg_ak_s_rpk")
		
			self.wpn_fps_ass_asval.override = self.wpn_fps_ass_asval.override or {}
			self.wpn_fps_ass_asval.override.wpn_fps_upg_ak_s_mag = {
				adds = { "wpn_fps_ass_asval_g_standard", "wpn_fps_upg_ak_s_mag_pad"}
			}
			self.wpn_fps_ass_asval.override.wpn_fps_upg_m4_s_cut = {
				adds = { "wpn_fps_ass_asval_g_standard"}
			}
			self.wpn_fps_ass_asval.override.wpn_fps_upg_ak_s_galil_sniper = {
				adds = { "wpn_fps_ass_asval_g_standard"}
			}
			self.wpn_fps_ass_asval.override.wpn_fps_upg_ak_s_rpk = {
				adds = { "wpn_fps_ass_asval_g_standard"}
			}

			--Tactical Flash Hider
			self.parts.wpn_fps_upg_ns_ass_smg_vityaz.supported = true
			self.parts.wpn_fps_upg_ns_ass_smg_vityaz.desc_id = "bm_wp_upg_flash_hider"
			self.parts.wpn_fps_upg_ns_ass_smg_vityaz.has_description = true
			self.parts.wpn_fps_upg_ns_ass_smg_vityaz.perks = {}
			self.parts.wpn_fps_upg_ns_ass_smg_vityaz.stats = deep_clone(muzzle_device.supp_c_duo_stats)
			self.parts.wpn_fps_upg_ns_ass_smg_vityaz.stats.suppression = 12
			self.parts.wpn_fps_upg_ns_ass_smg_vityaz.custom_stats = deep_clone(muzzle_device.muzzle_c_duo_custom_stats)
			self.parts.wpn_fps_upg_ns_ass_smg_vityaz.custom_stats.muzzleflash = "effects/payday2/particles/weapons/9mm_auto_silence_fps"

		--[[self.parts.wpn_fps_upg_ns_ass_smg_vityaz.supported = true
			self.parts.wpn_fps_upg_ns_ass_smg_vityaz.name_id = "bm_wp_wpn_fps_upg_ns_ass_smg_vityaz_sc"
			--self.parts.wpn_fps_upg_ns_ass_smg_vityaz.desc_id = "bm_wp_upg_flash_hider"
			self.parts.wpn_fps_upg_ns_ass_smg_vityaz.has_description = true
			self.parts.wpn_fps_upg_ns_ass_smg_vityaz.perks = {}
			self.parts.wpn_fps_upg_ns_ass_smg_vityaz.stats = {
				recoil = -2
			}
			self.parts.wpn_fps_upg_ns_ass_smg_vityaz.custom_stats = {
				rof_mult = 1.1	
			}]]

			--StG-940 Grip
			self.parts.wpn_fps_upg_ak_g_stg.pcs = {}
			self.parts.wpn_fps_upg_ak_g_stg.supported = true
			self.parts.wpn_fps_upg_ak_g_stg.stats = deep_clone(grips.recoil_1)
			self.parts.wpn_fps_upg_ak_g_stg.custom_stats = {}
			self.parts.wpn_fps_upg_ak_g_stg.forbids = {
				"wpn_upg_ak_g_standard",
				"wpn_fps_ass_asval_g_standard"
			}

			--Black Winter AK-12 parts
			self.parts.wpn_fps_ass_flint_fg_afg.supported = true
			self.parts.wpn_fps_ass_flint_fg_afg.stats = {
				spread = 1,
				concealment = -1
			}

			self.parts.wpn_fps_ass_flint_body_receiver_black.supported = true
			self.parts.wpn_fps_ass_flint_body_receiver_black.stats = {
				recoil = -2,
				concealment = 1
			}

			--Slavic Hazard Barrel
			self.parts.wpn_fps_lmg_rpk_b_draco.supported = true
			self.parts.wpn_fps_lmg_rpk_b_draco.stats = deep_clone(barrels.short_b5_stats)
			self.parts.wpn_fps_lmg_rpk_b_draco.custom_stats = deep_clone(barrels.short_b5_stats)

			-- Reaper Mag
			self.parts.wpn_fps_upg_ak_m_basset.supported = true
			self.parts.wpn_fps_upg_ak_m_basset.stats = deep_clone(self.parts.wpn_fps_upg_ak_m_uspalm.stats)

			--Classic Bakelite Mag
			self.parts.wpn_fps_ass_flint_m_bakelite.supported = true
			self.parts.wpn_fps_ass_flint_m_bakelite.stats = {
				recoil = 2,
				concealment = -1
			}
			self.parts.wpn_fps_ass_flint_m_bakelite.custom_stats = nil

			--AK-12 DMR Barrel
			self.parts.wpn_fps_ass_flint_b_dmr.supported = true
			self.parts.wpn_fps_ass_flint_b_dmr.stats = deep_clone(barrels.long_b3_stats)
			self.parts.wpn_fps_ass_flint_b_dmr.custom_stats = deep_clone(barrels.long_b3_stats)
			self.parts.wpn_fps_ass_flint_b_dmr.forbids = {}

			--Regretless Handguard
			self.parts.wpn_fps_upg_ak_fg_reversecombo.supported = true
			self.parts.wpn_fps_upg_ak_fg_reversecombo.stats = {
				recoil = -2,
				spread = 1
			}

			--Goliath Handguard
			self.parts.wpn_fps_upg_ak_fg_rota.supported = true
			self.parts.wpn_fps_upg_ak_fg_rota.stats = {
				concealment = -1,
				spread = 1
			}

			self.parts.wpn_fps_upg_saiga_fg_rota.supported = true
			self.parts.wpn_fps_upg_saiga_fg_rota.stats = {
				concealment = -1,
				spread = 1
			}

			self.parts.wpn_fps_upg_saiga_fg_ak.supported = true
			self.parts.wpn_fps_upg_saiga_fg_ak.stats = {
				concealment = 2,
				recoil = -4
			}

			for i, part_id in ipairs(self.wpn_fps_ass_74.uses_parts) do
				if self.parts[part_id] and self.parts[part_id].type then
					if self.parts[part_id].type == "sight" then
						self.parts.wpn_fps_upg_ak_fg_reversecombo.override[part_id] = {
							a_obj = "a_of"
						}
					end
				end
			end

			for i, part_id in ipairs(self.wpn_fps_ass_akm.uses_parts) do
				if self.parts[part_id] and self.parts[part_id].type then
					if self.parts[part_id].type == "sight" then
						self.parts.wpn_fps_upg_ak_fg_stg.override[part_id] = {
							a_obj = "a_of"
						}
					end
				end
			end

			--German Export Stock
			self.parts.wpn_fps_upg_ak_s_magless.supported = true
			self.parts.wpn_fps_upg_ak_s_magless.stats = deep_clone(stocks.nocheeks_to_fixed_rec3_stats)
			self.parts.wpn_fps_upg_ak_s_magless.custom_stats = deep_clone(stocks.nocheeks_to_fixed_rec3_stats)

			--Lightened Handguard
			self.parts.wpn_fps_smg_akmsu_fg_drgv.supported = true
			self.parts.wpn_fps_smg_akmsu_fg_drgv.stats = {
				value = 1,
				concealment = -1,
				recoil = 2
			}

			--For the AKS-74U set
			if self.parts.wpn_fps_upg_i_rpk74 then

				self.parts.wpn_fps_upg_i_rpk74.forbids = self.parts.wpn_fps_upg_i_rpk74.forbids or {}
				table.insert(self.parts.wpn_fps_upg_i_rpk74.forbids, "wpn_fps_upg_ak_m_double")
				table.insert(self.parts.wpn_fps_upg_i_rpk74.forbids, "wpn_fps_upg_ak_m_bakeband")
				
			end	

			--AKMSU Plastic Handguard
			self.parts.wpn_fps_smg_akmsu_fg_plastic.supported = true
			self.parts.wpn_fps_smg_akmsu_fg_plastic.stats = {
				value = 1,
				recoil = -2,
				concealment = 1
			}
		
			for i, part_id in ipairs(self.wpn_fps_smg_akmsu.uses_parts) do
				if self.parts[part_id] and self.parts[part_id].type then
					if self.parts[part_id].type == "sight" then
						self.parts.wpn_fps_smg_akmsu_fg_plastic.override[part_id] = {
							a_obj = "a_of"
						}
					end
				end
			end

			for i, part_id in ipairs(self.wpn_fps_smg_akmsu.uses_parts) do
				if self.parts[part_id] and self.parts[part_id].type then
					if self.parts[part_id].type == "sight" then
						self.parts.wpn_fps_smg_akmsu_fg_drgv.override[part_id] = {
							a_obj = "a_of"
						}
					end
				end
			end
		
			self.parts.wpn_fps_upg_o_ak_scopemount.override = self.parts.wpn_fps_upg_o_ak_scopemount.override or {}
			self.parts.wpn_fps_upg_o_ak_scopemount.override.wpn_fps_smg_akmsu_fg_drgv = {
				override = {}
			}
			self.parts.wpn_fps_upg_o_ak_scopemount.override.wpn_fps_smg_akmsu_fg_plastic = {
				override = {}
			}
			self.parts.wpn_fps_upg_o_ak_scopemount.override.wpn_fps_upg_ak_fg_reversecombo = {
				override = {
					wpn_fps_upg_fl_ass_smg_sho_peqbox = { parent = "foregrip" },
					wpn_fps_upg_fl_ass_smg_sho_surefire = { parent = "foregrip" },
					wpn_fps_upg_fl_ass_peq15 = { parent = "foregrip" },
					wpn_fps_upg_fl_ass_laser = { parent = "foregrip" },
					wpn_fps_upg_fl_ass_utg = { parent = "foregrip" },
					wpn_fps_upg_fl_dbal_laser = { parent = "foregrip" }				
				}
			}
		
			--Equilibrium Barrel
			self.parts.wpn_fps_upg_ak_b_bars.supported = true
			self.parts.wpn_fps_upg_ak_b_bars.stats = {
				value = 3,
				recoil = 6,
				concealment = -3
			}			
			self.parts.wpn_fps_upg_ak_b_bars.custom_stats = {}

			--Waffle Handguard
			self.parts.wpn_fps_smg_vityaz_fg_waffle.supported = true
			self.parts.wpn_fps_smg_vityaz_fg_waffle.stats = {
				value = 1,
				recoil = -2,
				concealment = 1
			}		

			--Derailed Dust Cover
			self.parts.wpn_fps_smg_vityaz_body_norail.supported = true
			self.parts.wpn_fps_smg_vityaz_body_norail.stats = {
				value = 0
			}

			for i, part_id in ipairs(self.wpn_fps_smg_vityaz.uses_parts) do
				if self.parts[part_id] and self.parts[part_id].type then
					if self.parts[part_id].type == "sight" then
						self.parts.wpn_fps_smg_vityaz_body_norail.override[part_id] = {
							parent = "deeznuts",
							a_obj = "a_o_sm",
							override = {
								wpn_fps_smg_vityaz_o_scopemount_dummy = {
									adds = { 
										"wpn_fps_smg_vityaz_o_scopemount" 
									},
									stance_mod = {
										wpn_fps_smg_vityaz = {
											translation = Vector3(-0.0, 2.6962, -0.7448)
										}
									}
								},
								wpn_fps_upg_o_atibal_reddot = {
									parent = "deeznuts",
									a_obj = "a_o_sm"
								},
								wpn_fps_upg_o_hamr_reddot = {
									parent = "deeznuts",
									a_obj = "a_o_sm"									
								}
							}
						}
					end
				end
			end

			self.parts.wpn_fps_smg_vityaz_body_norail_rear.visibility = {
				{
					objects = {
						g_body = false,
						g_dustcover = false
					}
				}
			}

		--[[for i, part_id in ipairs(self.wpn_fps_smg_vityaz.uses_parts) do
				if self.parts[part_id] and self.parts[part_id].type then
					if self.parts[part_id].type == "sight" then
						self.parts.wpn_fps_smg_vityaz_o_scopemount.override[part_id] = {
							parent = "extra",
							a_obj = "a_o_sm"
						}
					end
				end
			end

			self.parts.wpn_fps_smg_vityaz_o_scopemount.override.wpn_fps_upg_o_atibal_reddot = {
				parent = "extra",
				a_obj = "a_o_sm"
			}
			self.parts.wpn_fps_smg_vityaz_o_scopemount.override.wpn_fps_upg_o_hamr_reddot = {
				parent = "extra",
				a_obj = "a_o_sm"
			}
			
			for i, part_id in ipairs(self.wpn_fps_smg_vityaz.uses_parts) do
				if self.parts[part_id] and self.parts[part_id].type then
					if self.parts[part_id].type == "sight" then
						self.parts.wpn_fps_smg_vityaz_body_norail.override[part_id] = {
							override = {
								wpn_fps_smg_vityaz_o_scopemount_dummy = {
									adds = { 
										"wpn_fps_ak_extra_ris" 
									}
								}
							}
						}
					end
				end
			end]]

			--Modern West Magazine
			self.parts.wpn_fps_upg_ak_m_ak101.supported = true
			self.parts.wpn_fps_upg_ak_m_ak101.has_description = false
			self.parts.wpn_fps_upg_ak_m_ak101.desc_id = ""
			self.parts.wpn_fps_upg_ak_m_ak101.stats = { 
				value = 2,
				concealment = 1,
				spread = -1,
				recoil = 2
			}
			self.parts.wpn_fps_upg_ak_m_ak101.custom_stats = {
				falloff_end_mult = 1.2,
				damage_min_mult = 0.833333
			}		

			--Smooth Grip
			self.parts.wpn_fps_smg_vityaz_g_smooth.supported = true
			self.parts.wpn_fps_smg_vityaz_g_smooth.stats = deep_clone(grips.quickdraw_1)
			self.parts.wpn_fps_smg_vityaz_g_smooth.custom_stats = deep_clone(grips.quickdraw_1)
		--[[self.parts.wpn_fps_smg_vityaz_g_smooth.stats = deep_clone(grips.acc_recoil)
			self.parts.wpn_fps_smg_vityaz_g_smooth.custom_stats = deep_clone(grips.acc_recoil)]]

			--Modern Handguard
			self.parts.wpn_fps_upg_ak_fg_vityaz.supported = true
			self.parts.wpn_fps_upg_ak_fg_vityaz.stats = {
				value = 3,
				recoil = 2,
				concealment = -1
			}
			self.parts.wpn_fps_upg_ak_fg_vityaz.forbids = { "wpn_fps_addon_ris" }
			
			self.parts.wpn_fps_upg_ak_fg_vityaz.override = self.parts.wpn_fps_upg_ak_fg_vityaz.override or {}
			self.parts.wpn_fps_upg_ak_fg_vityaz.override.wpn_fps_ak_extra_ris = {
				a_obj = "a_o_krebs"
			}
		

			--AK24 Magazine
			self.parts.wpn_fps_ass_flint_m_ak19.supported = true
			self.parts.wpn_fps_ass_flint_m_ak19.has_description = false
			self.parts.wpn_fps_ass_flint_m_ak19.desc_id = ""
			self.parts.wpn_fps_ass_flint_m_ak19.stats = { 
				value = 2,
				concealment = 0,
				spread = -1,
				recoil = 4
			}
			self.parts.wpn_fps_ass_flint_m_ak19.custom_stats = {
				falloff_end_mult = 1.2,
				damage_min_mult = 0.833333
			}				

			--Groza Bakelite Magazine
			self.parts.wpn_fps_upg_groza_m_bakelite.supported = true
			self.parts.wpn_fps_upg_groza_m_bakelite.a_obj = "a_m"
			self.parts.wpn_fps_upg_groza_m_bakelite.stats = {
				value = 0,
				recoil = 2,
				concealment = -1
			}
			self.parts.wpn_fps_upg_groza_m_bakelite.custom_stats = {}

			table.insert(self.wpn_fps_ass_akm.uses_parts, "wpn_fps_upg_groza_m_bakelite")
			table.insert(self.wpn_fps_ass_akm_gold.uses_parts, "wpn_fps_upg_groza_m_bakelite")
			table.insert(self.wpn_fps_smg_akmsu.uses_parts, "wpn_fps_upg_groza_m_bakelite")
			table.insert(self.wpn_fps_smg_x_akmsu.uses_parts, "wpn_fps_upg_groza_m_bakelite")


			if self.wpn_fps_ass_spike then

				table.insert(self.wpn_fps_ass_spike.uses_parts, "wpn_fps_upg_groza_m_bakelite")
			
			end

			--B-K Magazine
			self.parts.wpn_fps_upg_asval_m_groza.supported = true
			self.parts.wpn_fps_upg_asval_m_groza.stats = {
				value = 3,
				recoil = -2,
				concealment = 1
			}

			--Thread Cutter Magazine
			self.parts.wpn_fps_ass_asval_m_10rd.supported = true
			self.parts.wpn_fps_ass_asval_m_10rd.stats = {
				value = 2,
				concealment = 2,
				reload = 5,
				extra_ammo = -10
			}
			self.parts.wpn_fps_ass_asval_m_10rd.custom_stats = { ads_speed_mult = 0.95 }

			--Gecko Stock
			self.parts.wpn_fps_upg_asval_s_galil.supported = true
			self.parts.wpn_fps_upg_asval_s_galil.stats = {
				value = 0
			}

			--Comfort Grip (Galil)
			self.parts.wpn_fps_ass_galil_g_ergo.supported = true
			self.parts.wpn_fps_ass_galil_g_ergo.stats = deep_clone(grips.acc_recoil)
			self.parts.wpn_fps_ass_galil_g_ergo.custom_stats = {}	

			self.wpn_fps_ass_groza.override = self.wpn_fps_ass_groza.override or {}
			self.wpn_fps_ass_groza.override.wpn_fps_ass_groza_m_9x39 = {}

			if self.parts.wpn_fps_ass_groza_m_9x39 then --Groza 9x39mm Magazine
			
				table.insert(self.wpn_fps_ass_groza.uses_parts, "wpn_fps_ass_groza_m_9x39")
			
				self.parts.wpn_fps_ass_groza_m_9x39.alt_icon = "guis/dlcs/mods/textures/pd2/blackmarket/icons/mods/wpn_fps_upg_asval_m_groza"
				self.parts.wpn_fps_ass_groza_m_9x39.supported = true
				self.parts.wpn_fps_ass_groza_m_9x39.keep_damage = true
				self.parts.wpn_fps_ass_groza_m_9x39.hidden = true
				self.parts.wpn_fps_ass_groza_m_9x39.a_obj = "a_m"
				self.parts.wpn_fps_ass_groza_m_9x39.unit = "units/pd2_dlc_sawp/weapons/wpn_fps_ass_groza_pts/wpn_fps_ass_groza_m_standard"
				self.parts.wpn_fps_ass_groza_m_9x39.third_unit = "units/pd2_dlc_sawp/weapons/wpn_fps_ass_groza_pts/wpn_third_ass_groza_m_standard"
				self.parts.wpn_fps_ass_groza_m_9x39.stats = {
					value = 0,
					damage = 15,
					spread = -5,
					recoil = 6,
					concealment = 2,
					extra_ammo = -10,
					total_ammo_mod = -138
				}
				self.parts.wpn_fps_ass_groza_m_9x39.custom_stats = {
					falloff_start_mult = 0.75,
					falloff_end_mult = 0.75,
					rof_mult = 750 / 700,	
					damage_min_mult = 0.74074074074,
					ammo_pickup_max_mul = 0.55555555555,
					ammo_pickup_min_mul = 0.55555555555,
					alt_ammo_pickup_max_mul = 0.55555555555,
					alt_ammo_pickup_min_mul = 0.55555555555,					
					armor_piercing_override = 0.25,					
					armor_piercing_add = 0.25,
					ads_speed_mult = 1.11764705882,
					ap_desc = "bm_ap_armor_25_weapon_sc_desc",
					ignore_rof_mult_anims = true,
					srm = {
						-0.02,
						{1, 1.1},
						4
					}
				}
	
			end	

			--Light Long Handguard (Galil)
			self.parts.wpn_fps_ass_galil_fg_ar.supported = true
			self.parts.wpn_fps_ass_galil_fg_ar.stats = {
				value = 0,
				concealment = 1,
				recoil = -2
			}
			self.parts.wpn_fps_ass_galil_fg_ar.custom_stats = {}	

			--Plastic Modern Handguard
			self.parts.wpn_fps_upg_ak_fg_74m.supported = true
			self.parts.wpn_fps_upg_ak_fg_74m.stats = {
				value = 1,
				recoil = -2,
				concealment = 1
			}

			--Modern Grip
			self.parts.wpn_fps_upg_ak_g_74m.supported = true
			self.parts.wpn_fps_upg_ak_g_74m.stats = deep_clone(grips.acc_recoil)
			self.parts.wpn_fps_upg_ak_g_74m.custom_stats = {}

			--Solid Folding Stock
			self.parts.wpn_fps_upg_ak_s_74m.supported = true
			self.parts.wpn_fps_upg_ak_s_74m.stats = deep_clone(stocks.folder_to_fixed_acc1_rec2_stats)
			self.parts.wpn_fps_upg_ak_s_74m.custom_stats = deep_clone(stocks.folder_to_fixed_acc1_rec2_stats)

			self.wpn_fps_ass_akm.override = self.wpn_fps_ass_akm.override or {}
			self.wpn_fps_ass_akm.override.wpn_fps_upg_ak_s_74m = {
				stats = deep_clone(stocks.nocheeks_to_fixed_acc2_rec2_stats),
				custom_stats = deep_clone(stocks.nocheeks_to_fixed_acc2_rec2_stats),
				unit = "units/mods/weapons/wpn_fps_upg_74m_pts/wpn_fps_upg_ak_s_74m_plum"
			}

			self.wpn_fps_ass_akm_gold.override = self.wpn_fps_ass_akm_gold.override or {}
			self.wpn_fps_ass_akm_gold.override.wpn_fps_upg_ak_s_74m = {
				stats = deep_clone(stocks.nocheeks_to_fixed_acc2_rec2_stats),
				custom_stats = deep_clone(stocks.nocheeks_to_fixed_acc2_rec2_stats),
				unit = "units/mods/weapons/wpn_fps_upg_74m_pts/wpn_fps_upg_ak_s_74m_plum"
			}

			self.wpn_fps_smg_akmsu.override = self.wpn_fps_smg_akmsu.override or {}
			self.wpn_fps_smg_akmsu.override.wpn_fps_upg_ak_s_74m = {
				stats = deep_clone(stocks.nocheeks_to_fixed_acc2_rec2_stats),
				custom_stats = deep_clone(stocks.nocheeks_to_fixed_acc2_rec2_stats),
				unit = "units/mods/weapons/wpn_fps_upg_74m_pts/wpn_fps_upg_ak_s_74m_plum"
			}

			self.wpn_fps_shot_saiga.override = self.wpn_fps_shot_saiga.override or {}
			self.wpn_fps_shot_saiga.override.wpn_fps_upg_ak_s_74m = {
				stats = deep_clone(stocks.nocheeks_to_fixed_acc2_rec2_stats),
				custom_stats = deep_clone(stocks.nocheeks_to_fixed_acc2_rec2_stats)
			}

			self.wpn_fps_lmg_rpk.override = self.wpn_fps_lmg_rpk.override or {}
			self.wpn_fps_lmg_rpk.override.wpn_fps_upg_ak_s_74m = {
				stats = {
					spread = 1,
					recoil = -2
				},
				custom_stats = {},
				unit = "units/mods/weapons/wpn_fps_upg_74m_pts/wpn_fps_upg_ak_s_74m_plum"
			}

			--Modern Rifle Barrel
			self.parts.wpn_fps_upg_ak_b_ak103_paint.supported = true
			self.parts.wpn_fps_upg_ak_b_ak103_paint.stats = { value = 0 }
			self.parts.wpn_fps_upg_ak_b_ak103_paint.custom_stats = {}

			--Sneaky Barrel
			self.parts.wpn_fps_ass_flint_b_supp.supported = true
			self.parts.wpn_fps_ass_flint_b_supp.stats = deep_clone(barrels.short_b1_stats)
			self.parts.wpn_fps_ass_flint_b_supp.stats.alert_size = 12
			self.parts.wpn_fps_ass_flint_b_supp.stats.suppression = -1
			self.parts.wpn_fps_ass_flint_b_supp.stats.value = 0
			self.parts.wpn_fps_ass_flint_b_supp.custom_stats = deep_clone(barrels.short_b1_stats)

			--Compact-5 Handguard
			self.parts.wpn_fps_smg_vityaz_fg_mp5.supported = true
			self.parts.wpn_fps_smg_vityaz_fg_mp5.stats = deep_clone(barrels.short_b1_stats)
			self.parts.wpn_fps_smg_vityaz_fg_mp5.stats.value = 1	
			self.parts.wpn_fps_smg_vityaz_fg_mp5.custom_stats = deep_clone(barrels.short_b1_stats)

			--Gripped Magazine
			self.parts.wpn_fps_ass_asval_m_gripped.supported = true
			self.parts.wpn_fps_ass_asval_m_gripped.stats = {
				value = 3,
				recoil = 2,
				concealment = -1
			}

-- AR mods

			--Revised Tactical Stock
			self.parts.wpn_fps_upg_m4_s_pts_v2.supported = true
			self.parts.wpn_fps_upg_m4_s_pts_v2.stats = {
				value = 0,
				spread = 1,
				recoil = -2
			}
			self.parts.wpn_fps_upg_m4_s_pts_v2.custom_stats = deep_clone(stocks.adj_acc_stats)
	
			--M4 Cut Stock
			self.parts.wpn_fps_upg_m4_s_cut.supported = true
			self.parts.wpn_fps_upg_m4_s_cut.stats = deep_clone(stocks.adj_acc_stats)
			self.parts.wpn_fps_upg_m4_s_cut.custom_stats = deep_clone(stocks.adj_acc_stats)

			--Out of Stock Stock
			self.parts.wpn_fps_upg_m4_s_magless.supported = true
			self.parts.wpn_fps_upg_m4_s_magless.stats = { value = 0 }
			self.parts.wpn_fps_upg_m4_s_magless.custom_stats = {}

			for factory_id, i in pairs(self) do
				if self[factory_id] and self[factory_id .. "_npc"] then
					if self[factory_id].uses_parts and table.contains(self[factory_id].uses_parts, "wpn_fps_upg_m4_s_pts") then
						attachment_list = {
							"wpn_fps_upg_m4_s_cut"
						}
						for _, part_id in ipairs(attachment_list) do
							if not table.contains(self[factory_id].uses_parts, part_id) and self.parts[part_id] then
								table.insert(self[factory_id].uses_parts, part_id)
								self[factory_id .. "_npc"].uses_parts = deep_clone(self[factory_id].uses_parts)
							end
							if self[factory_id].override and self[factory_id].override.wpn_fps_upg_m4_s_pts then
								self[factory_id].override[part_id] = deep_clone(self[factory_id].override.wpn_fps_upg_m4_s_pts)
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
					if self[factory_id].uses_parts and table.contains(self[factory_id].uses_parts, "wpn_fps_upg_m4_s_standard") then
						attachment_list = {
							"wpn_fps_upg_m4_s_magless"
						}
						for _, part_id in ipairs(attachment_list) do
							if not table.contains(self[factory_id].uses_parts, part_id) and self.parts[part_id] then
								table.insert(self[factory_id].uses_parts, part_id)
								self[factory_id .. "_npc"].uses_parts = deep_clone(self[factory_id].uses_parts)
							end
							if self[factory_id].override and self[factory_id].override.wpn_fps_upg_m4_s_standard then
								self[factory_id].override[part_id] = deep_clone(self[factory_id].override.wpn_fps_upg_m4_s_standard)
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
					if self[factory_id].uses_parts and table.contains(self[factory_id].uses_parts, "wpn_fps_m4_uupg_s_fold") then
						attachment_list = {
							"wpn_fps_upg_m4_s_retroslider"
						}
						for _, part_id in ipairs(attachment_list) do
							if not table.contains(self[factory_id].uses_parts, part_id) and self.parts[part_id] then
								table.insert(self[factory_id].uses_parts, part_id)
								self[factory_id .. "_npc"].uses_parts = deep_clone(self[factory_id].uses_parts)
							end
							if self[factory_id].override and self[factory_id].override.wpn_fps_upg_m4_s_ubr then
								self[factory_id].override[part_id] = deep_clone(self[factory_id].override.wpn_fps_upg_m4_s_ubr)
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
					if self[factory_id].uses_parts and table.contains(self[factory_id].uses_parts, "wpn_fps_upg_s_saintvictor_hera") then
						attachment_list = {
							"wpn_fps_upg_m4_s_hera_paint"
						}
						for _, part_id in ipairs(attachment_list) do
							if not table.contains(self[factory_id].uses_parts, part_id) and self.parts[part_id] then
								table.insert(self[factory_id].uses_parts, part_id)
								self[factory_id .. "_npc"].uses_parts = deep_clone(self[factory_id].uses_parts)
							end
							if self[factory_id].override and self[factory_id].override.wpn_fps_upg_s_saintvictor_hera then
								self[factory_id].override[part_id] = deep_clone(self[factory_id].override.wpn_fps_upg_s_saintvictor_hera)
								self[factory_id .. "_npc"].override = deep_clone(self[factory_id].override)
							end
							for k, used_part_id in ipairs(self[factory_id].uses_parts) do
								if self.parts[used_part_id] and self.parts[used_part_id].type and self.parts[used_part_id].type ~= "stock" and self.parts[used_part_id].forbids and table.contains(self.parts[used_part_id].forbids, "wpn_fps_upg_s_saintvictor_hera") then
									if not table.insert(self.parts[used_part_id].forbids, part_id) then
										table.insert(self.parts[used_part_id].forbids, part_id)
									end
								end
							end
						end
					end
					if self[factory_id].uses_parts and table.contains(self[factory_id].uses_parts, "wpn_fps_upg_ak_s_solidstock") then
						attachment_list = {
							"wpn_fps_upg_ak_s_magless"
						}
						for _, part_id in ipairs(attachment_list) do
							if not table.contains(self[factory_id].uses_parts, part_id) and self.parts[part_id] then
								table.insert(self[factory_id].uses_parts, part_id)
								self[factory_id .. "_npc"].uses_parts = deep_clone(self[factory_id].uses_parts)
							end
							if self[factory_id].override and self[factory_id].override.wpn_fps_upg_ak_s_solidstock then
								self[factory_id].override[part_id] = deep_clone(self[factory_id].override.wpn_fps_upg_ak_s_solidstock)
								self[factory_id .. "_npc"].override = deep_clone(self[factory_id].override)
							end
							for k, used_part_id in ipairs(self[factory_id].uses_parts) do
								if self.parts[used_part_id] and self.parts[used_part_id].type and self.parts[used_part_id].type ~= "stock" and self.parts[used_part_id].forbids and table.contains(self.parts[used_part_id].forbids, "wpn_fps_upg_ak_s_solidstock") then
									if not table.insert(self.parts[used_part_id].forbids, part_id) then
										table.insert(self.parts[used_part_id].forbids, part_id)
									end
								end
							end
						end
					end
					if self[factory_id].uses_parts and table.contains(self[factory_id].uses_parts, "wpn_fps_m4_upg_m_quick") then
						attachment_list = {
							"wpn_fps_ass_tecci_m_jungle_m4"
						}
						for _, part_id in ipairs(attachment_list) do
							if not table.contains(self[factory_id].uses_parts, part_id) and self.parts[part_id] then
								table.insert(self[factory_id].uses_parts, part_id)
								self[factory_id .. "_npc"].uses_parts = deep_clone(self[factory_id].uses_parts)
							end
							if self[factory_id].override and self[factory_id].override.wpn_fps_m4_upg_m_quick then
								self[factory_id].override[part_id] = deep_clone(self[factory_id].override.wpn_fps_m4_upg_m_quick)
								self[factory_id .. "_npc"].override = deep_clone(self[factory_id].override)
							end
							for k, used_part_id in ipairs(self[factory_id].uses_parts) do
								if self.parts[used_part_id] and self.parts[used_part_id].type and self.parts[used_part_id].type ~= "magazine" and self.parts[used_part_id].forbids and table.contains(self.parts[used_part_id].forbids, "wpn_fps_m4_upg_m_quick") then
									if not table.insert(self.parts[used_part_id].forbids, part_id) then
										table.insert(self.parts[used_part_id].forbids, part_id)
									end
								end
							end
						end
					end
					if self[factory_id].uses_parts and table.contains(self[factory_id].uses_parts, "wpn_fps_upg_m4_s_pts") then
						attachment_list = {
							"wpn_fps_upg_m4_s_pts_v2"
						}
						for _, part_id in ipairs(attachment_list) do
							if not table.contains(self[factory_id].uses_parts, part_id) and self.parts[part_id] then
								table.insert(self[factory_id].uses_parts, part_id)
								self[factory_id .. "_npc"].uses_parts = deep_clone(self[factory_id].uses_parts)
							end
							if self[factory_id].override and self[factory_id].override.wpn_fps_upg_m4_s_pts then
								self[factory_id].override[part_id] = deep_clone(self[factory_id].override.wpn_fps_upg_m4_s_pts)
								self[factory_id .. "_npc"].override = deep_clone(self[factory_id].override)
							end
							for k, used_part_id in ipairs(self[factory_id].uses_parts) do
								if self.parts[used_part_id] and self.parts[used_part_id].type and self.parts[used_part_id].type ~= "stock" and self.parts[used_part_id].forbids and table.contains(self.parts[used_part_id].forbids, "wpn_fps_upg_m4_s_pts") then
									if not table.insert(self.parts[used_part_id].forbids, part_id) then
										table.insert(self.parts[used_part_id].forbids, part_id)
									end
								end
							end
						end
					end						
				end
			end

			--Solid Slider Stock
			self.parts.wpn_fps_upg_m4_s_retroslider.supported = true
			self.parts.wpn_fps_upg_m4_s_retroslider.stats = deep_clone(stocks.adj_hvy_rec_stats)
			self.parts.wpn_fps_upg_m4_s_retroslider.custom_stats = deep_clone(stocks.adj_hvy_rec_stats)

			self.wpn_fps_ass_contraband.override = self.wpn_fps_ass_contraband.override or {}
			self.wpn_fps_ass_contraband.override.wpn_fps_upg_m4_s_retroslider = {
				stats = deep_clone(stocks.fixed_to_hvy_acc_stats),
				custom_stats = deep_clone(stocks.fixed_to_hvy_acc_stats)
			}

			--Hera CQR Gen 2 Stock (Yes ik DMC did one too)
			self.wpn_fps_ass_contraband.override = self.wpn_fps_ass_contraband.override or {}
			self.wpn_fps_ass_contraband.override.wpn_fps_upg_m4_s_hera_paint = {
				stats = deep_clone(stocks.fixed_to_thumbhole_stats),
				custom_stats = deep_clone(stocks.fixed_to_thumbhole_stats)
			}
			self.wpn_fps_ass_tecci.override = self.wpn_fps_ass_tecci.override or {}			
			self.wpn_fps_ass_tecci.override.wpn_fps_upg_m4_s_hera_paint = {
				stats = deep_clone(stocks.folded_to_fixed_stats),
				custom_stats = deep_clone(stocks.folded_to_fixed_stats)
			}

--The Stocked Stock has a wall of text, tho this is currently only for vanilla weapons

			--Stocked Stock
			self.parts.wpn_fps_upg_m4_s_mag.supported = true
			self.parts.wpn_fps_upg_m4_s_mag.stats = {
				value = 0,
				reload = 3,
				spread = -1,
				concealment = -1
			}
			self.parts.wpn_fps_upg_m4_s_mag.custom_stats = {}	

			self.wpn_fps_ass_contraband.override.wpn_fps_upg_m4_s_mag = {
				stats = {
					value = 0,
					reload = 3,
					spread = -2,
					recoil = -2,
					concealment = 1
				},
				custom_stats = deep_clone(stocks.fixed_to_adj_dual_stats)
			}

			self.wpn_fps_ass_m16.override.wpn_fps_upg_m4_s_mag = {
				stats = {
					value = 0,
					reload = 3,
					spread = -2,
					recoil = -2,
					concealment = 1
				},
				custom_stats = deep_clone(stocks.fixed_to_adj_dual_stats)
			}

			self.wpn_fps_smg_olympic.override.wpn_fps_upg_m4_s_mag = {
				stats = {
					value = 0,
					reload = 3,
					spread = 0,
					recoil = 2,
					concealment = -3,
				},
				custom_stats = deep_clone(stocks.nocheeks_to_adj_dual_stats)
			}
			
			self.wpn_fps_ass_tecci.override.wpn_fps_upg_m4_s_mag = {
				stats = {
					value = 0,
					reload = 3,
					spread = 1,
					recoil = 2,
					concealment = -4,
				},
				custom_stats = deep_clone(stocks.folded_to_adj_rec2)
			}
	
			--Modern Milspec Grip
			self.parts.wpn_fps_upg_m4_g_m590.supported = true
			self.parts.wpn_fps_upg_m4_g_m590.stats = { value = 0 }

			--Hera Handguard
			self.wpn_fps_ass_m4.override = self.wpn_fps_ass_m4.override or {}		
			self.wpn_fps_ass_m4.override.wpn_fps_upg_m4_fg_hera = {
				adds = {
					"wpn_fps_snp_victor_o_down", 
					"wpn_fps_m4_uupg_fg_rail_ext_dummy"
				}
			}

			--Akimbo overrides
			self.wpn_fps_smg_x_olympic.override = self.wpn_fps_smg_x_olympic.override or {}
			self.wpn_fps_smg_x_olympic.override.wpn_fps_upg_m4_m_d60 = {
				stats = {
					value = 3,
					concealment = -4,
					reload = -6,
					extra_ammo = 60
				}
			}
			self.wpn_fps_smg_x_olympic.override.wpn_fps_upg_m4_m_pmag_black = {
				stats = {
					extra_ammo = 6,
					concealment = -1
				}
			}
			self.wpn_fps_smg_x_olympic.override.wpn_fps_upg_m4_m_40rnd = {
				stats = {
					extra_ammo = 20,
					concealment = -1,
					reload = -3
				}
			}

			self.wpn_fps_smg_x_hajk.override = self.wpn_fps_smg_x_hajk.override or {}
			self.wpn_fps_smg_x_hajk.override.wpn_fps_upg_m4_m_d60 = {
				stats = {
					value = 3,
					concealment = -4,
					reload = -6,
					extra_ammo = 60
				}
			}
			self.wpn_fps_smg_x_hajk.override.wpn_fps_upg_m4_m_pmag_black = {
				stats = {
					extra_ammo = 6,
					concealment = -1
				}
			}
			self.wpn_fps_smg_x_hajk.override.wpn_fps_upg_m4_m_40rnd = {
				stats = {
					extra_ammo = 20,
					concealment = -1,
					reload = -3
				}
			}

			--Dwarf Barrel
			self.parts.wpn_fps_upg_victor_b_fluted.supported = true
			self.parts.wpn_fps_upg_victor_b_fluted.stats = {
				concealment = 1,
				recoil = -2
			}
			self.parts.wpn_fps_upg_victor_b_fluted.custom_stats = {}
			self.parts.wpn_fps_upg_victor_b_fluted.adds = { "wpn_fps_snp_victor_ns_standard" }

			self.parts.wpn_fps_upg_victor_b_fluted.forbids = self.parts.wpn_fps_upg_victor_b_fluted.forbids or {}
			table.insert(self.parts.wpn_fps_upg_victor_b_fluted.forbids, "wpn_fps_m4_uupg_fg_rail_ext_dummy")			

			table.insert(self.wpn_fps_ass_m4.uses_parts, "wpn_fps_upg_victor_b_fluted")		
			table.insert(self.wpn_fps_ass_m16.uses_parts, "wpn_fps_upg_victor_b_fluted")				
			table.insert(self.wpn_fps_snp_tti.uses_parts, "wpn_fps_upg_victor_b_fluted")	

			self.wpn_fps_snp_tti.override = self.wpn_fps_snp_tti.override or {}
			self.wpn_fps_snp_tti.override.wpn_fps_upg_victor_b_fluted = {
				adds = {}
			}
			self.wpn_fps_snp_tti.override.wpn_fps_upg_m4_b_victor = {
				forbids = {
					"wpn_fps_upg_m4_fg_shepheard_gasblock",
					"wpn_fps_m4_uupg_fg_rail_ext_dummy"
				}
			}

			self.wpn_fps_snp_victor.override = self.wpn_fps_snp_victor.override or {}
			self.wpn_fps_snp_victor.override.wpn_fps_upg_victor_b_fluted = {
				adds = {}
			}

			for i, part_id in ipairs(self.wpn_fps_ass_m4.uses_parts) do
				if self.parts[part_id] and self.parts[part_id].type then
					if self.parts[part_id].type == "barrel_ext" then
						self.parts.wpn_fps_upg_victor_b_fluted.override[part_id] = {
							forbids = { "wpn_fps_snp_victor_ns_standard" }
						}
					end
				end
			end

			--Ursa Minor Barrel
			self.parts.wpn_fps_upg_m4_b_victor_short.supported = true
			self.parts.wpn_fps_upg_m4_b_victor_short.stats = deep_clone(barrels.short_b2_stats)
			self.parts.wpn_fps_upg_m4_b_victor_short.custom_stats = deep_clone(barrels.short_b2_stats)

			self.wpn_fps_ass_amcar.override = self.wpn_fps_ass_amcar.override or {}			
			self.wpn_fps_ass_amcar.override.wpn_fps_upg_m4_b_victor_short = {
				unit = "units/mods/weapons/wpn_fps_ass_amcar_pts/wpn_fps_upg_amcar_b_victor_short",
				stats = {},
				custom_stats = {}
			}
			
			self.parts.wpn_fps_upg_m4_b_victor_short.forbids = self.parts.wpn_fps_upg_m4_b_victor_short.forbids or {}
			table.insert(self.parts.wpn_fps_upg_m4_b_victor_short.forbids, "wpn_fps_m4_uupg_fg_rail_ext_dummy")

			if self.parts.wpn_fps_ass_amcar_body_mark then
			
				self.parts.wpn_fps_ass_amcar_body_mark.override = self.parts.wpn_fps_ass_amcar_body_mark.override or {}
				self.parts.wpn_fps_ass_amcar_body_mark.override.wpn_fps_upg_m4_b_victor_short = {
					override = {}
				}
				
				self.parts.wpn_fps_ass_amcar_body_mark.forbids = self.parts.wpn_fps_ass_amcar_body_mark.forbids or {}
				table.insert(self.parts.wpn_fps_ass_amcar_body_mark.forbids, "wpn_fps_ass_amcar_fg_mp5sd")		
			
			end

			if self.parts.wpn_fps_ass_amcar_body_ddm4 then
			
				self.parts.wpn_fps_ass_amcar_body_ddm4.override = self.parts.wpn_fps_ass_amcar_body_ddm4.override or {}
				self.parts.wpn_fps_ass_amcar_body_ddm4.override.wpn_fps_upg_amcar_o_victor = {
					adds = {},
					unit = "units/pd2_dlc_savi/weapons/wpn_fps_snp_victor_pts/wpn_fps_snp_victor_o_standard",
					third_unit = "units/pd2_dlc_savi/weapons/wpn_third_snp_victor_pts/wpn_third_snp_victor_o_standard"
				}
			
			end

			self.parts.wpn_fps_upg_fg_smr.override = self.parts.wpn_fps_upg_fg_smr.override or {}
			self.parts.wpn_fps_upg_fg_smr.override.wpn_fps_upg_m4_b_victor_short = {
				unit = "units/mods/weapons/wpn_fps_ass_m4_pts/wpn_fps_upg_m4_b_victor_short_smr"
			}

			if self.parts.wpn_fps_smg_olympic_body_hk416c then

				self.parts.wpn_fps_smg_olympic_body_hk416c.forbids = self.parts.wpn_fps_smg_olympic_body_hk416c.forbids or {}
				table.insert(self.parts.wpn_fps_smg_olympic_body_hk416c.forbids, "wpn_fps_upg_m4_b_victor_short")

			end

			--Removes ADS speed increase from mags based on the pmag
			self.parts.wpn_fps_upg_m4_m_pmag_black.custom_stats = {}
			
			--Match Magazine
			self.parts.wpn_fps_upg_m4_m_shepheard.stats = {
				concealment = -1,
				value = 0,
				reload = 1,
			}
			self.parts.wpn_fps_upg_m4_m_shepheard.custom_stats = {}

			--Retro Handguard
			self.parts.wpn_fps_ass_amcar_fg_vietnam.supported = true
			self.parts.wpn_fps_ass_amcar_fg_vietnam.stats = {
				value = 3,
				recoil = -4,
				concealment = 2
			}

			--Flush Handguard
			self.parts.wpn_fps_ass_amcar_fg_dd.supported = true
			self.parts.wpn_fps_ass_amcar_fg_dd.stats = {
				value = 3,
				recoil = -2,
				concealment = 1
			}
			self.parts.wpn_fps_ass_amcar_fg_dd.adds = {}
			
			--Quiet Handguard
			self.parts.wpn_fps_ass_amcar_fg_mp5sd.has_description = true
			self.parts.wpn_fps_ass_amcar_fg_mp5sd.desc_id = "bm_wp_upg_suppressor"
			self.parts.wpn_fps_ass_amcar_fg_mp5sd.supported = true
			self.parts.wpn_fps_ass_amcar_fg_mp5sd.stats = {
				value = 0,
				alert_size = 12,
				suppression = -1 
			}
			for k, used_part_id in ipairs(self.wpn_fps_ass_amcar.uses_parts) do
				if self.parts[used_part_id] and self.parts[used_part_id].type then
					if not table.contains(self.wpn_fps_ass_amcar.default_blueprint, used_part_id) then
						if self.parts[used_part_id].type == "barrel" or
						self.parts[used_part_id].type == "barrel_ext" then
							table.insert(self.parts.wpn_fps_ass_amcar_fg_mp5sd.forbids, used_part_id)
						end
					end
				end
			end

			for i, part_id in ipairs(self.wpn_fps_ass_amcar.uses_parts) do
				if self.parts[part_id] and self.parts[part_id].type then
					if self.parts[part_id].type == "gadget" then
						self.parts.wpn_fps_ass_amcar_fg_mp5sd.override[part_id] = {
							a_obj = "a_fl",
							parent = "foregrip"
						}
					end
				end
			end

			self.parts.wpn_fps_ass_amcar_fg_mp5sd.forbids = self.parts.wpn_fps_ass_amcar_fg_mp5sd.forbids or {}
			table.insert(self.parts.wpn_fps_ass_amcar_fg_mp5sd.forbids, "wpn_fps_m4_uupg_b_long")

			self.parts.wpn_fps_ass_amcar_fg_mp5sd.forbids = { "wpn_fps_m4_uupg_b_medium", "wpn_fps_m4_uupg_fg_rail_ext", "wpn_fps_upg_m4_b_victor_short" }
			
			self.parts.wpn_fps_ass_amcar_fg_mp5sd.override.wpn_fps_upg_vg_ass_smg_verticalgrip = {
				adds = { "wpn_fps_pis_usp_fl_adapter" }
			}
			self.parts.wpn_fps_ass_amcar_fg_mp5sd.override.wpn_fps_upg_vg_ass_smg_stubby = {
				adds = { "wpn_fps_pis_usp_fl_adapter" }
			}
			self.parts.wpn_fps_ass_amcar_fg_mp5sd.override.wpn_fps_upg_vg_ass_smg_afg = {
				adds = { "wpn_fps_pis_usp_fl_adapter" }
			}
			self.parts.wpn_fps_ass_amcar_fg_mp5sd.override.wpn_fps_pis_usp_fl_adapter = {
				a_obj = "a_vg"
			}

			self.parts.wpn_fps_smg_olympic_fg_mp5sd.has_description = true
			self.parts.wpn_fps_smg_olympic_fg_mp5sd.desc_id = "bm_wp_upg_suppressor"
			self.parts.wpn_fps_smg_olympic_fg_mp5sd.supported = true
			self.parts.wpn_fps_smg_olympic_fg_mp5sd.stats = {
				value = 0,
				alert_size = 12,
				suppression = -1 
			}
			for k, used_part_id in ipairs(self.wpn_fps_smg_olympic.uses_parts) do
				if self.parts[used_part_id] and self.parts[used_part_id].type then
					if not table.contains(self.wpn_fps_smg_olympic.default_blueprint, used_part_id) then
						if self.parts[used_part_id].type == "barrel" or
						self.parts[used_part_id].type == "barrel_ext" then
							table.insert(self.parts.wpn_fps_smg_olympic_fg_mp5sd.forbids, used_part_id)
						end
					end
				end
			end

			for i, part_id in ipairs(self.wpn_fps_smg_olympic.uses_parts) do
				if self.parts[part_id] and self.parts[part_id].type then
					if self.parts[part_id].type == "gadget" then
						self.parts.wpn_fps_smg_olympic_fg_mp5sd.override[part_id] = {
							a_obj = "a_fl",
							parent = "foregrip"
						}
					end
				end
			end
			
			self.parts.wpn_fps_smg_olympic_fg_mp5sd.override.wpn_fps_upg_vg_ass_smg_verticalgrip = {
				adds = { "wpn_fps_pis_usp_fl_adapter" }
			}
			self.parts.wpn_fps_smg_olympic_fg_mp5sd.override.wpn_fps_upg_vg_ass_smg_stubby = {
				adds = { "wpn_fps_pis_usp_fl_adapter" }
			}
			self.parts.wpn_fps_smg_olympic_fg_mp5sd.override.wpn_fps_upg_vg_ass_smg_afg = {
				adds = { "wpn_fps_pis_usp_fl_adapter" }
			}
			self.parts.wpn_fps_smg_olympic_fg_mp5sd.override.wpn_fps_pis_usp_fl_adapter = {
				a_obj = "a_vg"
			}

			--Ay-Four Handguard
			self.parts.wpn_fps_upg_m16_fg_railed_a4.supported = true
			self.parts.wpn_fps_upg_m16_fg_railed_a4.stats = {
				value = 0,
				spread = 1,
				recoil = -2
			}

			--Full 60 Drum (Tecci)
			self.parts.wpn_fps_ass_tecci_m_d60.supported = true
			self.parts.wpn_fps_ass_tecci_m_d60.stats = {
				reload = 6,
				extra_ammo = -40,
				concealment = 3
			}
			self.parts.wpn_fps_ass_tecci_m_d60.custom_stats = {
				ads_speed_mult = 0.925
			}

			--Simmons Handguard
			self.parts.wpn_fps_snp_tti_fg_victor.supported = true
			self.parts.wpn_fps_snp_tti_fg_victor.stats = {
				value = 0,
				recoil = -2,
				spread = 1
			}
			self.parts.wpn_fps_snp_tti_fg_victor.forbids = {}

			--Celestial Handguard (M16)
			self.parts.wpn_fps_upg_m16_fg_hera.supported = true
			self.parts.wpn_fps_upg_m16_fg_hera.forbids = { "wpn_fps_m4_uupg_fg_rail_ext", "wpn_fps_ass_m4_os_frontsight", "wpn_fps_ass_m16_os_frontsight" }
			self.parts.wpn_fps_upg_m16_fg_hera.adds = { "wpn_fps_m4_uupg_fg_rail_ext_dummy", "wpn_fps_snp_victor_o_down" }
			self.parts.wpn_fps_upg_m16_fg_hera.stats = {
				value = 5,
				spread = 1,
				concealment = -1
			}

			self.parts.wpn_fps_upg_m16_fg_hera.override = self.parts.wpn_fps_upg_m16_fg_hera.override or {}
			for i, part_id in ipairs(self.wpn_fps_ass_m16.uses_parts) do
				if self.parts[part_id] and self.parts[part_id].type then
					if self.parts[part_id].type == "barrel" then
						self.parts.wpn_fps_upg_m16_fg_hera.override[part_id] = {
							a_obj = "a_b"
						}
					end
				end
			end

			--Classic Shorty Handguard
			self.parts.wpn_fps_smg_olympic_fg_n23.stats = {
				value = 0,
				spread = -1,
				concealment = 1
			}
			self.parts.wpn_fps_smg_olympic_fg_n23.forbids = {}

		--[[self.parts.wpn_fps_smg_olympic_fg_n23.override = {
				wpn_fps_ass_m16_o_handle_sight = {
					a_obj = "a_body",
					unit = "units/payday2/weapons/wpn_fps_ass_amcar_pts/wpn_fps_amcar_uupg_body_upperreciever",
					third_unit = "units/payday2/weapons/wpn_third_ass_amcar_pts/wpn_third_amcar_uupg_body_upperreciever"
				},
				wpn_fps_m4_upper_reciever_round = {
					unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
					third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
				}
			}

			for k, used_part_id in ipairs(self.wpn_fps_smg_olympic.uses_parts) do
				if used_part_id ~= "wpn_fps_ass_m16_o_handle_sight" and used_part_id ~= "wpn_fps_m4_upper_reciever_round" and self.parts[used_part_id] and self.parts[used_part_id].type then
					if self.parts[used_part_id].type == "upper_reciever" or self.parts[used_part_id].type == "sight" then
						self.wpn_fps_smg_olympic.override[used_part_id] = self.wpn_fps_smg_olympic.override[used_part_id] or {}
						self.wpn_fps_smg_olympic.override[used_part_id].override = self.parts[used_part_id].override and deep_clone(self.parts[used_part_id].override) or {}
						self.wpn_fps_smg_olympic.override[used_part_id].override.wpn_fps_smg_olympic_fg_n23 = {
							override = {}
						}
					end
				end
			end]]

			--Comet Handguard
			self.parts.wpn_fps_upg_m4_fg_victorshort.stats = {
				value = 0,
				spread = 2,
				recoil = -2,
				concealment = -1
			}
			self.parts.wpn_fps_upg_m4_fg_victorshort.forbids = self.parts.wpn_fps_upg_m4_fg_victorshort.forbids or { "wpn_fps_m4_uupg_fg_rail_ext" }

			self.parts.wpn_fps_upg_m4_fg_victorshort.override = self.parts.wpn_fps_upg_m4_fg_victorshort.override or {}
			self.parts.wpn_fps_upg_m4_fg_victorshort.override.wpn_fps_upg_vg_ass_smg_afg = {
				unit = "units/pd2_dlc_spa/weapons/wpn_fps_snp_tti_pts/wpn_fps_snp_tti_vg_standard",
				third_unit = "units/pd2_dlc_spa/weapons/wpn_third_snp_tti_pts/wpn_third_snp_tti_vg_standard",
				parent = "foregrip"
			}

			--Stellar Handguard
			self.parts.wpn_fps_ass_tecci_fg_hera.supported = true
			self.parts.wpn_fps_ass_tecci_fg_hera.stats = {
				value = 0,
				concealment = 1,
				spread = -1
			}
			self.parts.wpn_fps_ass_tecci_fg_hera.custom_stats = {}
			self.parts.wpn_fps_ass_tecci_fg_hera.forbids = {
				"wpn_fps_m4_uupg_fg_rail_ext_dummy"
			}

			self.parts.wpn_fps_ass_sg416_fg_hera.supported = true
			self.parts.wpn_fps_ass_sg416_fg_hera.stats = {
				value = 5,
				spread = 1,
				concealment = -1
			}
			self.parts.wpn_fps_ass_sg416_fg_hera.adds = {}

			self.parts.wpn_fps_ass_sg416_fg_hera.override = self.parts.wpn_fps_ass_sg416_fg_hera.override or {}
			self.parts.wpn_fps_ass_sg416_fg_hera.override.wpn_fps_ass_sg416_o_standard = {
				unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_uupg_o_flipup_emo",
				third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_uupg_o_flipup_emo"
			}

			if self.parts.wpn_fps_ass_sg416_fg_standard and self.parts.wpn_fps_ass_contraband_body_sayhello then
			
				self.parts.wpn_fps_ass_contraband_fg_smr.forbids = self.parts.wpn_fps_ass_contraband_fg_smr.forbids or {}
				table.insert(self.parts.wpn_fps_ass_contraband_fg_smr.forbids, "wpn_fps_ass_contraband_b_short")
				table.insert(self.parts.wpn_fps_ass_contraband_fg_smr.forbids, "wpn_fps_ass_tecci_b_long")
				table.insert(self.parts.wpn_fps_ass_contraband_fg_smr.forbids, "wpn_fps_ass_contraband_body_sayhello")

				self.parts.wpn_fps_ass_sg416_fg_hera.forbids = self.parts.wpn_fps_ass_sg416_fg_hera.forbids or {}
				table.insert(self.parts.wpn_fps_ass_sg416_fg_hera.forbids, "wpn_fps_ass_contraband_b_short")
				table.insert(self.parts.wpn_fps_ass_sg416_fg_hera.forbids, "wpn_fps_ass_tecci_b_long")
				table.insert(self.parts.wpn_fps_ass_sg416_fg_hera.forbids, "wpn_fps_ass_contraband_body_sayhello")
			
			end

			--Quick Tactical Mag
			self.parts.wpn_fps_upg_m_pmag_quick.stats = {
				value = 2,
				spread = -1,
				recoil = -2,
				reload = 3
			}

			--Elongated Straight Grip
			self.parts.wpn_fps_upg_m4_g_mgrip_xl.supported = true
			self.parts.wpn_fps_upg_m4_g_mgrip_xl.stats = {
				value = 0,
				recoil = -2,
				spread = 1
			}
			self.parts.wpn_fps_upg_m4_g_mgrip_xl.custom_stats = {}

			--Desert Handguard
			self.parts.wpn_fps_upg_m4_fg_desert.stats = {
				value = 2,
				recoil = 2,
				concealment = -1
			}
			self.parts.wpn_fps_upg_m4_fg_desert.forbids = self.parts.wpn_fps_upg_m4_fg_desert.forbids or { "wpn_fps_m4_uupg_fg_rail_ext" }

			self.wpn_fps_ass_m16.override = self.wpn_fps_ass_m16.override or {}
			self.wpn_fps_ass_m16.override.wpn_fps_upg_m4_fg_desert = {
				adds = {
					"wpn_fps_ass_m4_os_frontsight",
					"wpn_fps_upg_m4_fg_shepheard_gasblock"
				}
			}

			self.parts.wpn_fps_upg_m4_fg_desert.override = self.parts.wpn_fps_upg_m4_fg_desert.override or {}
			for i, part_id in ipairs(self.wpn_fps_ass_m16.uses_parts) do
				if self.parts[part_id] and self.parts[part_id].type then
					if self.parts[part_id].type == "barrel" then
						self.parts.wpn_fps_upg_m4_fg_desert.override[part_id] = {
							a_obj = "a_b"
						}
					end
				end
			end
			self.parts.wpn_fps_upg_m4_fg_desert.override.wpn_fps_upg_ass_m4_b_beowulf = {}		

			--Milspec Magazine (Contractor .308)
			self.parts.wpn_fps_snp_tti_m_sr.supported = true
			self.parts.wpn_fps_snp_tti_m_sr.stats = {
				value = 0,
				concealment = 1,
				recoil = -2
			}

			--Speedpull Magazine (Contractor .308)
			self.parts.wpn_fps_snp_tti_m_sr_speed.supported = true
			self.parts.wpn_fps_snp_tti_m_sr_speed.stats = {
				value = 2,
				spread = -1,
				concealment = -1,
				reload = 3
			}

			--Ranger Handguard
			self.parts.wpn_fps_upg_tti_fg_sr.supported = true
			self.parts.wpn_fps_upg_tti_fg_sr.stats = {
				value = 0,
				spread = 1,
				recoil = 2,
				concealment = -2
			}

			--Lighter Handguard
			self.parts.wpn_fps_ass_contraband_fg_smr.adds = { "wpn_fps_smg_vityaz_fg_wood_fl_rail" }
			self.wpn_fps_ass_contraband.override.wpn_fps_ass_contraband_fg_smr = {
				forbids = {}
			}

			--Overly Tactical Mag
			self.parts.wpn_fps_upg_m4_m_pmag_black.supported = true
			self.parts.wpn_fps_upg_m4_m_pmag_black.stats = {
				value = 0,
				concealment = -1,
				extra_ammo = 3
			}
			self.parts.wpn_fps_upg_m4_m_pmag_black.custom_stats = { 
				ads_speed_mult = 1
			}

			--Schäfer Polymer Magazine
			self.parts.wpn_fps_upg_m4_m_hk.supported = true
			self.parts.wpn_fps_upg_m4_m_hk.stats = {
				value = 0,
				recoil = -2,
				concealment = 1
			}

			--CAR-40 Magazine
			self.parts.wpn_fps_upg_m4_m_40rnd.supported = true
			self.parts.wpn_fps_upg_m4_m_40rnd.stats = {
				extra_ammo = 10,
				concealment = -1,
				reload = -3
			}
			self.parts.wpn_fps_upg_m4_m_40rnd.custom_stats = {
				ads_speed_mult = 1.025
			}

			self.parts.wpn_fps_upg_m4_fg_shepheard.override = self.parts.wpn_fps_upg_m4_fg_shepheard.override or {}
			self.parts.wpn_fps_upg_m4_fg_shepheard.override.wpn_fps_upg_vg_ass_smg_afg = {}

			if BeardLib.Utils:FindMod("Weapon Texture Reworks") then	
			
				self.parts.wpn_fps_upg_m16_os_victor_frontsight.unit = "units/mods/weapons/wpn_fps_ass_m16_pts/wpn_fps_ass_m16_os_victor_gsma"
				self.parts.wpn_fps_smg_olympic_fg_n23.unit = "units/mods/weapons/wpn_fps_smg_olympic_pts/wpn_fps_smg_olympic_fg_n23_gsma"

			end

			self.parts.wpn_fps_upg_m4_b_victor_short.forbids = self.parts.wpn_fps_upg_m4_b_victor_short.forbids or {}
			table.insert(self.parts.wpn_fps_upg_m4_b_victor_short.forbids, "wpn_fps_upg_m4_fg_shepheard_gasblock")

			self.parts.wpn_fps_upg_m4_b_victor.forbids = self.parts.wpn_fps_upg_m4_b_victor.forbids or {}
			table.insert(self.parts.wpn_fps_upg_m4_b_victor.forbids, "wpn_fps_upg_m4_fg_shepheard_gasblock")

			--Hiding Internals mods
			--self.parts.wpn_fps_upg_akm_i_fast.pcs = nil
			--self.parts.wpn_fps_upg_akm_i_fast.hidden = true
			self.parts.wpn_fps_upg_amcar_i_resmod.pcs = nil
			self.parts.wpn_fps_upg_amcar_i_resmod.hidden = true
			self.parts.wpn_fps_upg_m4_i_resmod.pcs = nil
			self.parts.wpn_fps_upg_m4_i_resmod.hidden = true

			self.parts.wpn_fps_upg_akm_i_fast.supported = true
			self.parts.wpn_fps_upg_akm_i_fast.name_id = "bm_wp_wpn_fps_upg_akm_i_fast_sc"
			self.parts.wpn_fps_upg_akm_i_fast.desc_id = "bm_wp_wpn_fps_upg_akm_i_fast_sc_desc"
			self.parts.wpn_fps_upg_akm_i_fast.stats = {
				value = 0,
				recoil = 2,
				spread = -1
			}
			self.parts.wpn_fps_upg_akm_i_fast.custom_stats = {
				funco_chan = true, 
				add_burst = true
			}

			self.wpn_fps_ass_groza.override = self.wpn_fps_ass_groza.override or {}
			self.wpn_fps_ass_groza.override.wpn_fps_upg_akm_i_fast = {
				name_id = "bm_wp_wpn_fps_upg_akm_i_fast_groza_sc",
				desc_id = "bm_wp_upg_i_m16a2_desc",
				custom_stats = {
					auto_to_burst = true,
					m16_burst = true,
					falloff_start_mult = 1,
					falloff_end_mult = 1
				},
				stats = {
					value = 5,
					spread = 1,
					recoil = 2
				},
				forbids = { "wpn_fps_ass_groza_m_9x39" }
			}

			table.insert(self.wpn_fps_ass_74.uses_parts, "wpn_fps_upg_akm_i_fast")
			table.insert(self.wpn_fps_ass_groza.uses_parts, "wpn_fps_upg_akm_i_fast")
	end

end)