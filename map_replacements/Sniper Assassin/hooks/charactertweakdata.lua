if not Global.level_data then return end
if Global.level_data.level_id ~= "snp1" then return end
local character_map_original = CharacterTweakData.character_map

function CharacterTweakData:character_map(...)
	
	local char_map = character_map_original(self, ...)
	
	local snp_map = {
		"civ_male_suave_2",
		"ene_gang_triad_vip_3",
		"ene_gang_triad_vip_3_stealth",
		"ene_gang_triad_vip_4",
		"ene_gang_triad_vip_4_stealth",
		"ene_gang_triad_vip_5",
		"ene_martin",
		"ene_zhao",
		"ene_gang_triad_suit_enforcer_1",
		"ene_gang_triad_suit_enforcer_1_pager",
		"ene_gang_triad_suit_enforcer_2",
		"ene_gang_triad_suit_enforcer_2_pager",
		"ene_gang_triad_suit_enforcer_3",
		"ene_gang_triad_suit_enforcer_3_pager",
		"ene_gang_triad_suit_enforcer_4",
		"ene_gang_triad_suit_enforcer_4_pager",
		"civ_female_asian_dress_1",
		"civ_female_asian_dress_2",
		"civ_female_asian_party_1",
		"civ_male_asian_business_1",
		"civ_male_asian_business_2",
		"civ_male_asian_suit_1",
		"civ_male_asian_suit_2",
		"civ_male_asian_suit_3"
	}
	
	for _, unit in pairs(snp_map) do
		table.insert(char_map.basic.list, unit)
	end
	
	return char_map
end


Hooks:PostHook(CharacterTweakData, "_init_gangster", "lowgangseters", function(self, presets)
	
	self.gangster.HEALTH_INIT = 1
end)
