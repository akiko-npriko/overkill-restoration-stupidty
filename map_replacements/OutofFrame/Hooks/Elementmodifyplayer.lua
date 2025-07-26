if not Global.load_level == true and Global.game_settings.level_id == "highrisefix" then return end
core:import("CoreMissionScriptElement")
ElementModifyPlayer = ElementModifyPlayer or class(CoreMissionScriptElement.MissionScriptElement)
function ElementModifyPlayer:init(...)
	ElementModifyPlayer.super.init(self, ...)
end
function ElementModifyPlayer:client_on_executed(...)
	self:on_executed(...)
end
function ElementModifyPlayer:on_executed(instigator)
	if not self._values.enabled then
		return
	end
	
	if alive(instigator) then
		instigator:character_damage():set_mission_damage_blockers("damage_fall_disabled", self._values.damage_fall_disabled)
		instigator:character_damage():set_mission_damage_blockers("invulnerable", self._values.invulnerable)
	end
	
	local movement_tweak = tweak_data.player.movement_state.standard.movement
	local player_movement_speed = tweak_data.player.movement_state.standard.movement.speed
	
	if self._values.reduce_move_speed then
		for i, movement_speed in pairs(player_movement_speed) do
			player_movement_speed[i] = movement_speed * self._values.reduce_move_speed
		end
	else
		player_movement_speed.STANDARD_MAX = 350
		player_movement_speed.RUNNING_MAX = 575
		player_movement_speed.CROUCHING_MAX = 225
		player_movement_speed.STEELSIGHT_MAX = 185
		player_movement_speed.INAIR_MAX = 185
		player_movement_speed.CLIMBING_MAX = 200
	end
	
	if self._values.jump_height then
		movement_tweak.jump_velocity.z = movement_tweak.jump_velocity.z * self._values.jump_height
	else
		movement_tweak.jump_velocity.z = 470
	end
		
	
	ElementModifyPlayer.super.on_executed(self, instigator)
end