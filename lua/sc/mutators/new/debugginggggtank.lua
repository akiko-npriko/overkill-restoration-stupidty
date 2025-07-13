MutatorDEBUGGGGGTANK = MutatorDEBUGGGGGTANK or class(BaseMutator)
MutatorDEBUGGGGGTANK._type = "MutatorDEBUGGGGGTANK"
MutatorDEBUGGGGGTANK.name_id = "RestorationPDTHHudNeeded"
MutatorDEBUGGGGGTANK.desc_id = "RestorationPDTHHudNeeded"
MutatorDEBUGGGGGTANK.reductions = {
	money = 0,
	exp = 0
}
MutatorDEBUGGGGGTANK.incompatibility_tags = {
	"replaces_units"
}	
MutatorDEBUGGGGGTANK.disables_achievements = true
MutatorDEBUGGGGGTANK.categories = {"enemies"}
MutatorDEBUGGGGGTANK.icon_coords = {
	8,
	3
}	

function MutatorDEBUGGGGGTANK:setup(data)
	self._groups = self._groups or {}
	local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
	local difficulty_index = tweak_data:difficulty_to_index(difficulty)

	self:modify_unit_categories(tweak_data.group_ai, difficulty_index)	
end

function MutatorDEBUGGGGGTANK:modify_unit_categories(group_ai_tweak, difficulty_index)	
	group_ai_tweak.special_unit_spawn_limits = {
	tank = math.huge,
	taser = 0,
	spooc = 0,
	shield = 0,
	medic = 0
}
for group, units_data in pairs(group_ai_tweak.unit_categories) do
	--if group == "Phalanx_minion" or group == "Phalanx_vip" or group == "Cap_Summers" or group == "Cap_Autumn" or group == "HVH_Boss" or units_data.ignore_spawn_cap then
	if group == "Phalanx_minion" or group == "Phalanx_vip" or group == "Cap_Summers" or group == "Cap_Autumn" or group == "HVH_Boss" or group == "FBI_tank" or group == "BLACK_tank" or group == "SKULL_tank" then
	else
		for group_sub, units_data_sub in pairs(group_ai_tweak.unit_categories[group].unit_types) do
			group_ai_tweak.unit_categories[group].unit_types[group_sub] = {
				Idstring("units/pd2_mod_dave/characters/ene_big_dave/ene_big_dave")				
			}		
			end		
		end
	end
end	