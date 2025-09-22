--Hoppip Useful Bot Variable :3
CarryData.ub_loot = {}

-- Tweak bag stealing conditions
function CarryData:clbk_pickup_SO_verification(unit)
	if not self._steal_SO_data or not self._steal_SO_data.SO_id then
		return false
	end

	if unit:movement():cool() then
		return false
	end

	if not unit:base():char_tweak().steal_loot then
		return false
	end

	local objective = unit:brain():objective()
	if not objective or objective.type == "free" or not objective.area then
		return true
	end

	if objective.grp_objective and objective.grp_objective.type == "reenforce_area" then
		return false
	end

	local nav_seg = unit:movement():nav_tracker():nav_segment()
	if objective.area == self._steal_SO_data.pickup_area or self._steal_SO_data.pickup_area.nav_segs[nav_seg] then
		return objective.area.nav_segs[nav_seg] or managers.groupai:state()._rescue_allowed
	end
end

-- Make enemies run with stolen bags instead of crouchwalking
Hooks:PostHook(CarryData, "_chk_register_steal_SO", "sh__chk_register_steal_SO", function (self)
	if self._steal_SO_data and self._steal_SO_data.pickup_objective and self._steal_SO_data.pickup_objective.followup_objective then
		self._steal_SO_data.pickup_objective.followup_objective.pose = "stand"
	end
	
	-- Hoppip Thingy (Should not be possible, yet somehow it was for some people)
	if self._steal_SO_data and not self._steal_SO_data.secure_pos then
		log("[UsefulBots] Bag steal SO without a secure pos!")
		self:_unregister_steal_SO()
	end
end)

local ids_diffuse = Idstring("diffuse_texture")
local ids_bump_normal = Idstring("bump_normal_texture")
local ids_self_illumination = Idstring("self_illumination_texture")

local default_lootbag_ids = Idstring("units/payday2/pickups/gen_pku_lootbag/gen_pku_lootbag")
local default_vr_lootbag_ids = Idstring("units/pd2_dlc_vr/equipment/gen_pku_lootbag_vr")

function CarryData:update_textures(carry_id, unit, is_visual_unit)
	local carry_td = tweak_data.carry[carry_id]
	if not carry_td then return end
	carry_td = deep_clone(carry_td)

	local level_id = Global.game_settings.level_id
	if level_id and carry_td.level_specific and carry_td.level_specific[level_id] then
		carry_td = table.merge(carry_td, carry_td.level_specific[level_id])
	end

	if is_visual_unit and carry_td.visual_unit then
		carry_td = table.merge(carry_td, carry_td.visual_unit)
	end

	if not carry_td.apply_textures_to_static then
		local bags_to_check = {default_lootbag_ids}

		if carry_td.unit then
			table.insert(bags_to_check, Idstring(carry_td.unit))
		end

		if carry_td.visual_unit_name then
			table.insert(bags_to_check, Idstring(carry_td.visual_unit_name))
		end

		if _G.IS_VR then
			table.insert(bags_to_check, default_vr_lootbag_ids)

			if carry_td.unit then
				table.insert(bags_to_check, "units/pd2_dlc_vr/equipment/" .. string.match(carry_td.unit, "/([^/]*)$") .. "_vr")
			end
		end

		if not table.contains(bags_to_check, unit:name()) then
			return
		end
	end

	if carry_td.unique_material_config then
		local ids_matconf = Idstring(carry_td.unique_material_config)

		unit:set_material_config(ids_matconf, true)
	end

	if carry_td.unique_self_illumination then
		local ids_texture = Idstring(carry_td.unique_self_illumination)
	
		local materials = unit:get_objects_by_type(Idstring("material"))
		for _, material in pairs(materials) do
			Application:set_material_texture(material, ids_self_illumination, ids_texture, Idstring("normal"))
		end
	end

	if carry_td.unique_bump_normal then
		local ids_texture = Idstring(carry_td.unique_bump_normal)

		local materials = unit:get_objects_by_type(Idstring("material"))
		for _, material in pairs(materials) do
			Application:set_material_texture(material, ids_bump_normal, ids_texture, Idstring("normal"))
		end
	end

	if carry_td.unique_diffuse then
		local ids_texture = Idstring(carry_td.unique_diffuse)

		local materials = unit:get_objects_by_type(Idstring("material"))
		for _, material in pairs(materials) do
			Application:set_material_texture(material, ids_diffuse, ids_texture, Idstring("normal"))
		end
	end
end
--Unique Loot Bag?
Hooks:PostHook(CarryData, "init", "UniqueLoot_CarryData_init", function(self, unit) self:update_textures(self._carry_id, unit, false) end)

--Hoppip Useful Bot Function:

--Unique Lootbag + Hoppip Usefulbot
Hooks:PostHook(CarryData, "set_carry_id", "set_carry_id_ub", function (self, carry_id, is_init)
	self:update_textures(self._carry_id, self._unit, false)
	if not is_init then
		CarryData.ub_loot[self._unit:key()] = self._unit
	end
end)

--Back to Reg Useful Bot Functions
Hooks:PreHook(CarryData, "destroy", "destroy_ub", function (self)
	CarryData.ub_loot[self._unit:key()] = nil
end)

Hooks:PostHook(CarryData, "link_to", "link_to_ub", function (self)
	if self._linked_to then
		CarryData.ub_loot[self._unit:key()] = nil
		self._ub_throw_params = nil
	end
end)

Hooks:PostHook(CarryData, "unlink", "unlink_ub", function (self)
	CarryData.ub_loot[self._unit:key()] = self._unit
end)

Hooks:PostHook(CarryData, "set_zipline_unit", "set_zipline_unit_ub", function (self, zipline_unit)
	CarryData.ub_loot[self._unit:key()] = not zipline_unit and self._unit or nil
end)