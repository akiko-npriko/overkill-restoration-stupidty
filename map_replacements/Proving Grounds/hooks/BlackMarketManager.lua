BlackMarketManager._temp_equips = {}
Hooks:PostHook(BlackMarketManager, "init", "ProvingGroundsWeaponTempInit", function(self)
	self._temp_equips = {
		primaries = self:equipped_weapon_slot("primaries"),
		secondaries = self:equipped_weapon_slot("secondaries")
	}
end)

function BlackMarketManager:equipped_weapon_slot_temp(category)
	return self._temp_equips[category] or 1
end

function BlackMarketManager:equip_weapon_in_game_temp(category, slot, swap)
	if category ~= "primaries" and category ~= "secondaries" then return end
	if not slot then return end
	if not self._global.crafted_items[category] or not self._global.crafted_items[category][slot] then return end

	self._temp_equips[category] = slot

	local selection_index = category == "primaries" and 2 or 1
	local function clbk()
		local weapon = self._global.crafted_items[category][slot]
		local texture_switches = managers.blackmarket:get_weapon_texture_switches(category, slot, weapon)

		self:update_ingame_outfit_string()
		managers.player:player_unit():inventory():add_unit_by_factory_name_selection_index(weapon.factory_id, false, false, weapon.blueprint, weapon.cosmetics, texture_switches, selection_index)

		return true
	end

	if not _G.IS_VR and swap then
		managers.player:player_unit():movement():current_state():_start_action_unequip_weapon(TimerManager:game():time(), {
			selection_wanted = selection_index,
			unequip_callback = clbk
		})
	else
		managers.network:session():local_peer():add_outfit_loaded_clbk(clbk)
	end
end

function BlackMarketManager:update_ingame_outfit_string()
	managers.network:session():local_peer():set_outfit_string(self:outfit_string())
	managers.network:session():check_send_outfit()
end

function BlackMarketManager:place_crafted_item_update_temp_equipped(category, slot)
	if self:equipped_weapon_slot_temp(self._hold_crafted_item.category) == self._hold_crafted_item.slot then
		self._temp_equips[category] = slot
	end
end

Hooks:PostHook(BlackMarketManager, "on_sell_weapon", "SHITFUCK_on_sell_weapon", function(self, category, slot)
	if managers.menu:active_menu().name == "custom_safehouse_menu" and self:equipped_weapon_slot_temp(category) == slot then
		for slot, craft in pairs(self._global.crafted_items[category]) do
			if self:weapon_unlocked_by_crafted(category, slot) then
				self:equip_weapon_in_game_temp(category, slot, true)
				return
			end
		end

		self:aquire_default_weapons()
		self:equip_weapon_in_game_temp(category, 1, true)
	end
end)

local weapon_update_methods = {
	"_on_modified_weapon",
	"set_part_custom_colors",
	"set_part_texture_switch",
	"on_remove_weapon_cosmetics",
	"_set_weapon_cosmetics"
}

for _, weapon_update_method_name in pairs(weapon_update_methods) do
	Hooks:PostHook(BlackMarketManager, weapon_update_method_name, "SHITFUCK_" .. weapon_update_method_name, function(self, category, slot)
		if managers.menu:active_menu().name == "custom_safehouse_menu" then
			if self:equipped_weapon_slot_temp(category) == slot then
				self:equip_weapon_in_game_temp(category, slot, false)
			end
		end
	end)
end

function BlackMarketManager:forced_category(category)
	local slot = self:equipped_weapon_slot_temp(category)
	if not self._global.crafted_items[category] or not self._global.crafted_items[category][slot] then return end

	return self._global.crafted_items[category][slot]
end

function BlackMarketManager:forced_primary()
	return self:forced_category("primaries")
end

function BlackMarketManager:forced_secondary()
	return self:forced_category("secondaries")
end