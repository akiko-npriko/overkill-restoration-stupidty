Hooks:PostHook(PlayerDamage, "update", "hook_post_damage_update", function(self, unit, t, dt)
	self:update_custom(unit, t, dt)
end)

function PlayerDamage:update_custom(unit, t, dt)
	if managers.player:has_activate_temporary_upgrade("temporary", "adaptive_plate_base") then
		self._adaptive_plate_active = true
		local total_time = managers.player:upgrade_value("temporary", "adaptive_plate_base")[2]
		local current_time = managers.player:get_activate_temporary_expire_time("temporary", "adaptive_plate_base") - t
		
		managers.hud:set_player_ability_radial({
			current = current_time,
			total = total_time
		})
	elseif self._adaptive_plate_active then
		managers.hud:set_player_ability_radial({
			current = 0,
			total = 1
		})
	
		self._adaptive_plate_active = nil
	end
end

Hooks:PreHook(PlayerDamage, "_calc_armor_damage", "hook_pre_armor_damage", function(self, attack_data)
	self:_check_custom_damage(attack_data)
end)

function PlayerDamage:_check_custom_damage(attack_data)
	local pm = managers.player
	local damage = attack_data.damage
	local cur_armor = self:get_real_armor()
	
	if cur_armor > 0 and pm:has_category_upgrade("player", "adaptive_plate_multiplier") then
		local stage, s, c = self:calc_adaptive_plate_stage(damage)
		if s > 0 and c then
			self:set_armor(stage[s])
			attack_data.damage = 0
			
			if pm:has_inactivate_temporary_upgrade("temporary", "adaptive_plate_stage_"..s) then
				pm:activate_temporary_upgrade("temporary", "adaptive_plate_stage_"..s)
				self._can_take_dmg_timer = pm:temporary_upgrade_value("temporary", "adaptive_plate_stage_"..s, 0)
			end
		end
	end
end

Hooks:PostHook(PlayerDamage, "_regenerate_armor", "hook_post_regen_armor", function(self, no_sound)
	self:regen_custom()
end)

function PlayerDamage:regen_custom()
	local pm = managers.player
	
	local max_armor = self:_max_armor()
	local stage = self:get_adaptive_plate_stages()

	if pm:has_category_upgrade("player", "adaptive_plate_multiplier") then
		local s = pm.adaptive_plate_stage
		if s == 0 then
			self:set_armor(max_armor)
		else
			self:set_armor(stage[s])
		end
	end
end

Hooks:PostHook(PlayerDamage, "restore_armor", "hook_post_restore_armor", function(self, armor_restored)
	if self._dead or self._bleed_out or self._check_berserker_done then
		return
	end

	self:restore_custom(armor_restored)
end)

function PlayerDamage:restore_custom(armor_restored)
	local cur_armor = self:get_real_armor()
	local pm = managers.player
	
	local max_armor = self:_max_armor()
	local stage = self:get_adaptive_plate_stages()

	if pm:has_category_upgrade("player", "adaptive_plate_multiplier") then
		local s = pm.adaptive_plate_stage
		if s == 0 then
			self:set_armor(max_armor)
		elseif cur_armor > stage[s] then
			self:set_armor(stage[s])
			armor_restored = 0
		end
	end
end

function PlayerDamage:calc_adaptive_plate_stage(damage)
	local cur_armor = self:get_real_armor()
	local pm = managers.player
	local stage = self:get_adaptive_plate_stages()
	local count = #stage
	local change = false
	local s = pm.adaptive_plate_stage
	
	if s < 4 then
		if cur_armor-damage <= stage[s+1] then
			pm.adaptive_plate_stage = s+1
			change = true
		end
	end
	
	return stage, pm.adaptive_plate_stage, change
end

function PlayerDamage:get_adaptive_plate_stages()
	local pm = managers.player
	local stages = self:get_adaptive_plate_stage_count()
	
	local max_armor = self:_max_armor()
	local cur_armor = self:get_real_armor()
	local armor_step = max_armor/stages
	local stage = {}
	
	for i=1,stages,1 do
		table.insert(stage, max_armor-(armor_step*i))
	end
	
	return stage
end

function PlayerDamage:get_adaptive_plate_stage_count()
	local pm = managers.player
	local armor_id = managers.blackmarket:equipped_armor()
	local stages = 0
	local throwables = 0
	
	if armor_id == "level_1" then
		stages = 1
		throwables = 4
	elseif armor_id == "level_2" or armor_id == "level_3" then
		stages = 2
		throwables = 3
	elseif armor_id == "level_4" or armor_id == "level_5" then
		stages = 3
		throwables = 2
	elseif armor_id == "level_6" or armor_id == "level_7" then
		stages = 4
		throwables = 1
	end
	
	if tweak_data.blackmarket.projectiles.adaptive_plate.max_amount ~= throwables then
		tweak_data.blackmarket.projectiles.adaptive_plate.max_amount = throwables
		local grenade, amount = managers.blackmarket:equipped_grenade()
		local peer_id = managers.network:session():local_peer():id()
		
		if pm:has_grenade(peer_id) then
			amount = pm:get_grenade_amount(peer_id) or amount
		end
		
		amount = managers.modifiers:modify_value("PlayerManager:GetThrowablesMaxAmount", amount)
		
		pm:_set_grenade({grenade = grenade, amount = math.min(amount, pm:get_max_grenades())})
	end
	
	return stages
end