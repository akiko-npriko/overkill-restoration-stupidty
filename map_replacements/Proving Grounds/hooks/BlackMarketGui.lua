function BlackMarketGui:populate_weapon_category_new_temp(data)
	managers.blackmarket:clear_temporary()
	managers.blackmarket:clear_preview_blueprint()

	local category = data.category
	local crafted_category = managers.blackmarket:get_crafted_category(category) or {}
	local last_weapon = table.size(crafted_category) == 1
	local last_unlocked_weapon = nil

	local equipped_slot = managers.blackmarket:equipped_weapon_slot_temp(category)

	if not last_weapon then
		local category_size = table.size(crafted_category)

		for i, crafted in pairs(crafted_category) do
			if not managers.blackmarket:weapon_unlocked(crafted.weapon_id) then
				category_size = category_size - 1
			end
		end

		last_unlocked_weapon = category_size == 1
	end

	local hold_crafted_item = managers.blackmarket:get_hold_crafted_item()
	local currently_holding = hold_crafted_item and hold_crafted_item.category == category
	local max_items = data.override_slots and data.override_slots[1] * data.override_slots[2] or 9
	local max_rows = tweak_data.gui.WEAPON_ROWS_PER_PAGE or 3
	max_items = max_rows * (data.override_slots and data.override_slots[1] or 3)

	for i = 1, max_items do
		data[i] = nil
	end

	local guis_catalog = "guis/"
	local bundle_folder = nil
	local weapon_data = Global.blackmarket_manager.weapons
	local new_data = {}
	local start_i = data.start_i
	local crafted, unlocked, part_dlc_lock, color_tweak = nil

	for i, index in pairs(data.on_create_data) do
		crafted = crafted_category[index]

		if crafted then
			new_data = {
				name = crafted.weapon_id,
				name_localized = managers.blackmarket:get_weapon_name_by_category_slot(category, index),
				raw_name_localized = managers.weapon_factory:get_weapon_name_by_factory_id(crafted.factory_id)
			}
			new_data.custom_name_text = managers.blackmarket:get_crafted_custom_name(category, index, true)
			new_data.category = category
			new_data.slot = index
			unlocked, part_dlc_lock = managers.blackmarket:weapon_unlocked_by_crafted(new_data.category, new_data.slot)
			new_data.unlocked = unlocked
			new_data.level = managers.blackmarket:weapon_level(crafted.weapon_id)
			new_data.can_afford = true
			new_data.equipped = index == equipped_slot
			new_data.skill_based = weapon_data[crafted.weapon_id].skill_based
			new_data.skill_name = new_data.skill_based and "bm_menu_skill_locked_" .. new_data.name
			new_data.func_based = weapon_data[crafted.weapon_id].func_based
			new_data.price = managers.money:get_weapon_slot_sell_value(category, index)
			local bitmap_texture, bg_texture = managers.blackmarket:get_weapon_icon_path(crafted.weapon_id, crafted.cosmetics)
			new_data.bitmap_texture = bitmap_texture
			new_data.bg_texture = bg_texture
			new_data.customize_locked = crafted.customize_locked
			new_data.locked_name = crafted.locked_name
			new_data.name_color = new_data.locked_name and crafted.cosmetics and tweak_data.economy.rarities[tweak_data.blackmarket.weapon_skins[crafted.cosmetics.id].rarity or "common"].color
			new_data.stream = true
			new_data.akimbo_gui_data = tweak_data.weapon[crafted.weapon_id] and tweak_data.weapon[crafted.weapon_id].akimbo_gui_data
			new_data.comparision_data = managers.blackmarket:get_weapon_stats(category, index)
			new_data.global_value = part_dlc_lock or tweak_data.weapon[new_data.name] and tweak_data.weapon[new_data.name].global_value or "normal"

			if _G.IS_VR then
				new_data.vr_locked = tweak_data.vr:is_locked("weapons", crafted.weapon_id)
				new_data.unlocked = new_data.unlocked and not tweak_data.vr:is_locked("weapons", crafted.weapon_id)
			end

			new_data.dlc_locked = tweak_data.lootdrop.global_values[new_data.global_value].unlock_id or nil
			new_data.lock_texture = self:get_lock_icon(new_data)
			new_data.holding = currently_holding and hold_crafted_item.slot == index
			new_data.part_dlc_lock = part_dlc_lock
			new_data.global_value = tweak_data.weapon[new_data.name] and tweak_data.weapon[new_data.name].global_value or "normal"

			if data.equip_weapon_cosmetics then
				new_data.equipped_slot = new_data.slot
				new_data.equipped_name = new_data.name
				new_data.equip_weapon_cosmetics = data.equip_weapon_cosmetics
			end

			local icon_list = managers.menu_component:create_weapon_mod_icon_list(crafted.weapon_id, category, crafted.factory_id, index)
			local icon_index = 1
			local new_parts = {}

			for _, part in pairs(managers.blackmarket:get_weapon_new_part_drops(crafted.factory_id) or {}) do
				local type = tweak_data.weapon.factory.parts[part].type
				new_parts[type] = true
			end

			if table.size(new_parts) > 0 then
				new_data.new_drop_data = {}
			end

			new_data.mini_icons = {}
			for _, icon in ipairs(icon_list) do
				table.insert(new_data.mini_icons, {
					layer = 1,
					h = 16,
					stream = false,
					w = 16,
					texture = icon.texture,
					right = (icon_index - 1) % 11 * 18,
					bottom = math.floor((icon_index - 1) / 11) * 25,
					alpha = icon.equipped and 1 or 0.25
				})

				if new_parts[icon.type] then
					table.insert(new_data.mini_icons, {
						texture = "guis/textures/pd2/blackmarket/inv_mod_new",
						layer = 1,
						h = 8,
						stream = false,
						w = 16,
						alpha = 1,
						right = (icon_index - 1) % 11 * 18,
						bottom = math.floor((icon_index - 1) / 11) * 25 + 16
					})
				end

				icon_index = icon_index + 1
			end

			new_data.hide_unselected_mini_icons = true
			color_tweak = crafted.cosmetics and tweak_data.blackmarket.weapon_skins[crafted.cosmetics.id]

			if color_tweak and color_tweak.is_a_color_skin then
				guis_catalog = "guis/"
				bundle_folder = color_tweak.texture_bundle_folder

				if bundle_folder then
					guis_catalog = guis_catalog .. "dlcs/" .. tostring(bundle_folder) .. "/"
				end

				table.insert(new_data.mini_icons, {
					stream = true,
					h = 32,
					layer = 0,
					w = 64,
					right = -16,
					texture = guis_catalog .. "textures/pd2/blackmarket/icons/weapon_color/" .. crafted.cosmetics.id,
					bottom = math.floor((#icon_list - 1) / 11) * 25 + 24
				})
			end

			if not new_data.unlocked then
				new_data.last_weapon = last_weapon
			else
				new_data.last_weapon = last_weapon or last_unlocked_weapon
			end

			if new_data.equipped then
				self._equipped_comparision_data = self._equipped_comparision_data or {}
				self._equipped_comparision_data[category] = new_data.comparision_data
			end

			local active = true

			if currently_holding then
				new_data.selected_text = managers.localization:to_upper_text("bm_menu_btn_swap_weapon")

				if new_data.slot ~= hold_crafted_item.slot then
					table.insert(new_data, "w_swap")
				end

				table.insert(new_data, "i_stop_move")
			else
				local has_mods = managers.weapon_factory:has_weapon_more_than_default_parts(crafted.factory_id)
				local can_mod = true

				if can_mod and data.allow_modify ~= false and has_mods and active then
					table.insert(new_data, "w_mod")
				end

				if data.allow_sell ~= false and not new_data.last_weapon then
					table.insert(new_data, "w_sell")
				end

				if active and not new_data.equipped and new_data.unlocked then
					table.insert(new_data, "w_equip")
				end

				if new_data.equipped and new_data.unlocked then
					table.insert(new_data, "w_move")
				end

				if data.allow_preview ~= false and active then
					table.insert(new_data, "w_preview")
				end
			end

			data[i] = new_data
		end
	end

	for i = 1, max_items do
		if not data[i] then
			new_data = {}

			if data.allow_buy ~= false then
				local can_buy_weapon = managers.blackmarket:is_weapon_slot_unlocked(category, data.on_create_data[i])

				if can_buy_weapon then
					new_data.name = "bm_menu_btn_buy_new_weapon"
					new_data.name_localized = managers.localization:text("bm_menu_empty_weapon_slot")
					new_data.mid_text = {
						noselected_text = new_data.name_localized,
						noselected_color = tweak_data.screen_colors.button_stage_3
					}
					new_data.mid_text.selected_text = currently_holding and new_data.mid_text.noselected_text or managers.localization:text("bm_menu_btn_buy_new_weapon")
					new_data.mid_text.selected_color = currently_holding and new_data.mid_text.noselected_color or tweak_data.screen_colors.button_stage_2
					new_data.empty_slot = true
					new_data.category = category
					new_data.slot = data.on_create_data[i]
					new_data.unlocked = true
					new_data.equipped = false

					if data.equip_weapon_cosmetics then
						if managers.money:can_afford_weapon(data.equip_weapon_cosmetics.weapon_id) then
							table.insert(new_data, "wcc_buy_equip_weapon")

							new_data.equip_weapon_cosmetics = data.equip_weapon_cosmetics
						else
							new_data.mid_text.selected_text = managers.localization:text("bm_menu_cannot_buy_weapon_slot")
							new_data.mid_text.selected_color = tweak_data.screen_colors.important_1
							new_data.dlc_locked = managers.localization:to_upper_text("bm_menu_cannot_buy_weapon_slot")
							new_data.mid_text.lock_noselected_color = tweak_data.screen_colors.important_1
							new_data.cannot_buy = true
						end
					else
						if currently_holding then
							new_data.selected_text = managers.localization:to_upper_text("bm_menu_btn_place_weapon")

							table.insert(new_data, "w_place")
							table.insert(new_data, "i_stop_move")
						else
							table.insert(new_data, "ew_buy")
						end

						if managers.blackmarket:got_new_drop(new_data.category, "weapon_buy_empty", nil) then
							new_data.mini_icons = new_data.mini_icons or {}

							table.insert(new_data.mini_icons, {
								stream = false,
								name = "new_drop",
								h = 16,
								layer = 1,
								w = 16,
								texture = "guis/textures/pd2/blackmarket/inv_newdrop",
								visible = false,
								top = 0,
								right = 0
							})

							new_data.new_drop_data = {}
						end
					end
				else
					new_data.name = "bm_menu_btn_buy_weapon_slot"
					new_data.name_localized = managers.localization:text("bm_menu_locked_weapon_slot")
					new_data.empty_slot = true
					new_data.category = category
					new_data.slot = data.on_create_data[i]
					new_data.unlocked = true
					new_data.equipped = false
					new_data.lock_texture = "guis/textures/pd2/blackmarket/money_lock"
					new_data.lock_color = tweak_data.screen_colors.button_stage_3
					new_data.lock_shape = {
						w = 32,
						x = 0,
						h = 32,
						y = -32
					}
					new_data.locked_slot = true
					new_data.dlc_locked = managers.experience:cash_string(managers.money:get_buy_weapon_slot_price())
					new_data.mid_text = {
						noselected_text = new_data.name_localized,
						noselected_color = tweak_data.screen_colors.button_stage_3,
						is_lock_same_color = true
					}

					if currently_holding then
						new_data.mid_text.selected_text = new_data.mid_text.noselected_text
						new_data.mid_text.selected_color = new_data.mid_text.noselected_color

						table.insert(new_data, "i_stop_move")
					elseif managers.money:can_afford_buy_weapon_slot() then
						new_data.mid_text.selected_text = managers.localization:text("bm_menu_btn_buy_weapon_slot")
						new_data.mid_text.selected_color = tweak_data.screen_colors.button_stage_2

						table.insert(new_data, "ew_unlock")
					else
						new_data.mid_text.selected_text = managers.localization:text("bm_menu_cannot_buy_weapon_slot")
						new_data.mid_text.selected_color = tweak_data.screen_colors.important_1
						new_data.dlc_locked = new_data.dlc_locked .. "  " .. managers.localization:to_upper_text("bm_menu_cannot_buy_weapon_slot")
						new_data.mid_text.lock_noselected_color = tweak_data.screen_colors.important_1
						new_data.cannot_buy = true
					end
				end
			else
				new_data.name = "bm_menu_btn_unavailable"
				new_data.name_localized = managers.localization:text("bm_menu_btn_unavailable")
				new_data.mid_text = {
					noselected_text = new_data.name_localized,
					noselected_color = tweak_data.screen_colors.button_stage_3
				}
				new_data.mid_text.selected_text = currently_holding and new_data.mid_text.noselected_text or managers.localization:text("bm_menu_btn_unavailable")
				new_data.mid_text.selected_color = currently_holding and new_data.mid_text.noselected_color or tweak_data.screen_colors.button_stage_2
				new_data.empty_slot = true
				new_data.is_loadout = true
				new_data.category = category
				new_data.slot = data.on_create_data[i]
				new_data.unlocked = true
				new_data.equipped = false
			end

			data[i] = new_data
		end
	end
end

function BlackMarketGui:_start_crafting_weapon(data, new_node_data)
	self:set_enabled(false)
	managers.blackmarket:view_weapon(data.category, data.slot, callback(self, self, "_open_crafting_node", {
		new_node_data
	}), managers.menu:active_menu().name == "menu_main", BlackMarketGui.get_crafting_custom_data())
end