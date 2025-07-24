Hooks:PreHook(FirstAidKitBase, 'take', "blehblehlfd2ah_temp_heal", function(self, unit)
	if not self._empty and unit and unit:character_damage() then
		local unit_dmg = unit:character_damage()
		unit_dmg:l4d2_pain_reliever_delay_damage(0.25, (1-(1-unit_dmg:health_ratio())*0.75))
	end
end)