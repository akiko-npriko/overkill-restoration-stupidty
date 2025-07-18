RaygunGrenade = RaygunGrenade or class(ProjectileBase)
local trail = "effects/raygun_trail"

function RaygunGrenade:init(unit)
	RaygunGrenade.super.init(self, unit, true)

	self._slot_mask = managers.slot:get_mask("arrow_impact_targets")

	self._damage = 55
	self._damage_class = CoreSerialize.string_to_classtable("InstantExplosiveBulletBase")
end

function RaygunGrenade:set_weapon_unit(weapon_unit)
	RaygunGrenade.super.set_weapon_unit(self, weapon_unit)

	self._slot_mask = weapon_unit:base()._bullet_slotmask
	self._damage = weapon_unit:base()._damage
	managers.game_play_central:add_projectile_trail(self._unit, self._unit:orientation_object(), trail)
end

function RaygunGrenade:throw(dir)
	local velocity = dir
	local launch_speed = 3500

	velocity = velocity * launch_speed
	velocity = Vector3(velocity.x, velocity.y, velocity.z)
	local mass_look_up_modifier = 1
	local mass = math.max(mass_look_up_modifier * (1 + math.min(0, dir.z)), 1)

	if self._simulated then
		self._unit:push_at(mass, velocity, self._unit:body(0):center_of_mass())
		World:play_physic_effect(Idstring("physic_effects/anti_gravitate"), self._unit)
	else
		self._velocity = velocity
	end
end

function RaygunGrenade:_on_collision(col_ray)
	if alive(col_ray.unit) then
		self._damage_class:on_collision(col_ray, self._weapon_unit or self._unit, self._thrower_unit, self._damage, false, false)
	end
	
	managers.game_play_central:remove_projectile_trail(self._unit)
	self._unit:set_slot(0)
end