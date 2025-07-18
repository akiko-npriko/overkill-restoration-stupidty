NerfWeaponBase = class(CrossbowWeaponBase or NewRaycastWeaponBase)

function NerfWeaponBase:init(...)
	NerfWeaponBase.super.init(self,...)
end

function NerfWeaponBase:is_knock_down()
	return true
end

function NerfWeaponBase:is_stagger()
	return true
end

function NerfWeaponBase:can_shield_knock()
	return true
end


local mvec_spread_direction = Vector3()

function NerfWeaponBase:_fire_raycast(user_unit, from_pos, direction, dmg_mul, shoot_player, spread_mul, autohit_mul, suppr_mul, shoot_through_data)
	local unit = nil
	local spread_x, spread_y = self:_get_spread(user_unit)
	local right = direction:cross(Vector3(0, 0, 1)):normalized()
	local up = direction:cross(right):normalized()
	local theta = math.random() * 360
	local ax = math.sin(theta) * math.random() * spread_x * (spread_mul or 1)
	local ay = math.cos(theta) * math.random() * spread_y * (spread_mul or 1)

	mvector3.set(mvec_spread_direction, direction)
	mvector3.add(mvec_spread_direction, right * math.rad(ax))
	mvector3.add(mvec_spread_direction, up * math.rad(ay))

	local projectile_type = self._projectile_type or tweak_data.blackmarket:get_projectile_name_from_index(2)

	if self._ammo_data and self._ammo_data.launcher_grenade then
		if self:weapon_tweak_data().projectile_types then
			local equipped_type = self:weapon_tweak_data().projectile_types[self._ammo_data.launcher_grenade]
			projectile_type = equipped_type or self._ammo_data.launcher_grenade
		else
			projectile_type = self._ammo_data.launcher_grenade
		end
	end

	self:_adjust_throw_z(mvec_spread_direction)

	mvec_spread_direction = mvec_spread_direction * self:projectile_speed_multiplier()
	local spawn_offset = self:_get_spawn_offset()
	self._dmg_mul = dmg_mul or 1

	if not self._client_authoritative then
		if Network:is_client() then
			local projectile_type_index = tweak_data.blackmarket:get_index_from_projectile_id(projectile_type)

			managers.network:session():send_to_host("request_throw_projectile", projectile_type_index, from_pos, mvec_spread_direction)
		else
			unit = NerfWeaponBase.throw_projectile(projectile_type, from_pos, mvec_spread_direction, managers.network:session():local_peer():id())
		end
	else
		unit = NerfWeaponBase.throw_projectile(projectile_type, from_pos, mvec_spread_direction, managers.network:session():local_peer():id())
	end
	--Print("prj",projectile_type)

	managers.statistics:shot_fired({
		hit = false,
		weapon_unit = self._unit
	})

	return {}
end

function NerfWeaponBase.throw_projectile(projectile_type, pos, dir, owner_peer_id,...)
	local tweak_entry = tweak_data.blackmarket.projectiles[projectile_type]
	if not (tweak_entry and tweak_entry.is_custom_projectile) then 
		return ProjectileBase.throw_projectile(projectile_type, from_pos, mvec_spread_direction, managers.network:session():local_peer():id(),...)
	end
	
	if not ProjectileBase.check_time_cheat(projectile_type, owner_peer_id) then
		return
	end

	local unit_name = Idstring(not Network:is_server() and tweak_entry.local_unit or tweak_entry.unit)
	local unit = World:spawn_unit(unit_name, pos, Rotation(dir, math.UP))

	if owner_peer_id and managers.network:session() then
		local peer = managers.network:session():peer(owner_peer_id)
		local thrower_unit = peer and peer:unit()

		if alive(thrower_unit) then
			unit:base():set_thrower_unit(thrower_unit, true, false)

			if not tweak_entry.throwable and thrower_unit:movement() and thrower_unit:movement():current_state() then
				unit:base():set_weapon_unit(thrower_unit:movement():current_state()._equipped_unit)
			end
		end
	end

	unit:base():throw({
		dir = dir,
		projectile_entry = projectile_type
	})

	if unit:base().set_owner_peer_id then
		unit:base():set_owner_peer_id(owner_peer_id)
	end
	
	--local projectile_type_index = tweak_data.blackmarket:get_index_from_projectile_id(projectile_type)
	--managers.network:session():send_to_peers_synched("sync_throw_projectile", unit:id() ~= -1 and unit or nil, pos, dir, projectile_type_index, owner_peer_id or 0)
	
	if tweak_data.blackmarket.projectiles[projectile_type].impact_detonation then
		unit:damage():add_body_collision_callback(callback(unit:base(), unit:base(), "clbk_impact"))
		unit:base():create_sweep_data()
	end

	return unit
end