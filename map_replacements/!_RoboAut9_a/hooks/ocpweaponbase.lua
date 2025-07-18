OCPWeaponBase = OCPWeaponBase or class(NewRaycastWeaponBase)
function OCPWeaponBase:init(unit,...)
	OCPWeaponBase.super.init(self,unit,...)
end

--do return end

_G.bonesbonesbones = {}

BeardLib:AddUpdater("bones!!",function(t,dt)
	for body,_ in pairs(bonesbonesbones) do 
		if alive(body) then
			body:oobb():debug_draw(1,0,0)
		end
	end
end)


if string.lower(RequiredScript) == "lib/units/weapons/newraycastweaponbase" then
	local mvec3_set = mvector3.set
	local mvec3_add = mvector3.add
	local mvec3_dot = mvector3.dot
	local mvec3_sub = mvector3.subtract
	local mvec3_mul = mvector3.multiply
	local mvec3_norm = mvector3.normalize
	local mvec3_dir = mvector3.direction
	local mvec3_set_l = mvector3.set_length
	local mvec3_len = mvector3.length
	local math_clamp = math.clamp
	local math_lerp = math.lerp
	local math_map_range_clamped = math.map_range_clamped
	local tmp_vec1 = Vector3()
	local tmp_vec2 = Vector3()
	local ids_single = Idstring("single")
	local ids_auto = Idstring("auto")
	local ids_burst = Idstring("burst")
	local ids_volley = Idstring("volley")
	local FIRE_MODE_IDS = {
		single = ids_single,
		auto = ids_auto,
		burst = ids_burst,
		volley = ids_volley
	}
	local material_type_ids = Idstring("material")

	local world_g = World

	local mvec_to = Vector3()
	local mvec_spread_direction = Vector3()
	local mvec1 = Vector3()

	local reflect_result = Vector3()
	
	function OCPWeaponBase:can_ricochet() --custom
		local user_unit = self._setup.user_unit
		if alive(user_unit) then 
			local move_ext = user_unit:movement()
			if move_ext then 
				local state = move_ext:current_state()
				if state then 
					return state:in_steelsight()
				end
			end
		end
		return false
	end

	function OCPWeaponBase:bullet_class()
		return OCPRicochetBulletBase
	end

	OCPRicochetBulletBase = OCPRicochetBulletBase or class(InstantBulletBase)

	--ricochet code based on code written by Hoxi (github: hoxiwoopboop) for Total Crackdown
	--https://github.com/Crackdown-PD2/deathvox/

	function OCPRicochetBulletBase:on_collision(col_ray, weapon_unit, user_unit, damage, blank, no_sound, no_ricochet)
		local hit_unit = col_ray.unit
		user_unit = alive(user_unit) and user_unit or nil
		
		if user_unit and self:chk_friendly_fire(hit_unit, user_unit) then
			return "friendly_fire"
		end

		weapon_unit = alive(weapon_unit) and weapon_unit or nil
		
		if hit_unit:damage() then
			local body_dmg_ext = col_ray.body:extension() and col_ray.body:extension().damage
			if body_dmg_ext then
				local sync_damage = not blank and hit_unit:id() ~= -1
				local network_damage = math.ceil(damage * 163.84)
				local body_damage = network_damage / 163.84

				if sync_damage and managers.network:session() then
					local normal_vec_yaw, normal_vec_pitch = self._get_vector_sync_yaw_pitch(col_ray.normal, 128, 64)
					local dir_vec_yaw, dir_vec_pitch = self._get_vector_sync_yaw_pitch(col_ray.ray, 128, 64)

					managers.network:session():send_to_peers_synched("sync_body_damage_bullet", col_ray.unit:id() ~= -1 and col_ray.body or nil, user_unit and user_unit:id() ~= -1 and user_unit or nil, normal_vec_yaw, normal_vec_pitch, col_ray.position, dir_vec_yaw, dir_vec_pitch, math.min(16384, network_damage))
				end

				local local_damage = not blank or hit_unit:id() == -1

				if local_damage then
					local weap_cats = weapon_unit and weapon_unit:base().categories and weapon_unit:base():categories()

					body_dmg_ext:damage_bullet(user_unit, col_ray.normal, col_ray.position, col_ray.ray, 1)

					if hit_unit:alive() then
						body_dmg_ext:damage_damage(user_unit, col_ray.normal, col_ray.position, col_ray.ray, body_damage)
					end

					if weap_cats and hit_unit:alive() then
						for _, category in ipairs(weap_cats) do
							body_dmg_ext:damage_bullet_type(category, user_unit, col_ray.normal, col_ray.position, col_ray.ray, 1)
						end
					end
				end
			end
		end
		
		local do_shotgun_push, result, do_push, push_mul = nil
		local hit_dmg_ext = hit_unit:character_damage()
		local play_impact_flesh = not hit_dmg_ext or not hit_dmg_ext._no_blood

		if not blank and weapon_unit then
			local weap_base = weapon_unit:base()

			if weap_base and weap_base.chk_shield_knock then
				weap_base:chk_shield_knock(hit_unit, col_ray, weapon_unit, user_unit, damage)
			end

			if hit_dmg_ext and hit_dmg_ext.damage_bullet then
				local was_alive = not hit_dmg_ext:dead()
				local armor_piercing, knock_down, stagger, variant = nil

				if weap_base then
					armor_piercing = weap_base.has_armor_piercing and weap_base:has_armor_piercing()
					knock_down = weap_base.is_knock_down and weap_base:is_knock_down()
					stagger = weap_base.is_stagger and weap_base:is_stagger()
					variant = weap_base.variant and weap_base:variant()
				end

				result = self:give_impact_damage(col_ray, weapon_unit, user_unit, damage, armor_piercing, false, knock_down, stagger, variant)
				
				if result ~= "friendly_fire" then
					local has_died = hit_dmg_ext:dead()
					do_push = true
					push_mul = self:_get_character_push_multiplier(weapon_unit, was_alive and has_died)

					if weap_base and result and result.type == "death" and weap_base.should_shotgun_push and weap_base:should_shotgun_push() then
						do_shotgun_push = true
					end
				else
					play_impact_flesh = false
				end
			else
				do_push = true
				
				--hit an object but not a person
				if not no_ricochet and weap_base.can_ricochet and weap_base:can_ricochet() then
					self:on_ricochet(col_ray, weapon_unit, user_unit, damage, blank, no_sound)
				end
			end
		else
			
			do_push = true
		end

		if do_push then
			managers.game_play_central:physics_push(col_ray, push_mul)
		end

		if do_shotgun_push then
			managers.game_play_central:do_shotgun_push(col_ray.unit, col_ray.position, col_ray.ray, col_ray.distance, user_unit)
		end

		if play_impact_flesh then
			managers.game_play_central:play_impact_flesh({
				col_ray = col_ray,
				no_sound = no_sound
			})
			self:play_impact_sound_and_effects(weapon_unit, col_ray, no_sound)
		end
		
		return result
	end

	function OCPRicochetBulletBase:on_ricochet(col_ray,weapon_unit,user_unit,damage,blank,no_sound) --custom
		local ignore_units = {}
		local can_shoot_through_enemy = nil
		local can_shoot_through_shield = nil

		local ricochet_range = 1000 --10m

		mvector3.set_zero(reflect_result)
		mvector3.set(reflect_result,col_ray.ray)
		mvector3.add(reflect_result, -2 * col_ray.ray:dot(col_ray.normal) * col_ray.normal) --use the direction of the bullet to calculate where it should bounce off to

		local angle = math.abs(mvector3.angle(col_ray.ray, reflect_result))
		local allowed_angles = {0, 175}

		local valid_angle = not (angle < allowed_angles[1]) and not (angle > allowed_angles[2])

		if not valid_angle then
			return
		end
		
		
		
		--if there's no restriction, apply some spread to avoid perfect 175° bounces
		local ricochet_spread_angle = {2, 2}

		mvector3.spread(reflect_result, math.random(ricochet_spread_angle[1], ricochet_spread_angle[2]))
		

		local from_pos = col_ray.hit_position + col_ray.normal

		--usual collect_hits stuff to use proper penetration
		local ray_hits = nil
		local hit_enemy = false
		local enemy_mask = managers.slot:get_mask("enemies")
		local wall_mask = managers.slot:get_mask("world_geometry", "vehicles")
		local shield_mask = managers.slot:get_mask("enemy_shield_check")
		local ai_vision_ids = Idstring("ai_vision")
		local bulletproof_ids = Idstring("bulletproof")

		ray_hits = world_g:raycast_all("ray", from_pos, from_pos + reflect_result * ricochet_range, "slot_mask", self:bullet_slotmask(), "ignore_unit", ignore_units)

		local units_hit = {}
		local unique_hits = {}

		for i, hit in ipairs(ray_hits) do
			if not units_hit[hit.unit:key()] then
				units_hit[hit.unit:key()] = true
				unique_hits[#unique_hits + 1] = hit
				hit.hit_position = hit.position
				hit_enemy = hit_enemy or hit.unit:in_slot(enemy_mask)
				local weak_body = hit.body:has_ray_type(ai_vision_ids)
				weak_body = weak_body or hit.body:has_ray_type(bulletproof_ids)

				if not can_shoot_through_enemy and hit_enemy then
					break
				elseif hit.unit:in_slot(wall_mask) then
					if weak_body then
						break
					end
				elseif not can_shoot_through_shield and hit.unit:in_slot(shield_mask) then
					break
				end
			end
		end

		local hit_enemies = {}

		for _, hit in ipairs(unique_hits) do
			if hit.unit and hit.unit:character_damage() then
				table.insert(hit_enemies, hit.unit)
			end
			
			OCPRicochetBulletBase:on_collision(hit, weapon_unit, user_unit, damage, blank, no_sound, true)
		end
		
		for i, d in ipairs(hit_enemies) do --if the ricochet hit a character, count it as an actual hit instead of a missed shot
			managers.statistics:shot_fired({
				skip_bullet_count = true,
				hit = true,
				weapon_unit = weapon_unit
			})
		end
		
		local furthest_hit = unique_hits[#unique_hits]
		
		local trail_effect_ids = Idstring("effects/particles/weapons/sniper_trail_marshal")
		--potential effect candidates:
	--"effects/particles/weapons/sniper_trail"
	--"effects/particles/weapons/weapon_trail"
	--"effects/payday2/particles/weapons/turret_streak"
	--"effects/payday2/particles/weapons/hailstorm_streak"
	--"effects/particles/weapons/sniper_trail_marshal"
		
		if not self._trail_length then
			self._trail_length = world_g:effect_manager():get_initial_simulator_var_vector2(trail_effect_ids, Idstring("trail"), Idstring("simulator_length"), Idstring("size"))
		end

		local trail = world_g:effect_manager():spawn({
			effect = trail_effect_ids,
			position = from_pos,
			normal = reflect_result
		})

		mvector3.set_y(self._trail_length, furthest_hit and furthest_hit.distance or ricochet_range)
		world_g:effect_manager():set_simulator_var_vector2(trail, Idstring("trail"), Idstring("simulator_length"), Idstring("size"), self._trail_length)
	end
end