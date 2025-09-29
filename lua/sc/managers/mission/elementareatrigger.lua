-- When an escape or loot secure zone is activated, mark that area for reinforcement spawngroups
-- This is done by checking the list of elements an ElementAreaTrigger executes for ElementMissionEnd or ElementCarry,
-- If it contains any of these, it is considered the escape zone/loot secure trigger
local function check_executed_objects(area_trigger, current, recursion_depth)
	current = current or area_trigger
	recursion_depth = recursion_depth or 2

	if (area_trigger._values.enabled and true or false) == (area_trigger._reinforce_point_enabled and true or false) then
		return
	end

	for _, params in pairs(current._values.on_executed) do
		local element = current:get_mission_element(params.id)
		local element_class = getmetatable(element)
		if element_class == ElementMissionEnd or element_class == ElementCarry and element._values.operation == "secure" then
			area_trigger._reinforce_point_enabled = area_trigger._values.enabled
			if area_trigger._values.enabled then
				if area_trigger._values.use_shape_element_ids then
					for _, shape_element in pairs(area_trigger._shape_elements) do
						if shape_element._values.enabled then
							managers.groupai:state():set_area_min_police_force(shape_element._id, 3, shape_element._values.position)
						end
					end
				else
					managers.groupai:state():set_area_min_police_force(area_trigger._id, 3, area_trigger._values.position)
				end
			else
				if area_trigger._values.use_shape_element_ids then
					for _, shape_element in pairs(area_trigger._shape_elements) do
						managers.groupai:state():set_area_min_police_force(shape_element._id)
					end
				else
					managers.groupai:state():set_area_min_police_force(area_trigger._id)
				end
			end
			return true
		elseif recursion_depth > 0 and element_class == MissionScriptElement then
			if check_executed_objects(area_trigger, element, recursion_depth - 1) then
				return true
			end
		end
	end
end

Hooks:PostHook(ElementAreaTrigger, "on_set_enabled", "sh_on_set_enabled", check_executed_objects)

-- Used to determine if players are in the escape zone if it becomes disabled after executing
local function set_was_enabled(self)
	self._values.was_enabled = self._values.enabled
end

Hooks:PreHook(ElementAreaTrigger, "client_on_executed", "res_client_on_executed", set_was_enabled)
Hooks:PreHook(ElementAreaTrigger, "on_executed", "res_on_executed", set_was_enabled)

--Hoppip Useful Bot Function
if not Network:is_server() then
	return
end

local needs_secure_match = {
	cage_bag = true,
	nail_muriatic_acid = true,
	nail_caustic_soda = true,
	nail_hydrogen_chloride = true
}

local valid_carry_operations = {
	secure = true,
	secure_silent = true,
	remove = true
}

local valid_instigators = {
	loot = true,
	unique_loot = true
}

local function get_loot_secure_elements(current, recursion_depth, found_elements)
	recursion_depth = recursion_depth or 10
	found_elements = found_elements or {}
	for _, params in pairs(current._values.on_executed) do
		local element = current:get_mission_element(params.id)
		local element_class = getmetatable(element)
		if element_class == ElementCarry and valid_carry_operations[element._values.operation] then
			found_elements[element] = element
		end
		if element and recursion_depth > 0 then
			get_loot_secure_elements(element, recursion_depth - 1, found_elements)
		end
	end
	return found_elements
end

Hooks:PostHook(ElementAreaTrigger, "on_script_activated", "on_script_activated_ub", function (self)
	if valid_instigators[self._values.instigator] then
		self._loot_secure_elements = get_loot_secure_elements(self)
	end
end)

Hooks:PreHook(ElementAreaTrigger, "on_executed", "on_executed_ub", function (self, instigator)
	local throw_params = self:ub_can_secure_loot(instigator) and instigator:carry_data()._ub_throw_params
	if not throw_params or throw_params.expire_t < TimerManager:game():time() then
		return
	end

	local peer = managers.network:session():peer(instigator:carry_data():latest_peer_id())
	local peer_unit = peer and peer:unit()
	if not alive(peer_unit) then
		return
	end

	local u_key = peer_unit:key()
	local carry_id = instigator:carry_data():carry_id()
	local carry_type_tweak = tweak_data.carry[carry_id] and tweak_data.carry.types[tweak_data.carry[carry_id].type]
	local carry_throw_multiplier = carry_type_tweak and carry_type_tweak.throw_distance_multiplier or 1
	for _, v in pairs(managers.groupai:state():all_AI_criminals()) do
		local logic_data = v.unit:brain()._logic_data
		logic_data.secure_bag_data[u_key] = logic_data.secure_bag_data[u_key] or {}
		logic_data.secure_bag_data[u_key][self] = logic_data.secure_bag_data[u_key][self] or {}
		logic_data.secure_bag_data[u_key][self][carry_throw_multiplier] = throw_params
	end

	self._ub_match_carry_id = needs_secure_match[carry_id]
	self._ub_match_carry_id_secured = self._ub_match_carry_id_secured or {}
	self._ub_match_carry_id_secured[carry_id] = true
end)

function ElementAreaTrigger:ub_can_secure_loot(unit)
	if Monkeepers or not restoration.usefulbot_settings.secure_loot or not self._values.enabled or not self._loot_secure_elements or not self:is_instigator_valid(unit) then
		return
	end

	local carry_data = alive(unit) and unit:carry_data()
	if not carry_data then
		return
	end

	local carry_id = carry_data:carry_id()
	if self._ub_match_carry_id and not self._ub_match_carry_id_secured[carry_id] then
		return
	end

	for element in pairs(self._loot_secure_elements) do
		if element._values.enabled and (not element._values.type_filter or element._values.type_filter == "none" or carry_id == element._values.type_filter) then
			return true
		end
	end
end