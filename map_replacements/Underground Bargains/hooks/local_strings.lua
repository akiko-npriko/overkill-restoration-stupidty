Hooks:Add("LocalizationManagerPostInit", "UBLocalization", function(loc)
		LocalizationManager:add_localized_strings({
		["menu_description_hazzalaw"] = "Masterplan",
		["menu_spectator_being_traded_hesitant_hazzalaw"] = "Bookworm is negotiating with Police, I'm sure he'll make it through"
		})
end)