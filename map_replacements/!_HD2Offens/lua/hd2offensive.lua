-- if not SC then
-- 	function ProjectileBase.check_time_cheat(projectile_type, owner_peer_id)
-- 		return true
-- 	end
-- end

--[[

data: {
	projectile_id:string -- 导弹类型
	position:Vector3     -- （必须的）基础轰炸位置
	rotation:Vector3     -- （必须的）旋转角度，会影响轰炸范围，发射偏移等

	range_x:number           -- 轰炸的x随机范围
	range_y:number           -- 轰炸的y随机范围
	bombs:number             -- 总发射的导弹数量
	timer:number             -- 发射完全部导弹的所需的时间
	neatly:boolean           -- 是够整齐发射（如飞鹰空袭）
	delay:number             -- 导弹抵达延迟
	kill_assets_delay:number -- 在导弹发射多久后删除资源（如模型，红线特效）
	random_x:boolean         -- 是否在x范围内随机
	random_y:boolean         -- 是否在y范围内随机

	launch_position:Vector3  -- 发射的基础起始位置，如果没有launch_position则用以下数值计算 : [
		height  -- 发射高度
		launch_angle_x  -- 发射位置的x偏移（默认为position + rotation:x() * height）
		launch_angle_y  -- 发射位置的y偏移（默认为position + rotation:y() * height）
	]

	type -- 轰炸类型: [
		"orbital"  -- 轨道，发射点为一个不变的点
		"fighter"  -- 飞鹰，发射点为扩散的几个点
	]
}

--]]

HD2Offensive = HD2Offensive or class()

function HD2Offensive:throw(data)
	-- self._units = self._units or {}
	-- self._units[#self._units + 1] = {}
	-- local units = self._units[#self._units]
	local projectile_id = data.projectile_id or "rocket_ray_frag"
	local base_to_pos = data.position or Vector3()
	local rot = data.rotation or Vector3()
	local save_rot = mvector3.copy(rot)
	local unit = data.unit

	local range_x = data.range_x or 0
	local range_y = data.range_y or 0
	local bombs = data.bombs or 1
	local base_height = data.height or 8000
	local ray_angle_x = data.launch_angle_x or 0
	local ray_angle_y = data.launch_angle_y or 0
	local type = data.type or "orbital"
	local timer = data.timer or 0
	local neatly_x = data.neatly_x
	local neatly_y = data.neatly_y
	local delay = data.delay or 0
	local delaye_t = timer / bombs
	local kill_assets_delay = data.kill_assets_delay or delay + delaye_t
	local random_x = not (tostring(data.random_x) == "false") and true or false
	local random_y = not (tostring(data.random_y) == "false") and true or false

	---[[ spawn red trail effect
	local data = {
		position = base_to_pos,
		timer = kill_assets_delay,
		x = mvector3.x(base_to_pos),
		y = mvector3.y(base_to_pos),
		z = mvector3.z(base_to_pos)
	}

	HD2OffensiveRedTrail:spawn(data)

	LuaNetworking:SendToPeers("sync_hd2offensive_red_trail", json.encode(data))
	--]]

	local base_from_pos = (base_to_pos + (rot:x() * ray_angle_x) + (rot:y() * ray_angle_y)) + Vector3(0, 0, base_height)

	if data.launch_position then
		base_from_pos = data.launch_position
	end

	for i = 1, bombs do
		DelayedCalls:Add("EagleAirstrike:" .. tostring(i) .. tostring(TimerManager:game():time()), delaye_t * i + delay, function()
			if managers.network.session and managers.network:session() then
				local offset_x = 0
				local offset_y = 0
				local d_rot = rot or save_rot
				local function get_neatly_random(_range, _s, _i)
					local min = (_range / 2 - _range) + (_range / _s * (_i - 1))
					local max = (_range / 2 - _range) + (_range / _s * _i)

					return math.random(min, max)
				end

				local function get_neatly_not_random(_range, _s, _i)
					local min = (_range / 2 - _range) + (_range / _s * (_i - 1))
					local max = (_range / 2 - _range) + (_range / _s * _i)

					return (min + max) / 2
				end

				local function get_random(_range)
					local min = _range / 2 - _range
					local max = _range / 2

					return math.random(min, max)
				end

				local function get_not_random(_range)
					local min = _range / 2 - _range
					local max = _range / 2


					return (min + max) / 2
				end

				if neatly_x then
					if random_x then
						offset_x = get_neatly_random(range_x, bombs, i)
					else
						offset_x = get_neatly_not_random(range_x, bombs, i)
					end
				else
					if random_x then
						offset_x = get_random(range_x)
					else
						offset_x = get_not_random(range_x)
					end
				end

				if neatly_y then
					if random_y then
						offset_y = get_neatly_random(range_y, bombs, i)
					else
						offset_y = get_neatly_not_random(range_y, bombs, i)
					end
				else
					if random_y then
						offset_y = get_random(range_y)
					else
						offset_y = get_not_random(range_y)
					end
				end

				local from_pos = Vector3()
				local to_pos = Vector3()
				local mvec_spread_direction = Vector3()

				if type == "orbital" then
					from_pos = base_from_pos
					to_pos = base_to_pos + d_rot:x() * offset_x + d_rot:y() * offset_y
					mvec_spread_direction = (to_pos - from_pos):normalized()
				elseif type == "fighter" then
					from_pos = base_from_pos + d_rot:x() * offset_x + d_rot:y() * offset_y
					to_pos = base_to_pos
					mvec_spread_direction = (to_pos - base_from_pos):normalized()
				end

				if Network:is_client() then
					local projectile_type_index = tweak_data.blackmarket:get_index_from_projectile_id(projectile_id)

					managers.network:session():send_to_host("request_throw_projectile", projectile_type_index, from_pos, mvec_spread_direction)
				else
					local local_peer_id = managers.network:session():local_peer():id()
					local unit = ProjectileBase.throw_projectile(projectile_id, from_pos, mvec_spread_direction, local_peer_id)
					-- units[#units + 1] = unit
				end
			end
		end)
	end

	DelayedCalls:Add("HD2OffensiveRedTrail:" .. tostring(TimerManager:game():time()), kill_assets_delay == 0 and 0.01 or kill_assets_delay, function()
		if alive(unit) then
			unit:set_slot(0)
			managers.network:session():send_to_peers("remove_unit", unit)
		end
	end)
	-- return units
end

HD2OffensiveRedTrail = HD2OffensiveRedTrail or {}

function HD2OffensiveRedTrail:spawn(data)
	local effect_id = World:effect_manager():spawn({
		effect = Idstring("effects/particles/weapons/hd2offensive/hd2offensive_red_trail"),
		position = data.position,
		normal = Vector3(0,0,1)
	})

	local delayed_id = "HD2OffensiveRedTrail" .. tostring(effect_id)
	local delay = TimerManager:game():time() + data.timer

	managers.enemy:add_delayed_clbk(delayed_id, callback(self, self, "_kill", effect_id), delay)
end

function HD2OffensiveRedTrail:_kill(effect_id)
	if World:effect_manager():alive(effect_id) then
		World:effect_manager():kill(effect_id)
	end
end