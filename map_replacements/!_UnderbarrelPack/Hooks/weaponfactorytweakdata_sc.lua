Hooks:PostHook(WeaponFactoryTweakData, "init", "UMP_sc", function(self)

--Stolen directly from ResMod

--Barrels
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
	--Shortestest Barrel
	--barrels.short_b4_stats
		short_b4_stats = {
			value = 2,
			spread = -4,
			concealment = 4,
			falloff_start_mult = 0.7,
			falloff_end_mult = 0.7,
			ads_speed_mult = 0.9
		},
	--Shortestest-est Barrel
	--barrels.short_b4_stats
		short_b5_stats = {
			value = 2,
			spread = -5,
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


	--ResMod integration

	local yesakikosaysthisthinghasressupportubas = true
	if yesakikosaysthisthinghasressupportubas then

		--M203

		self.parts.wpn_fps_ass_m4_gl_m203.supported = true
		self.parts.wpn_fps_ass_m4_gl_m203.stats = {
			value = 10,
			concealment = -5,
			spread = -2,
			recoil = 4,
			total_ammo_mod = -82
		}
		self.parts.wpn_fps_ass_m4_gl_m203.custom_stats = {
			ads_speed_mult = 1.125,
			alt_ammo_pickup_max_mul = 0.8,
			alt_ammo_pickup_min_mul = 0.8,
			ammo_pickup_max_mul = 0.8,
			ammo_pickup_min_mul = 0.8
		}

		--M203 Short

		self.parts.wpn_fps_smg_mp5_gl_m203.supported = true
		self.parts.wpn_fps_smg_mp5_gl_m203.stats = {
			value = 10,
			concealment = -3,
			spread = -2,
			recoil = 1,
			total_ammo_mod = -102
		}
		self.parts.wpn_fps_smg_mp5_gl_m203.custom_stats = {
			ads_speed_mult = 1.125,
			alt_ammo_pickup_max_mul = 0.82,
			alt_ammo_pickup_min_mul = 0.82,
			ammo_pickup_max_mul = 0.82,
			ammo_pickup_min_mul = 0.82
		}

		--KACFLAME

		self.parts.wpn_fps_ass_m4_flamethrower_kacflame.supported = true
		self.parts.wpn_fps_ass_m4_flamethrower_kacflame.stats = {
			value = 10,
			concealment = -5,
			spread = -2,
			recoil = 3,
			total_ammo_mod = -82
		}
		self.parts.wpn_fps_ass_m4_flamethrower_kacflame.custom_stats = {
			ads_speed_mult = 1.125,
			alt_ammo_pickup_max_mul = 0.6,
			alt_ammo_pickup_min_mul = 0.6,
			ammo_pickup_max_mul = 0.6,
			ammo_pickup_min_mul = 0.6
		}

		--JAKPURIFIER

		self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.supported = true
		self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.stats = {
			value = 10,
			concealment = -5,
			spread = -3,
			recoil = 4,
			total_ammo_mod = -82
		}
		self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.custom_stats = {
			ads_speed_mult = 1.125,
			alt_ammo_pickup_max_mul = 0.6,
			alt_ammo_pickup_min_mul = 0.6,
			ammo_pickup_max_mul = 0.6,
			ammo_pickup_min_mul = 0.6
		}

		--GP25

		self.parts.wpn_fps_ass_74_gl_gp25.supported = true
		self.parts.wpn_fps_ass_74_gl_gp25.stats = {
			value = 10,
			concealment = -4,
			spread = -4,
			recoil = 2,
			total_ammo_mod = -82
		}
		self.parts.wpn_fps_ass_74_gl_gp25.custom_stats = {
			ads_speed_mult = 1.125,
			alt_ammo_pickup_max_mul = 0.8,
			alt_ammo_pickup_min_mul = 0.8,
			ammo_pickup_max_mul = 0.8,
			ammo_pickup_min_mul = 0.8
		}

		--M320

		self.parts.wpn_fps_ass_m4_gl_m320.supported = true
		self.parts.wpn_fps_ass_m4_gl_m320.stats = {
			value = 10,
			concealment = -5,
			spread = 4,
			recoil = -2,
			total_ammo_mod = -82
		}
		self.parts.wpn_fps_ass_m4_gl_m320.custom_stats = {
			ads_speed_mult = 1.125,
			alt_ammo_pickup_max_mul = 0.8,
			alt_ammo_pickup_min_mul = 0.8,
			ammo_pickup_max_mul = 0.8,
			ammo_pickup_min_mul = 0.8
		}

	--Resmod Specific Weapons Stats
	
		--M203
		
		for i, used_part_id in pairs(self.wpn_fps_ass_m16.uses_parts) do
			self.wpn_fps_ass_m16.override.wpn_fps_ass_m4_gl_m203 = {
				stats = {
					value = 10,
					concealment = -5,
					spread = -2,
					recoil = 4,
					total_ammo_mod = -102,
				},
				custom_stats = {
					ads_speed_mult = 1.125,
					alt_ammo_pickup_max_mul = 0.74,
					alt_ammo_pickup_min_mul = 0.74,
					ammo_pickup_max_mul = 0.74,
					ammo_pickup_min_mul = 0.74
				},
			}
		end

		for i, used_part_id in pairs(self.wpn_fps_ass_g36.uses_parts) do
			self.wpn_fps_ass_g36.override.wpn_fps_ass_m4_gl_m203 = {
				stats = {
					value = 10,
					concealment = -5,
					spread = -2,
					recoil = 4,
					total_ammo_mod = -70,
				},
				custom_stats = {
					ads_speed_mult = 1.125,
					alt_ammo_pickup_max_mul = 0.84,
					alt_ammo_pickup_min_mul = 0.84,
					ammo_pickup_max_mul = 0.84,
					ammo_pickup_min_mul = 0.84
				},
			}
		end

		for i, used_part_id in pairs(self.wpn_fps_ass_fal.uses_parts) do
			self.wpn_fps_ass_fal.override.wpn_fps_ass_m4_gl_m203 = {
				stats = {
					value = 10,
					concealment = -5,
					spread = -2,
					recoil = 4,
					total_ammo_mod = -104,
				},
				custom_stats = {
					ads_speed_mult = 1.125,
					alt_ammo_pickup_max_mul = 0.54,
					alt_ammo_pickup_min_mul = 0.54,
					ammo_pickup_max_mul = 0.54,
					ammo_pickup_min_mul = 0.54
				},
			}
		end

		for i, used_part_id in pairs(self.wpn_fps_ass_galil.uses_parts) do
			self.wpn_fps_ass_galil.override.wpn_fps_ass_m4_gl_m203 = {
				stats = {
					value = 10,
					concealment = -5,
					spread = -2,
					recoil = 4,
					total_ammo_mod = -102,
				},
				custom_stats = {
					ads_speed_mult = 1.125,
					alt_ammo_pickup_max_mul = 0.54,
					alt_ammo_pickup_min_mul = 0.54,
					ammo_pickup_max_mul = 0.54,
					ammo_pickup_min_mul = 0.54
				},
			}
		end

		--M203 Short
		
		for i, used_part_id in pairs(self.wpn_fps_ass_amcar.uses_parts) do
			self.wpn_fps_ass_amcar.override.wpn_fps_smg_mp5_gl_m203 = {
				stats = {
					value = 10,
					concealment = -3,
					spread = -2,
					recoil = 1,
					total_ammo_mod = -70,
				},
				custom_stats = {
					ads_speed_mult = 1.125,
					alt_ammo_pickup_max_mul = 0.84,
					alt_ammo_pickup_min_mul = 0.84,
					ammo_pickup_max_mul = 0.84,
					ammo_pickup_min_mul = 0.84
				},
			}
		end

		--GP25
		
		for i, used_part_id in pairs(self.wpn_fps_ass_akm.uses_parts) do
			self.wpn_fps_ass_akm.override.wpn_fps_ass_74_gl_gp25 = {
				stats = {
					value = 10,
					concealment = -4,
					spread = -4,
					recoil = 2,
					total_ammo_mod = -102,
				},
				custom_stats = {
					ads_speed_mult = 1.125,
					alt_ammo_pickup_max_mul = 0.74,
					alt_ammo_pickup_min_mul = 0.74,
					ammo_pickup_max_mul = 0.74,
					ammo_pickup_min_mul = 0.74
				},
			}
		end

		for i, used_part_id in pairs(self.wpn_fps_ass_fal.uses_parts) do
			self.wpn_fps_ass_fal.override.wpn_fps_ass_74_gl_gp25 = {
				stats = {
					value = 10,
					concealment = -4,
					spread = -4,
					recoil = 2,
					total_ammo_mod = -104,
				},
				custom_stats = {
					ads_speed_mult = 1.125,
					alt_ammo_pickup_max_mul = 0.54,
					alt_ammo_pickup_min_mul = 0.54,
					ammo_pickup_max_mul = 0.54,
					ammo_pickup_min_mul = 0.54
				},
			}
		end

		for i, used_part_id in pairs(self.wpn_fps_ass_galil.uses_parts) do
			self.wpn_fps_ass_galil.override.wpn_fps_ass_74_gl_gp25 = {
				stats = {
					value = 10,
					concealment = -4,
					spread = -4,
					recoil = 2,
					total_ammo_mod = -102,
				},
				custom_stats = {
					ads_speed_mult = 1.125,
					alt_ammo_pickup_max_mul = 0.54,
					alt_ammo_pickup_min_mul = 0.54,
					ammo_pickup_max_mul = 0.54,
					ammo_pickup_min_mul = 0.54
				},
			}
		end
		
		--M320
		
		for i, used_part_id in pairs(self.wpn_fps_ass_m16.uses_parts) do
			self.wpn_fps_ass_m16.override.wpn_fps_ass_m4_gl_m320 = {
				stats = {
					value = 10,
					concealment = -5,
					spread = 4,
					recoil = -2,
					total_ammo_mod = -102,
				},
				custom_stats = {
					ads_speed_mult = 1.125,
					alt_ammo_pickup_max_mul = 0.74,
					alt_ammo_pickup_min_mul = 0.74,
					ammo_pickup_max_mul = 0.74,
					ammo_pickup_min_mul = 0.74
				},
			}
		end

		for i, used_part_id in pairs(self.wpn_fps_ass_g36.uses_parts) do
			self.wpn_fps_ass_g36.override.wpn_fps_ass_m4_gl_m320 = {
				stats = {
					value = 10,
					concealment = -5,
					spread = 4,
					recoil = -2,
					total_ammo_mod = -70,
				},
				custom_stats = {
					ads_speed_mult = 1.125,
					alt_ammo_pickup_max_mul = 0.84,
					alt_ammo_pickup_min_mul = 0.84,
					ammo_pickup_max_mul = 0.84,
					ammo_pickup_min_mul = 0.84
				},
			}
		end

		--KACFLAME
		
		for i, used_part_id in pairs(self.wpn_fps_ass_m16.uses_parts) do
			self.wpn_fps_ass_m16.override.wpn_fps_ass_m4_flamethrower_kacflame = {
				stats = {
					value = 10,
					concealment = -5,
					spread = -2,
					recoil = 3,
					total_ammo_mod = -102,
				},
				custom_stats = {
					ads_speed_mult = 1.125,
					alt_ammo_pickup_max_mul = 0.48,
					alt_ammo_pickup_min_mul = 0.48,
					ammo_pickup_max_mul = 0.48,
					ammo_pickup_min_mul = 0.48
				},
			}
		end

		for i, used_part_id in pairs(self.wpn_fps_ass_g36.uses_parts) do
			self.wpn_fps_ass_g36.override.wpn_fps_ass_m4_flamethrower_kacflame = {
				stats = {
					value = 10,
					concealment = -5,
					spread = -2,
					recoil = 3,
					total_ammo_mod = -70,
				},
				custom_stats = {
					ads_speed_mult = 1.125,
					alt_ammo_pickup_max_mul = 0.68,
					alt_ammo_pickup_min_mul = 0.68,
					ammo_pickup_max_mul = 0.68,
					ammo_pickup_min_mul = 0.68
				},
			}
		end

		for i, used_part_id in pairs(self.wpn_fps_ass_galil.uses_parts) do
			self.wpn_fps_ass_galil.override.wpn_fps_ass_m4_flamethrower_kacflame = {
				stats = {
					value = 10,
					concealment = -5,
					spread = -2,
					recoil = 3,
					total_ammo_mod = -102,
				},
				custom_stats = {
					ads_speed_mult = 1.125,
					alt_ammo_pickup_max_mul = 0.54,
					alt_ammo_pickup_min_mul = 0.54,
					ammo_pickup_max_mul = 0.54,
					ammo_pickup_min_mul = 0.54
				},
			}
		end

		--JAKPURIFIER
		
		for i, used_part_id in pairs(self.wpn_fps_ass_m16.uses_parts) do
			self.wpn_fps_ass_m16.override.wpn_fps_ass_m4_flamethrower_jakpurifier = {
				stats = {
					value = 10,
					concealment = -5,
					spread = -3,
					recoil = 4,
					total_ammo_mod = -102,
				},
				custom_stats = {
					ads_speed_mult = 1.125,
					alt_ammo_pickup_max_mul = 0.48,
					alt_ammo_pickup_min_mul = 0.48,
					ammo_pickup_max_mul = 0.48,
					ammo_pickup_min_mul = 0.48
				},
			}
		end

		for i, used_part_id in pairs(self.wpn_fps_ass_g36.uses_parts) do
			self.wpn_fps_ass_g36.override.wpn_fps_ass_m4_flamethrower_jakpurifier = {
				stats = {
					value = 10,
					concealment = -5,
					spread = -3,
					recoil = 4,
					total_ammo_mod = -70,
				},
				custom_stats = {
					ads_speed_mult = 1.125,
					alt_ammo_pickup_max_mul = 0.68,
					alt_ammo_pickup_min_mul = 0.68,
					ammo_pickup_max_mul = 0.68,
					ammo_pickup_min_mul = 0.68
				},
			}
		end

	--Grenades

		self.parts.wpn_fps_upg_a_m203_electric.supported = true
		self.parts.wpn_fps_upg_a_m203_electric.depends_on = "underbarrel"
		
		self.parts.wpn_fps_upg_a_m203_poison.supported = true
		self.parts.wpn_fps_upg_a_m203_poison.depends_on = "underbarrel"
		
		self.parts.wpn_fps_upg_a_m203_incendiary.supported = true
		self.parts.wpn_fps_upg_a_m203_incendiary.depends_on = "underbarrel"

	end

	--Forbids

		--KACFLAME

		self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids = {}
		for used_part_id, i in pairs(self.parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].pcs then
				if self.parts[used_part_id].type and self.parts[used_part_id].type == "vertical_grip" or
					self.parts[used_part_id].type == "underbarrel_ammo" or
					self.parts[used_part_id].type == "exclusive_set" or
					(self.parts[used_part_id].type == "magazine" and 
						self.parts[used_part_id].stats and 
						self.parts[used_part_id].stats.extra_ammo and 
						self.parts[used_part_id].stats.extra_ammo >= 15) then
					table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, used_part_id)
				end
			end
		end

		--JAKPURIFIER

		self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids = {}
		for used_part_id, i in pairs(self.parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].pcs then
				if self.parts[used_part_id].type and self.parts[used_part_id].type == "vertical_grip" or
					self.parts[used_part_id].type == "underbarrel_ammo" or
					self.parts[used_part_id].type == "exclusive_set" or
					(self.parts[used_part_id].type == "magazine" and 
						self.parts[used_part_id].stats and 
						self.parts[used_part_id].stats.extra_ammo and 
						self.parts[used_part_id].stats.extra_ammo >= 15) then
					table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, used_part_id)
				end
			end
		end

		--GP25

		self.parts.wpn_fps_ass_74_gl_gp25.forbids = {}
		for used_part_id, i in pairs(self.parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].pcs then
				if self.parts[used_part_id].type and self.parts[used_part_id].type == "vertical_grip" or
					self.parts[used_part_id].type == "exclusive_set" or
					(self.parts[used_part_id].type == "magazine" and 
						self.parts[used_part_id].stats and 
						self.parts[used_part_id].stats.extra_ammo and 
						self.parts[used_part_id].stats.extra_ammo >= 15) then
					table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, used_part_id)
				end
			end
		end

		--M203

		self.parts.wpn_fps_ass_m4_gl_m203.forbids = {}
		for used_part_id, i in pairs(self.parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].pcs then
				if self.parts[used_part_id].type and self.parts[used_part_id].type == "vertical_grip" or
					self.parts[used_part_id].type == "exclusive_set" or
					(self.parts[used_part_id].type == "magazine" and 
						self.parts[used_part_id].stats and 
						self.parts[used_part_id].stats.extra_ammo and 
						self.parts[used_part_id].stats.extra_ammo >= 15) then
					table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, used_part_id)
				end
			end
		end

		--M203 Short

		self.parts.wpn_fps_smg_mp5_gl_m203.forbids = {}
		for used_part_id, i in pairs(self.parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].pcs then
				if self.parts[used_part_id].type and self.parts[used_part_id].type == "vertical_grip" or
					self.parts[used_part_id].type == "exclusive_set" or
					(self.parts[used_part_id].type == "magazine" and 
						self.parts[used_part_id].stats and 
						self.parts[used_part_id].stats.extra_ammo and 
						self.parts[used_part_id].stats.extra_ammo >= 15) then
					table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, used_part_id)
				end
			end
		end
		
		--M320
		
		self.parts.wpn_fps_ass_m4_gl_m320.forbids = {}
		for used_part_id, i in pairs(self.parts) do
			if self.parts[used_part_id] and self.parts[used_part_id].pcs then
				if self.parts[used_part_id].type and self.parts[used_part_id].type == "vertical_grip" or
					self.parts[used_part_id].type == "exclusive_set" or
					(self.parts[used_part_id].type == "magazine" and 
						self.parts[used_part_id].stats and 
						self.parts[used_part_id].stats.extra_ammo and 
						self.parts[used_part_id].stats.extra_ammo >= 15) then
					table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, used_part_id)
				end
			end
		end
	
	
	-- Ak/Car Mod Pack
	if BeardLib.Utils:FindMod("AR AK Mods") then
	
		-- M203
	
		self.parts.wpn_fps_ass_m4_gl_m203.forbids = self.parts.wpn_fps_ass_m4_gl_m203.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_upg_m4_fg_victorshort")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_snp_tti_fg_m4")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_m4_fg_vietnam_akcar")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_upg_m16_fg_edge")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_galil_fg_ar")

		-- KACFLAME

		self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids = self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_upg_m4_fg_victorshort")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_snp_tti_fg_m4")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_ass_m4_fg_vietnam_akcar")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_upg_m16_fg_edge")
		
		-- JAKPURIFIER

		self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids = self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_upg_m4_fg_victorshort")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_snp_tti_fg_m4")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_ass_m4_fg_vietnam_akcar")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_upg_m16_fg_edge")
				
		-- M320
		
		self.parts.wpn_fps_ass_m4_gl_m320.forbids = self.parts.wpn_fps_ass_m4_gl_m320.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_upg_m4_fg_victorshort")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_snp_tti_fg_m4")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_ass_m4_fg_vietnam_akcar")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_upg_m16_fg_edge")
		
		-- GP25
		
		self.parts.wpn_fps_ass_74_gl_gp25.forbids = self.parts.wpn_fps_ass_74_gl_gp25.forbids or {}
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_fps_upg_ak_fg_modern")
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_fps_upg_ak_fg_stg")
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_upg_ak_fg_saiga")
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_upg_ak_fg_saiga_ultimak")
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_fps_ass_galil_fg_ar")
		
		-- M203 Short
		
		self.parts.wpn_fps_smg_mp5_gl_m203.forbids = self.parts.wpn_fps_smg_mp5_gl_m203.forbids or {}
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_ass_amcar_fg_mp5sd")
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_ass_amcar_fg_vietnam")
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_ass_amcar_fg_mp5sd")
		
	end
	
	-- Vanilla Mod Pack
	if BeardLib.Utils:FindMod("Vanilla Styled Weapon Mods") then
	
		-- M203
	
		self.parts.wpn_fps_ass_m4_gl_m203.forbids = self.parts.wpn_fps_ass_m4_gl_m203.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_m16_fg_smooth")

		-- KACFLAME

		self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids = self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_ass_m16_fg_smooth")
		
		-- M320
		
		self.parts.wpn_fps_ass_m4_gl_m320.forbids = self.parts.wpn_fps_ass_m4_gl_m320.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_ass_m16_fg_smooth")
		
		-- M203 Short
		
		self.parts.wpn_fps_smg_mp5_gl_m203.forbids = self.parts.wpn_fps_smg_mp5_gl_m203.forbids or {}
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_ass_amcar_fg_cylinder")

		-- JAKPURIFIER

		self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids = self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_ass_m16_fg_smooth")
		
	end
		
	-- Hk Mod Pack
	if BeardLib.Utils:FindMod("HK Mods") then
	
		-- M203
		
		self.parts.wpn_fps_ass_m4_gl_m203.forbids = self.parts.wpn_fps_ass_m4_gl_m203.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_g36_fg_ksk_sd")

		-- KACFLAME
		
		self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids = self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_ass_g36_fg_ksk_sd")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_ass_g36_fg_tfc")

		-- JAKPURIFIER
		
		self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids = self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_ass_g36_fg_ksk_sd")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_ass_g36_fg_tfc")
		
		-- M320

		self.parts.wpn_fps_ass_m4_gl_m320.forbids = self.parts.wpn_fps_ass_m4_gl_m320.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_ass_g36_fg_ksk_sd")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_ass_g36_fg_tfc")
	
		-- M203 Short
	
		self.parts.wpn_fps_smg_mp5_gl_m203.forbids = self.parts.wpn_fps_smg_mp5_gl_m203.forbids or {}
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_smg_mp5_fg_m5k_norail")
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_smg_mp5_fg_civilian")
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_smg_mp5_fg_hk51b")
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_smg_mp5_fg_hk51b_railed")
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_smg_mp5_fg_polymer")
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_smg_mp5_fg_wood")

	end
	
	-- Vanilla Attachments
	
		-- M203
	
		self.parts.wpn_fps_ass_m4_gl_m203.forbids = self.parts.wpn_fps_ass_m4_gl_m203.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_m4_uupg_fg_lr300")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_upg_fg_jp")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_upg_ass_m4_fg_moe")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_uupg_fg_radian")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_upg_ass_m16_fg_stag")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_m16_fg_vietnam")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_g36_fg_c")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_g36_fg_ksk")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_galil_fg_sar")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_galil_fg_mar")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_fal_fg_04")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_fal_fg_01")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m203.forbids, "wpn_fps_ass_fal_fg_03")

		-- KACFLAME

		self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids = self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_m4_uupg_fg_lr300")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_upg_fg_jp")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_upg_ass_m4_fg_moe")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_uupg_fg_radian")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_upg_ass_m16_fg_stag")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_m16_fg_vietnam")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_ass_g36_fg_c")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_ass_g36_fg_ksk")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_ass_galil_fg_sar")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_kacflame.forbids, "wpn_fps_ass_galil_fg_mar")

		-- JAKPURIFIER

		self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids = self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_m4_uupg_fg_lr300")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_upg_fg_jp")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_upg_ass_m4_fg_moe")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_uupg_fg_radian")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_upg_ass_m16_fg_stag")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_m16_fg_vietnam")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_ass_g36_fg_c")
		table.insert(self.parts.wpn_fps_ass_m4_flamethrower_jakpurifier.forbids, "wpn_fps_ass_g36_fg_ksk")
		
		-- M320
		
		self.parts.wpn_fps_ass_m4_gl_m320.forbids = self.parts.wpn_fps_ass_m4_gl_m320.forbids or {}
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_m4_uupg_fg_lr300")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_upg_fg_jp")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_upg_ass_m4_fg_moe")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_uupg_fg_radian")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_upg_ass_m16_fg_stag")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_m16_fg_vietnam")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_ass_g36_fg_c")
		table.insert(self.parts.wpn_fps_ass_m4_gl_m320.forbids, "wpn_fps_ass_g36_fg_ksk")

		-- GP25
		
		self.parts.wpn_fps_ass_74_gl_gp25.forbids = self.parts.wpn_fps_ass_74_gl_gp25.forbids or {}
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_fps_upg_ak_fg_tapco")
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_fps_ass_galil_fg_sar")
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_fps_ass_galil_fg_mar")
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_fps_ass_galil_fg_fab")
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_fps_ass_fal_fg_04")
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_fps_ass_fal_fg_01")
		table.insert(self.parts.wpn_fps_ass_74_gl_gp25.forbids, "wpn_fps_ass_fal_fg_03")
		
		-- M203 Short
		
		self.parts.wpn_fps_smg_mp5_gl_m203.forbids = self.parts.wpn_fps_smg_mp5_gl_m203.forbids or {}
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_smg_mp5_fg_flash")
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_smg_mp5_fg_m5k")
		table.insert(self.parts.wpn_fps_smg_mp5_gl_m203.forbids, "wpn_fps_smg_mp5_fg_mp5sd")
		
		
	-- Default Handguards
	
		-- M203
	
		self.parts.wpn_fps_ass_g36_fg_c.forbids = self.parts.wpn_fps_ass_g36_fg_c.forbids or {}
		table.insert(self.parts.wpn_fps_ass_g36_fg_k.forbids, "wpn_fps_ass_m4_gl_m203")

		self.parts.wpn_fps_ass_galil_fg_standard.forbids = self.parts.wpn_fps_ass_galil_fg_standard.forbids or {}
		table.insert(self.parts.wpn_fps_ass_galil_fg_standard.forbids, "wpn_fps_ass_m4_gl_m203")
		
		-- GP25
		
		self.parts.wpn_fps_ass_galil_fg_standard.forbids = self.parts.wpn_fps_ass_galil_fg_standard.forbids or {}
		table.insert(self.parts.wpn_fps_ass_galil_fg_standard.forbids, "wpn_fps_ass_74_gl_gp25")
	
		-- KACFLAME
	
		self.parts.wpn_fps_ass_g36_fg_c.forbids = self.parts.wpn_fps_ass_g36_fg_c.forbids or {}
		table.insert(self.parts.wpn_fps_ass_g36_fg_k.forbids, "wpn_fps_ass_m4_flamethrower_kacflame")

		self.parts.wpn_fps_ass_galil_fg_standard.forbids = self.parts.wpn_fps_ass_galil_fg_standard.forbids or {}
		table.insert(self.parts.wpn_fps_ass_galil_fg_standard.forbids, "wpn_fps_ass_m4_flamethrower_kacflame")

		self.parts.wpn_fps_m16_fg_standard.forbids = self.parts.wpn_fps_m16_fg_standard.forbids or {}
		table.insert(self.parts.wpn_fps_m16_fg_standard.forbids, "wpn_fps_ass_m4_flamethrower_kacflame")
		
		-- M320
			
		self.parts.wpn_fps_ass_g36_fg_c.forbids = self.parts.wpn_fps_ass_g36_fg_c.forbids or {}
		table.insert(self.parts.wpn_fps_ass_g36_fg_k.forbids, "wpn_fps_ass_m4_gl_m320")
		
		self.parts.wpn_fps_m16_fg_standard.forbids = self.parts.wpn_fps_m16_fg_standard.forbids or {}
		table.insert(self.parts.wpn_fps_m16_fg_standard.forbids, "wpn_fps_ass_m4_gl_m203")
		
		self.parts.wpn_fps_m16_fg_standard.forbids = self.parts.wpn_fps_m16_fg_standard.forbids or {}
		table.insert(self.parts.wpn_fps_m16_fg_standard.forbids, "wpn_fps_ass_m4_gl_m320")
	
		-- M203 Short
	
		self.parts.wpn_fps_smg_mp5_fg_mp5a4.forbids = self.parts.wpn_fps_smg_mp5_fg_mp5a4.forbids or {}
		table.insert(self.parts.wpn_fps_smg_mp5_fg_mp5a4.forbids, "wpn_fps_smg_mp5_gl_m203")	
	
		self.parts.wpn_fps_amcar_uupg_fg_amcar.forbids = self.parts.wpn_fps_amcar_uupg_fg_amcar.forbids or {}
		table.insert(self.parts.wpn_fps_amcar_uupg_fg_amcar.forbids, "wpn_fps_smg_mp5_gl_m203")
	
		-- JAKPURIFIER
	
		self.parts.wpn_fps_m16_fg_standard.forbids = self.parts.wpn_fps_m16_fg_standard.forbids or {}
		table.insert(self.parts.wpn_fps_m16_fg_standard.forbids, "wpn_fps_ass_m4_flamethrower_jakpurifier")
		
		self.parts.wpn_fps_ass_g36_fg_c.forbids = self.parts.wpn_fps_ass_g36_fg_c.forbids or {}
		table.insert(self.parts.wpn_fps_ass_g36_fg_k.forbids, "wpn_fps_ass_m4_flamethrower_jakpurifier")
	
end)