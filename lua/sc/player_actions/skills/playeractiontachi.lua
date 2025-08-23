PlayerAction.Tachi = {
	Priority = 1,
	Function = function()
		local pm = managers.player
		
		local base_upgrade_data = pm:upgrade_value("player","tachi_base")
		local timer = TimerManager:game()
		local player = pm:local_player()
		if not alive(player) then 
			return
		end
		local dmg_ext = player:character_damage()
		local start_t = timer:time()
		local regen_interval = base_upgrade_data.regen_interval
		local hot_amount = pm:upgrade_value("player","tachi_hot_amount",0)
		local hot_duration = pm:upgrade_value("player","tachi_hot_duration",0)
		local end_time = start_t + hot_duration
		local has_dmg_resist = pm:has_category_upgrade("player","tachi_hot_cancelled_damage_resistance_consolation")
		local dmg_resist = pm:upgrade_value("player","tachi_hot_cancelled_damage_resistance_consolation",0)

		local function update_ability_radial()
			local time_left = end_time - timer:time()

			managers.hud:activate_teammate_ability_radial(HUDManager.PLAYER_PANEL, time_left, hot_duration)
		end
		
		local has_taken_health_damage = false
		local cached_player_health = dmg_ext:get_real_health()
		local function cb_on_damage()
			if not has_taken_health_damage then
				local current_hp = dmg_ext:get_real_health()
				if current_hp < cached_player_health then
					has_taken_health_damage = true
				else
					cached_player_health = current_hp
				end
			end
		end
		dmg_ext._listener_holder:add(
			"liberator_tachi_on_damage",
			{
				"on_damage"
			},
			cb_on_damage
		)
		
		local next_heal_t = start_t
		
		update_ability_radial()
		while alive(player) and timer:time() < end_time do 
		
			local t = timer:time()
			if t >= next_heal_t then 
				next_heal_t = next_heal_t + regen_interval
				if not has_taken_health_damage then
					dmg_ext:restore_health(hot_amount,true,false)
				elseif has_dmg_resist then
					pm:set_property("tachi_damage_resistance",dmg_resist)
				end
			end
			coroutine.yield()
		end
		
		
		managers.hud:set_teammate_ability_radial(HUDManager.PLAYER_PANEL, {current=0,total=1})
		dmg_ext._listener_holder:remove("liberator_tachi_on_damage")
		pm:remove_property("tachi_damage_resistance")
	end
}