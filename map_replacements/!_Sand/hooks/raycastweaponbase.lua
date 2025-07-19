InstantSandballBase = InstantSandballBase or class(InstantExplosiveBulletBase)
InstantSandballBase.id = "sandball"
InstantSandballBase.CURVE_POW = tweak_data.projectiles.sandball.curve_pow
InstantSandballBase.PLAYER_DMG_MUL = tweak_data.projectiles.sandball.player_dmg_mul
InstantSandballBase.RANGE = tweak_data.projectiles.sandball.range
InstantSandballBase.ALERT_RADIUS = tweak_data.projectiles.sandball.alert_radius
InstantSandballBase.EFFECT_PARAMS = {
	on_unit = true,
	sound_muffle_effect = true,
	effect = tweak_data.projectiles.sandball.effect_name,
	sound_event = tweak_data.projectiles.sandball.sound_event,
	feedback_range = tweak_data.projectiles.sandball.feedback_range,
	camera_shake_max_mul = tweak_data.projectiles.sandball.camera_shake_max_mul,
	idstr_decal = tweak_data.projectiles.sandball.idstr_decal,
	idstr_effect = tweak_data.projectiles.sandball.idstr_effect
}

function InstantSandballBase.on_collision(self, col_ray, weapon_unit, user_unit, damage, blank, no_sound)
	local result = InstantExplosiveBulletBase.on_collision(self, col_ray, weapon_unit, user_unit, damage, blank, no_sound)

	local slot_mask = managers.slot:get_mask("explosion_targets")

	local hit_units, splinters = managers.explosion:detect_and_stun({
		player_damage = 0,
		hit_pos = col_ray.position,
		range = self.RANGE,
		collision_slotmask = slot_mask,
		curve_pow = self.CURVE_POW,
		damage = tweak_data.projectiles.sandball.damage,
		alert_radius = 0,
		verify_callback = callback(self, self, "_can_stun_unit")
	})

	return result
end

function InstantSandballBase:_can_stun_unit(unit)
	local unit_name = nil

	if unit and unit:base() then
		unit_name = unit:base()._tweak_table
	end

	if alive(unit) and unit:brain() and unit:brain().is_hostage and unit:brain():is_hostage() then
		return false
	end

	if unit_name then
		return not (tweak_data.character[unit_name] or {}).immune_to_concussion
	else
		return true
	end
end