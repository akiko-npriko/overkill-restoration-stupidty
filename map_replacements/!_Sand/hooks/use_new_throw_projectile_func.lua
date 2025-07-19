tweak_data.blackmarket.projectiles.sandball.use_new_throw_projectile_func = function(them)
	if not them then return end
	them._range = tweak_data.projectiles.sandball.range
	them._timer = 3
	them._damage = tweak_data.projectiles.sandball.damage
	them._player_damage = tweak_data.projectiles.sandball.player_damage
end