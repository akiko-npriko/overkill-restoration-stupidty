if not Network:is_server() then
	return
end

_G.Sound_Moving = _G.Sound_Moving or {}

Sound_Moving.Data = {
	ply = nil,
	delay = {}
}

function Sound_Moving:Is_ply_OK()
	if not managers.groupai:state():whisper_mode() or not managers.navigation or not managers.navigation:is_data_ready() then
		return
	end
	if not Sound_Moving.Data or not Sound_Moving.Data.ply or not Sound_Moving.Data.ply._unit or not alive(Sound_Moving.Data.ply._unit) then
		return
	end
	return true
end

function Sound_Moving:Create_Point(pos, u_key)
	if not self:Is_ply_OK() then
		return
	end
	local ply = Sound_Moving.Data.ply
	if not u_key then
		u_key = tostring(ply._unit:key())
	end
	local SO_category = "enemies"
	local SO_filter = managers.navigation:convert_SO_AI_group_to_access(SO_category)
	local investigate_pos = Vector3()
	local my_rot = ply._unit:rotation()
	mrotation.y(my_rot, investigate_pos)
	mvector3.multiply(investigate_pos, -200)
	mvector3.add(investigate_pos, pos)
	local _nav_tracker = ply._unit:movement():nav_tracker()
	mvector3.set_z(investigate_pos, mvector3.z(_nav_tracker:field_position()))
	local investigate_pos_tracker = managers.navigation:create_nav_tracker(investigate_pos, true)
	investigate_pos = investigate_pos_tracker:field_position()
	managers.navigation:destroy_nav_tracker(investigate_pos_tracker)
	local investigate_fwd = Vector3()
	mvector3.direction(investigate_fwd, investigate_pos, _nav_tracker:field_position())
	local investigate_rot = Rotation(investigate_fwd, math.UP)
	local investigate_nav_seg = _nav_tracker:nav_segment()
	local investigate_area = managers.groupai:state():get_area_from_nav_seg_id(investigate_nav_seg)
	local investigate_objective = {
		type = "free",
		haste = "walk",
		pose = "stand",
		stance = "ntl",
		nav_seg = investigate_nav_seg,
		area = investigate_area,
		pos = investigate_pos,
		rot = investigate_rot,
		interrupt_dis = -1,
		interrupt_health = 1,
		fail_clbk = callback(ply, ply, "on_investigate_SO_failed"),
		complete_clbk = callback(ply, ply, "on_investigate_SO_completed"),
		action_duration = math.lerp(3, 8, math.random())
	}
	local so_descriptor = {
		objective = investigate_objective,
		base_chance = 1,
		chance_inc = 0,
		interval = 0,
		search_pos = _nav_tracker:field_position(),
		verification_clbk = callback(ply, ply, "clbk_investigate_SO_verification"),
		usage_amount = 1,
		AI_group = "enemies",
		admin_clbk = callback(ply, ply, "on_investigate_SO_administered")
	}
	local so_id = "Drill_investigate" .. u_key
	ply._investigate_SO_data = {SO_id = so_id, SO_registered = true, sound_source_pos = investigate_pos}
	managers.groupai:state():add_special_objective(so_id, so_descriptor)
end

local Sound_Moving_Init_PunchSound = PlayerStandard._do_melee_damage

function PlayerStandard:_do_melee_damage(...)
	local col_ray = Sound_Moving_Init_PunchSound(self, ...)
	if col_ray and alive(col_ray.unit) and col_ray.position then
		Sound_Moving:Create_Point(col_ray.position)
	end
end

Hooks:PostHook(PlayerStandard, "init", "Sound_Moving_Init_ply", function(ply, ...)
	if not Sound_Moving.Data.ply then
		Sound_Moving.Data.ply = ply
	end
end)

function PlayerStandard:clbk_investigate_SO_verification(candidate_unit)
	if not self._investigate_SO_data or not self._investigate_SO_data.SO_id then
		return
	end
	if not candidate_unit:movement():cool() then
		return
	end
	local candidate_listen_pos = candidate_unit:movement():m_head_pos()
	local sound_source_pos = self._investigate_SO_data.sound_source_pos
	if not sound_source_pos then
		return
	end
	local ray = self._unit:raycast("ray", candidate_listen_pos, sound_source_pos, "slot_mask", managers.slot:get_mask("AI_visibility"), "ray_type", "ai_vision", "report")
	if ray then
		local my_dis = mvector3.distance(candidate_listen_pos, sound_source_pos)
		if my_dis > 900 then
			return
		end
	end
	return true
end

function PlayerStandard:on_investigate_SO_administered(receiver_unit)
	if not self._investigate_SO_data or not self._investigate_SO_data.SO_id then
		return
	end
	self._investigate_SO_data.receiver_unit = receiver_unit
	self._investigate_SO_data.SO_registered = false
end

function PlayerStandard:on_investigate_SO_completed(receiver_unit)
	if not self._investigate_SO_data or not self._investigate_SO_data.SO_id then
		return
	end
	managers.groupai:state():remove_special_objective(self._investigate_SO_data.SO_id)
	self._investigate_SO_data = nil
end

function PlayerStandard:on_investigate_SO_failed(receiver_unit)
	if not self._investigate_SO_data or not self._investigate_SO_data.SO_id then
		return
	end
	managers.groupai:state():remove_special_objective(self._investigate_SO_data.SO_id)
	self._investigate_SO_data = nil
end