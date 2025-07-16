Hooks:PostHook(PlayerManager, "_internal_load", "A_"..Idstring("PostHook:PlayerManager:_internal_load:Melee Items"):key(), function(self)
local level_id = Global.game_settings and Global.game_settings.level_id
	if tostring(managers.blackmarket:equipped_melee_weapon()) == 'bank_manager_key' and level_id ~= "dark" and level_id ~= "help" and level_id ~= "cage" and level_id ~= "short1_stage2" and level_id ~= "dah" and level_id ~= "red2" and level_id ~= "kenaz" and level_id ~= "sah" and level_id ~= "vit" and level_id ~= "welcome_to_the_jungle_1" and level_id ~= "welcome_to_the_jungle_2" and level_id ~= "crojob2" then
		self:add_equipment({
				silent = true,
				equipment = 'bank_manager_key'
			}
		)
	end
end)

Hooks:PostHook(PlayerManager, "remove_equipment", "A_"..Idstring("PostHook:PlayerManager:remove_equipment:Melee Items"):key(), function(self, equipment_id)
	if tostring(managers.blackmarket:equipped_melee_weapon()) == 'bank_manager_key' and tostring(equipment_id) == 'bank_manager_key' then
		self:add_equipment({
				silent = true,
				equipment = 'bank_manager_key'
			}
		)
	end
end)