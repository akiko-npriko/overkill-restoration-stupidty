function CustomSafehouseManager:disable_in_game_menu()
	if managers.menu:active_menu() and managers.menu:active_menu().name == "custom_safehouse_menu" then
		if self._should_enable_hud then
			managers.hud:set_enabled()
		end

		managers.menu:close_menu("custom_safehouse_menu")

		if managers.menu_scene then
			managers.menu_scene:pre_unload()
			managers.menu_scene:unload()
			managers.menu_scene = nil
		end
	end
end

function CustomSafehouseManager:enable_in_game_menu()
	self._should_enable_hud = not Global.hud_disabled

	managers.hud:set_disabled()
	managers.menu:open_menu("custom_safehouse_menu")
end

function CustomSafehouseManager:open_in_game_loadout(category, unit)
	if not managers.menu:active_menu() or managers.menu:active_menu().name ~= "custom_safehouse_menu" then
		self:enable_in_game_menu()
	end

	if not managers.menu_scene then
		managers.menu_scene = IngameWeaponMenuSceneManager:new(unit)
	end

	category = category or "primaries"

	local crafted_category = managers.blackmarket:get_crafted_category(category) or {}
	local new_node_data = {
		category = category
	}
	local rows = tweak_data.gui.WEAPON_ROWS_PER_PAGE or 3
	local columns = tweak_data.gui.WEAPON_COLUMNS_PER_PAGE or 3
	local max_pages = tweak_data.gui.MAX_WEAPON_PAGES or 8
	local items_per_page = rows * columns
	local item_data, selected_tab = nil

	local equipped_slot = managers.blackmarket:equipped_weapon_slot_temp(category)

	for page = 1, max_pages do
		local index = 1
		local start_i = 1 + items_per_page * (page - 1)
		item_data = {}

		for i = start_i, items_per_page * page do
			item_data[index] = i
			index = index + 1

			if i == equipped_slot then
				selected_tab = page
			end
		end

		local name_id = managers.localization:to_upper_text("bm_menu_page", {
			page = tostring(page)
		})

		table.insert(new_node_data, {
			prev_node_data = false,
			on_create_func_name = "populate_weapon_category_new_temp",
			name = category,
			category = category,
			start_i = start_i,
			name_localized = name_id,
			on_create_data = item_data,
			identifier = BlackMarketGui.identifiers.weapon,
			override_slots = {
				columns,
				rows
			}
		})
	end

	new_node_data.can_move_over_tabs = true
	new_node_data.selected_tab = selected_tab
	new_node_data.scroll_tab_anywhere = true
	new_node_data.topic_id = "bm_menu_" .. category
	new_node_data.topic_params = {
		weapon_category = managers.localization:text("bm_menu_weapons")
	}

	new_node_data.custom_callback = {
		w_equip = function(data, gui)
			managers.blackmarket:equip_weapon_in_game_temp(data.category, data.slot, true)
			gui:reload()
		end,
		w_place = function(data, gui)
			managers.blackmarket:place_crafted_item_update_temp_equipped(data.category, data.slot)
			managers.blackmarket:place_crafted_item(data.category, data.slot)
			gui:reload()
		end,
		w_swap = function(data, gui)
			managers.blackmarket:place_crafted_item_update_temp_equipped(data.category, data.slot)
			managers.blackmarket:place_crafted_item(data.category, data.slot)
			gui:reload()
		end
	}

	new_node_data.back_callback = callback(self, self, "disable_in_game_menu")

	managers.menu:open_node("blackmarket_node", {
		new_node_data
	})
end