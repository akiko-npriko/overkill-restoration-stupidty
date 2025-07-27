



local origin_init = CharacterTweakData.init
local origin_presets = CharacterTweakData._presets
local origin_charmap = CharacterTweakData.character_map
Hooks:PostHook(CharacterTweakData, "init", "cdhook_constantine_backup", function(self)
    self.constantine_backup= deep_clone(self.drug_lord_boss_stealth)
	
	
	

	

	self.constantine_backup.HEALTH_INIT = 500
	
	
	self.constantine_backup.DAMAGE_CLAMP_BULLET = 80
	self.constantine_backup.DAMAGE_CLAMP_EXPLOSION	= 80
	

	
	
	self.constantine_backup.access = "teamAI4"
	
	self.constantine_backup.damage = self.presets.gang_member_damage
	self.constantine_backup.weapon = self.presets.weapon.gang_member
	
	
	
	



	self.constantine_backup.move_speed = self.presets.move_speed.very_fast
	self.constantine_backup.dodge = self.presets.dodge.athletic
	
	self.constantine_backup.use_animation_on_fire_damage = false
	self.constantine_backup.flammable = false
	self.constantine_backup.can_be_tased = false
	self.constantine_backup.immune_to_knock_down = true
	self.constantine_backup.immune_to_concussion = true


	
	self.constantine_backup.ecm_vulnerability = 0
	self.constantine_backup.ecm_hurts = {
		ears = {
			max_duration = 0,
			min_duration = 0
		}
	}
	
	


	
	table.insert(self._enemy_list, "constantine_backup")

	
end)



Hooks:PostHook(CharacterTweakData, "_set_normal", "cdhook_constantine_backup", function(self)

	
	
	
	
	self.constantine_backup.HEALTH_INIT = 300
	
		
	self.constantine_backup.DAMAGE_CLAMP_BULLET = 80
	self.constantine_backup.DAMAGE_CLAMP_EXPLOSION	= 80
	
	
	
end)



Hooks:PostHook(CharacterTweakData, "_set_hard", "cdhook_constantine_backup", function(self)

	
	
	
	
	self.constantine_backup.HEALTH_INIT = 500
	
		
	self.constantine_backup.DAMAGE_CLAMP_BULLET = 80
	self.constantine_backup.DAMAGE_CLAMP_EXPLOSION	= 80
	
	
	
end)



Hooks:PostHook(CharacterTweakData, "_set_overkill", "cdhook_constantine_backup", function(self)

	
	
	
	
	self.constantine_backup.HEALTH_INIT = 800
	
		
	self.constantine_backup.DAMAGE_CLAMP_BULLET = 80
	self.constantine_backup.DAMAGE_CLAMP_EXPLOSION	= 80
	
	
end)











Hooks:PostHook(CharacterTweakData, "_set_overkill_145", "cdhook_constantine_backup", function(self)

	
	
	
	
	self.constantine_backup.HEALTH_INIT = 1000
	
	
		
	self.constantine_backup.DAMAGE_CLAMP_BULLET = 80
	self.constantine_backup.DAMAGE_CLAMP_EXPLOSION	= 80
	
	
	
	
	
end)







Hooks:PostHook(CharacterTweakData, "_set_easy_wish", "cdhook_constantine_backup", function(self)

	
	
	
	
	self.constantine_backup.HEALTH_INIT = 1000
	

		
	self.constantine_backup.DAMAGE_CLAMP_BULLET = 80
	self.constantine_backup.DAMAGE_CLAMP_EXPLOSION	= 80
	
	
	
	
	
end)












Hooks:PostHook(CharacterTweakData, "_set_overkill_290", "cdhook_constantine_backup", function(self)

	

	
	self.constantine_backup.HEALTH_INIT = 1000
	
		
	self.constantine_backup.DAMAGE_CLAMP_BULLET = 80
	self.constantine_backup.DAMAGE_CLAMP_EXPLOSION	= 80
	
	
	
	
	
	
end)


Hooks:PostHook(CharacterTweakData, "_set_sm_wish", "cdhook_constantine_backup", function(self)

	
	
	
	self.constantine_backup.HEALTH_INIT = 3000
	

		
	self.constantine_backup.DAMAGE_CLAMP_BULLET = 80
	self.constantine_backup.DAMAGE_CLAMP_EXPLOSION	= 80
		
end)








function CharacterTweakData:character_map()

	local char_map = origin_charmap(self)



	char_map.triadyacht = {
		path = "units/pd2_mod_ttr/characters/",
		list = {
			"civ_male_wei_cheng",
			"civ_male_security",
			"ene_gang_triad_suit_enforcer_1",
			"ene_gang_triad_suit_enforcer_2",		
			"ene_gang_triad_suit_enforcer_3",
			"ene_gang_triad_suit_enforcer_4",
			"ene_friendly_backup_1 	",			
			"civ_female_bikini_african_1",
			"civ_female_bikini_asian_1",
			"civ_female_bikini_asian_2",
			"civ_female_bikini_blonde_1",
			"civ_female_bikini_blonde_2",
			"civ_female_bikini_brunette_1",
			"civ_female_bikini_tan_1"
		}
	}
	




	
	return char_map
end

