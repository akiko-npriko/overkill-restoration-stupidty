local hostage_follow_max = 3			-- Maximum allowed hostage followers
local hostage_follow_distance_max = 50		-- Distance hostage will stop following
local hostage_follow_distance_threshold = 3 	-- Distance away from player hostage will attempt to keep
--local hostage_follow_speed_multiplier = 1.25	-- Speed hostage will travel while cable tied

local set_hostage_move_original = CivilianBrain.on_hostage_move_interaction

	function CivilianBrain:on_hostage_move_interaction(interacting_unit, command, ...)
		if command == "move" then
		
			local following_hostages = managers.groupai:state():get_following_hostages(interacting_unit)
			
			if following_hostages and table.size(following_hostages) >= hostage_follow_max then
				return
			end
			
			if not self._unit:anim_data().drop and self._unit:anim_data().tied then
				return
			end
			
			local stand_action_desc = {
				type = "act",
				variant = "stand_tied",
				body_part = 1,
				clamp_to_graph = true
			}
			local action = self._unit:movement():action_request(stand_action_desc)
			
			if not action then
				return
			end
			
			self._unit:movement():set_stance("cbt", nil, true)
			
			local follow_objective = {
				type = "follow",
				follow_unit = interacting_unit,
				nav_seg = interacting_unit:movement():nav_tracker():nav_segment(),
				interrupt_dis = 0,
				interrupt_health = 0,
				lose_track_dis = 100 * hostage_follow_distance_max,
				distance = 100 * hostage_follow_distance_threshold,
				stance = "cbt",
				fail_clbk = callback(self, self, "on_hostage_follow_objective_failed")
			}
			
			self:set_objective(follow_objective)
			self._unit:interaction():set_tweak_data("hostage_stay")
			self._unit:interaction():set_active(true, true)
			interacting_unit:sound():say("f38_any", false, true)
			self._following_hostage_contour_id = self._unit:contour():add("friendly", true)
			managers.groupai:state():on_hostage_follow(interacting_unit, self._unit, true)
		end
		set_hostage_move_original(self, interacting_unit, command, ...)
	end

--Add more alert types to Civilians
function CivilianBrain:on_cool_state_changed(state)
	if self._logic_data then
		self._logic_data.cool = state
	end

	if self._alert_listen_key then
		managers.groupai:state():remove_alert_listener(self._alert_listen_key)
	else
		self._alert_listen_key = "CopBrain" .. tostring(self._unit:key())
	end

	local alert_listen_filter, alert_types = nil

	if state then
		alert_listen_filter = managers.groupai:state():get_unit_type_filter("criminals_enemies_civilians")
		alert_types = {
			vo_distress = true,
			fire = true,
			bullet = true,
			vo_intimidate = true,
			explosion = true,
			footstep = true,
			aggression = true,
			vo_cbt = true
		}
	else
		alert_listen_filter = managers.groupai:state():get_unit_type_filter("criminal")
		alert_types = {
			explosion = true,
			fire = true,
			aggression = true,
			bullet = true
		}
	end

	managers.groupai:state():add_alert_listener(self._alert_listen_key, callback(self, self, "on_alert"), alert_listen_filter, alert_types, self._unit:movement():m_head_pos())
end

Hooks:PostHook(CivilianBrain, "on_hostage_move_interaction", "on_hostage_move_interaction_mutator_no_outlines", function (self,interacting_unit, command)
	local disable_outlines = managers.mutators:modify_value("CivilianBrain:DisableOutlines", false)
	if disable_outlines then
		self._unit:contour():remove("friendly", true)
	end
end)