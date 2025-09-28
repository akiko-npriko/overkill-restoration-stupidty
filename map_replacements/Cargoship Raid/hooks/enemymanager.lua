guard_list = {
	"Idstring(@IDc6ec1c355793b401@)",
	"Idstring(@ID150fd49a9b3e8249@)",
	"Idstring(@ID92ce949b65efbd2c@)"}
gone_enemy_list = {}
catwalk1_guards = {}
_G.xanax_ecm_update = false
checked_mods = {
    ["RestorationMod"] = true, ["Payday 2 Hyper Heisting Shin Shootout"] = true
}
overhaul_installed = true
function counting(name, id)
	if not table.contains(guard_list, name) then
		return
	end
	if not table.contains(gone_enemy_list, id) then
		table.insert(gone_enemy_list, id)
		--respawn guard;
		if name == "Idstring(@ID92ce949b65efbd2c@)" then
			--changeElement:enable({"100842"})
			changeElement:execute({"100842"})
		end
		if name == "Idstring(@IDc6ec1c355793b401@)" then
			if table.contains(catwalk1_guards, id) then
				--changeElement:enable({"100837"})
				changeElement:execute({"100837"})
			else
				--changeElement:enable({"100724"})
				changeElement:execute({"100724"})
			end
		end
		if name == "Idstring(@ID150fd49a9b3e8249@)" then
			--changeElement:enable({"100598"})
			changeElement:execute({"100598"})
		end
	end
	
	local x = 0
	if overhaul_installed then
		x = 6
	else
		x = 4
	end
	if table.size(gone_enemy_list) == x then
		changeElement:enable({"100559"})
		DelayedCalls:Add("SomeDelay", 1, function()
			changeElement:execute({"100560"})
			changeElement:execute({"100562"})
		end)
		--Security Manager call.
		DelayedCalls:Add("StartEvent", 7, function()
			changeElement:enable({"100556"})
			changeElement:execute({"100556"})
		end)
		
		managers.hud:show_hint({
		text=on and managers.localization:text("xanax_loveguards") or managers.localization:text("xanax_loveguards"),
			time=4
		})
	end
	if table.size(gone_enemy_list) > x then
		if managers.groupai:state():is_ecm_jammer_active("camera") then
			--
			_G.xanax_ecm_update = true
		else
			DelayedCalls:Add("delay_alarm", 20, function()
				changeElement:enable({"100569"})
				changeElement:execute({"100569"})
				changeElement:enable({"100467"})
				changeElement:execute({"100467"})
				changeElement:enable({"100566"})
				changeElement:execute({"100566"})
			end)
		end
	end
end

Hooks:PostHook(EnemyManager, 'on_enemy_died', 'count_missing_guards', function(self, dead_unit, damage_info, ...)
	counting(tostring(dead_unit:name()), tostring(dead_unit:id()))
end)

Hooks:PostHook(CopLogicIntimidated, '_do_tied', 'count_dominated_guards', function(data, aggressor_unit, ...)
	counting(tostring(data.unit:name()), tostring(data.unit:id()))
end)

function ElementSpawnEnemyDummy:produce(params)
	if not managers.groupai:state():is_AI_enabled() then
		return
	end

	local unit = nil

	if params and params.name then
		unit = safe_spawn_unit(params.name, self:get_orientation())
		local spawn_ai = self:_create_spawn_AI_parametric(params.stance, params.objective, self._values)

		unit:brain():set_spawn_ai(spawn_ai)
	else
		local enemy_name = self:value("enemy") or self._enemy_name
		unit = safe_spawn_unit(enemy_name, self:get_orientation())
		local objective = nil
		local action = self._create_action_data(CopActionAct._act_redirects.enemy_spawn[self._values.spawn_action])
		local stance = managers.groupai:state():enemy_weapons_hot() and "cbt" or "ntl"

		if action.type == "act" then
			objective = {
				type = "act",
				action = action,
				stance = stance
			}
		end

		local spawn_ai = {
			init_state = "idle",
			objective = objective
		}

		unit:brain():set_spawn_ai(spawn_ai)

		local team_id = params and params.team or self._values.team or tweak_data.levels:get_default_team_ID(unit:base():char_tweak().access == "gangster" and "gangster" or "combatant")

		if self._values.participate_to_group_ai then
			managers.groupai:state():assign_enemy_to_group_ai(unit, team_id)
		else
			managers.groupai:state():set_char_team(unit, team_id)
		end

		if self._values.voice then
			unit:sound():set_voice_prefix(self._values.voice)
		end
	end

	unit:base():add_destroy_listener(self._unit_destroy_clbk_key, callback(self, self, "clbk_unit_destroyed"))

	unit:unit_data().mission_element = self

	table.insert(self._units, unit)
	self:event("spawn", unit)

	if self._values.force_pickup and self._values.force_pickup ~= "none" then
		local pickup_name = self._values.force_pickup ~= "no_pickup" and self._values.force_pickup or nil

		unit:character_damage():set_pickup(pickup_name)
	end
	
	if self._id == 100067 or self._id == 100188 or self._id == 100189 or self._id == 100724 then
		table.insert(catwalk1_guards, unit:id())
	end
	if self._id == 100403 or self._id == 100842 then
		unit:unit_data().has_alarm_pager = true
	end

	return unit
end