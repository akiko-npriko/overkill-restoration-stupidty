--Barrels
local barrels = {
	--Short Barrel
	--barrels.short_b1_stats
		short_b1_stats = {
			value = 1,
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
			value = 3,
			spread = -6,
			concealment = 3,
			falloff_start_mult = 0.775,
			falloff_end_mult = 0.775,
			ads_speed_mult = 0.925
		},

	--Long Barrel
	--barrels.long_b1_stats
		long_b1_stats = {
			value = 4,
			spread = 1,
			concealment = -1,
			falloff_start_mult = 1.075,
			falloff_end_mult = 1.075,
			ads_speed_mult = 1.025
		},
	--Longer Barrel
	--barrels.long_b2_stats
		long_b2_stats = {
			value = 5,
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
			adj_to_thumb_stats = {
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
	-- Blank Suppressor
		supp_blank = {
			suppression = 12,
			alert_size = -1,
			value = 1,
		},

	-- +Con -Acc/Range
		muzz_con_a = {
			value = 3,
			spread = -1,
			concealment = 1,
			suppression = 12,
			falloff_start_mult = 0.95,
			falloff_end_mult = 0.95
		},
		supp_con_a = { --Extra Con for Acc/Range
			suppression = 12,
			alert_size = -1,
			value = 3,
			spread = -2,
			concealment = 2,
			falloff_start_mult = 0.9,
			falloff_end_mult = 0.9
		},
	-- +Con -Stab
		muzz_con_r = {
			value = 3,
			recoil = -2,
			concealment = 1,
			falloff_start_mult = 0.95,
			falloff_end_mult = 0.95
		},
		supp_con_r = { --Extra Con for Stab
			suppression = 12,
			alert_size = -1,
			value = 3,
			recoil = -4,
			concealment = 2,
			falloff_start_mult = 0.9,
			falloff_end_mult = 0.9
		},


	-- +Stab -Acc/Range
		muzz_rec_a = {
			value = 3,
			spread = -1,
			recoil = 2,
			falloff_start_mult = 0.95,
			falloff_end_mult = 0.95
		},
		supp_rec_a = { --Extra Con for Acc/Range
			suppression = 12,
			alert_size = -1,
			value = 3,
			spread = -2,
			recoil = 2,
			concealment = 1,
			falloff_start_mult = 0.9,
			falloff_end_mult = 0.9
		},
	-- ++Stab --Acc/Range
		muzz_rec2_a = {
			value = 5,
			spread = -1,
			recoil = 4,
			concealment = -1,
			falloff_start_mult = 0.9,
			falloff_end_mult = 0.9
		},
		supp_rec2_a = { --Extra Stab for Acc/Range
			suppression = 12,
			alert_size = -1,
			value = 5,
			spread = -2,
			recoil = 6,
			concealment = -1,
			falloff_start_mult = 0.85,
			falloff_end_mult = 0.85
		},
	-- +Stab -Con
		muzz_rec_c = {
			value = 2,
			recoil = 2,
			concealment = -1
		},
		supp_rec_c = { --Extra Stab for Con
			suppression = 12,
			alert_size = -1,
			value = 2,
			recoil = 4,
			concealment = -2
		},
	-- ++Stab --Con
		muzz_rec2_c = {
			value = 5,
			recoil = 4,
			concealment = -2
		},
		supp_rec2_c = { --Extra Stab for Con
			suppression = 12,
			alert_size = -1,
			value = 5,
			recoil = 6,
			concealment = -3
		},

	-- +Acc/Range -Stab
		muzz_acc_r = {
			value = 3,
			spread = 1,
			recoil = -2,
			falloff_start_mult = 1.05,
			falloff_end_mult = 1.05
		},
		supp_acc_r = { --Extra Acc/Range for Con
			suppression = 12,
			alert_size = -1,
			value = 3,
			spread = 2,
			recoil = -2,
			concealment = -1,
			falloff_start_mult = 1.1,
			falloff_end_mult = 1.1
		},
	-- ++Acc --Stab
		muzz_acc2_r = {
			value = 5,
			spread = 2,
			recoil = -4,
			falloff_start_mult = 1.1,
			falloff_end_mult = 1.1
		},
		supp_acc2_r = { --Extra Acc/Range for Stab
			suppression = 12,
			alert_size = -1,
			value = 5,
			spread = 3,
			recoil = -6,
			falloff_start_mult = 1.15,
			falloff_end_mult = 1.15
		},
	-- +++Acc ---Stab
		muzz_acc3_r = {
			value = 6,
			spread = 3,
			recoil = -6,
			falloff_start_mult = 1.15,
			falloff_end_mult = 1.15
		},
		supp_acc3_r = { --Extra Acc/Range for Stab
			suppression = 12,
			alert_size = -1,
			value = 6,
			spread = 4,
			recoil = -8,
			falloff_start_mult = 1.2,
			falloff_end_mult = 1.2
		},

	-- +Acc/Range -Con
		muzz_acc_c = {
			value = 2,
			spread = 1,
			concealment = -1,
			falloff_start_mult = 1.05,
			falloff_end_mult = 1.05
		},
		supp_acc_c = { --Extra Acc/range for Con
			suppression = 12,
			alert_size = -1,
			value = 2,
			spread = 2,
			concealment = -2,
			falloff_start_mult = 1.1,
			falloff_end_mult = 1.1
		},
	-- ++Acc/Range --Con
		muzz_acc2_c = {
			value = 5,
			spread = 2,
			concealment = -2,
			falloff_start_mult = 1.1,
			falloff_end_mult = 1.1
		},
		supp_acc2_c = { --Extra Acc/range for Con
			suppression = 12,
			alert_size = -1,
			value = 5,
			spread = 3,
			concealment = -3,
			falloff_start_mult = 1.15,
			falloff_end_mult = 1.15
		},

	-- +Stab +Acc/Range --Con
		muzz_dual_c = {
			value = 5,
			spread = 1,
			recoil = 2,
			concealment = -2,
			falloff_start_mult = 1.05,
			falloff_end_mult = 1.05,
			ads_speed_mult = 1.025
		},
		supp_dual_c = { --Extra Stab for Con
			suppression = 12,
			alert_size = -1,
			value = 5,
			spread = 1,
			recoil = 4,
			concealment = -2,
			falloff_start_mult = 1.1,
			falloff_end_mult = 1.1,
			ads_speed_mult = 1.05
		},
	-- ++Stab ++Acc/Range ----Con
		muzz_dual2_c = {
			value = 7,
			spread = 2,
			recoil = 4,
			concealment = -4,
			falloff_start_mult = 1.1,
			falloff_end_mult = 1.1,
			ads_speed_mult = 1.05
		},
		supp_dual2_c = { --Extra Acc/range for Con
			suppression = 12,
			alert_size = -1,
			value = 7,
			spread = 3,
			recoil = 4,
			concealment = -5,
			falloff_start_mult = 1.15,
			falloff_end_mult = 1.15,
			ads_speed_mult = 1.1
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
		recoil_2_dual = {
			value = 6,
			recoil = 4,
			spread = -1,
			concealment = -1
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
			spread = 2,
			recoil = -4
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
	dual_stat_2_rec = {
		value = 8,
		spread = 1,
		recoil = 4,
		concealment = -3,
		ads_speed_mult = 1.075
	},
	dual_stat_2_acc = {
		value = 8,
		spread = 2,
		recoil = 2,
		concealment = -3,
		ads_speed_mult = 1.075
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

Hooks:PostHook(WeaponFactoryTweakData, "init", "hk45paint_sc", function(self)

	if restoration then
	
		self.parts.wpn_fps_pis_sg45_m_extended.supported = true
		self.parts.wpn_fps_pis_sg45_m_extended.stats = {
			extra_ammo = 2,
			reload = -3,
			concealment = -1,
			value = 1
		}
		self.wpn_fps_pis_x_sg45.override.wpn_fps_pis_sg45_m_extended = {
			stats = {
			extra_ammo = 4,
			reload = -3,
			concealment = -1,
			value = 1
			}
		}

		self.parts.wpn_fps_pis_sg45_sl_chrome.supported = true
		self.parts.wpn_fps_pis_sg45_sl_chrome.stats = {
			value = 1
		}
		
		self.parts.wpn_fps_pis_sg45_body_fde.supported = true
		self.parts.wpn_fps_pis_sg45_body_fde.stats = {
			value = 1,
			recoil = 2,
			concealment = -1
		}		
		
	end
	
end)