
if not Global.level_data then return end

Hooks:PostHook(GroupAITweakData, "_init_unit_categories", "america_groupai", function(self, difficulty_index)
	
	self.unit_categories.CS_cop_C45_R870.unit_types.federales = {
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier/ene_cartel_soldier"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_2/ene_cartel_soldier_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_3/ene_cartel_soldier_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_4/ene_cartel_soldier_4"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_1/ene_cartel_soldier_shotgun_1"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_2/ene_cartel_soldier_shotgun_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_3/ene_cartel_soldier_shotgun_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_4/ene_cartel_soldier_shotgun_4")	
	}
	
	self.unit_categories.CS_cop_stealth_MP5.unit_types.federales = {
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier/ene_cartel_soldier"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_2/ene_cartel_soldier_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_3/ene_cartel_soldier_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_4/ene_cartel_soldier_4"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_1/ene_cartel_soldier_shotgun_1"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_2/ene_cartel_soldier_shotgun_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_3/ene_cartel_soldier_shotgun_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_4/ene_cartel_soldier_shotgun_4")	
	}
	
	self.unit_categories.CS_swat_MP5.unit_types.federales =	{
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier/ene_cartel_soldier"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_2/ene_cartel_soldier_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_3/ene_cartel_soldier_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_4/ene_cartel_soldier_4"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_1/ene_cartel_soldier_shotgun_1"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_2/ene_cartel_soldier_shotgun_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_3/ene_cartel_soldier_shotgun_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_4/ene_cartel_soldier_shotgun_4")
	}
	self.unit_categories.CS_swat_R870.unit_types.federales =	{
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier/ene_cartel_soldier"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_2/ene_cartel_soldier_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_3/ene_cartel_soldier_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_4/ene_cartel_soldier_4"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_1/ene_cartel_soldier_shotgun_1"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_2/ene_cartel_soldier_shotgun_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_3/ene_cartel_soldier_shotgun_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_4/ene_cartel_soldier_shotgun_4")
	}
	
	self.unit_categories.CS_heavy_M4.unit_types.federales =	{
	Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_heavy/ene_cartel_soldier_heavy"),
	Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_heavy_shotgun/ene_cartel_soldier_heavy_shotgun")
	}
	self.unit_categories.CS_heavy_R870.unit_types.federales =	{
	Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_heavy/ene_cartel_soldier_heavy"),
	Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_heavy_shotgun/ene_cartel_soldier_heavy_shotgun")
	}
	
	self.unit_categories.CS_shield.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_shield/ene_cartel_shield")}
	
	self.unit_categories.FBI_suit_C45_M4.unit_types.federales = {
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier/ene_cartel_soldier"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_2/ene_cartel_soldier_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_3/ene_cartel_soldier_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_4/ene_cartel_soldier_4"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_1/ene_cartel_soldier_shotgun_1"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_2/ene_cartel_soldier_shotgun_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_3/ene_cartel_soldier_shotgun_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_4/ene_cartel_soldier_shotgun_4")
	}
	self.unit_categories.FBI_suit_M4_MP5.unit_types.federales = {
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier/ene_cartel_soldier"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_2/ene_cartel_soldier_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_3/ene_cartel_soldier_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_4/ene_cartel_soldier_4"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_1/ene_cartel_soldier_shotgun_1"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_2/ene_cartel_soldier_shotgun_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_3/ene_cartel_soldier_shotgun_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_4/ene_cartel_soldier_shotgun_4")
	}
	self.unit_categories.FBI_suit_stealth_MP5.unit_types.federales = {
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier/ene_cartel_soldier"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_2/ene_cartel_soldier_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_3/ene_cartel_soldier_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_4/ene_cartel_soldier_4"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_1/ene_cartel_soldier_shotgun_1"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_2/ene_cartel_soldier_shotgun_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_3/ene_cartel_soldier_shotgun_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_shotgun_4/ene_cartel_soldier_shotgun_4")
	}
	
	self.unit_categories.marshal_marksman.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_tazer/ene_cartel_tazer")}	
	self.unit_categories.marshal_shield.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_tazer/ene_cartel_tazer")}	

	self.unit_categories.spooc.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_scout/ene_cartel_scout")}
	self.unit_categories.CS_tazer.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_tazer_normal/ene_cartel_tazer_normal")}	

	self.unit_categories.medic_M4.unit_types.federales = {
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_grenadier/ene_cartel_grenadier"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_grenadier_2/ene_cartel_grenadier_2")		
	}	
	self.unit_categories.medic_R870.unit_types.federales = {
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_grenadier/ene_cartel_grenadier"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_grenadier_2/ene_cartel_grenadier_2")		
	}	

	self.unit_categories.FBI_tank.unit_types.federales = {
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_bulldozer/ene_cartel_bulldozer"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_bulldozer_2/ene_cartel_bulldozer_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_bulldozer_3/ene_cartel_bulldozer_3")		
	}



	if difficulty_index < 6 then
		-- FBI
		self.unit_categories.FBI_swat_M4.unit_types.federales = {
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_fbi_1/ene_cartel_soldier_fbi_1"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_fbi_2/ene_cartel_soldier_fbi_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_fbi_3/ene_cartel_soldier_fbi_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_fbi_4/ene_cartel_soldier_fbi_4"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_fbi_shotgun_1/ene_cartel_soldier_fbi_shotgun_1"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_fbi_shotgun_2/ene_cartel_soldier_fbi_shotgun_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_fbi_shotgun_3/ene_cartel_soldier_fbi_shotgun_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_fbi_shotgun_4/ene_cartel_soldier_fbi_shotgun_4")
	}
	
		self.unit_categories.FBI_swat_R870.unit_types.federales = {
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_fbi_1/ene_cartel_soldier_fbi_1"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_fbi_2/ene_cartel_soldier_fbi_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_fbi_3/ene_cartel_soldier_fbi_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_fbi_4/ene_cartel_soldier_fbi_4"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_fbi_shotgun_1/ene_cartel_soldier_fbi_shotgun_1"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_fbi_shotgun_2/ene_cartel_soldier_fbi_shotgun_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_fbi_shotgun_3/ene_cartel_soldier_fbi_shotgun_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_fbi_shotgun_4/ene_cartel_soldier_fbi_shotgun_4")
	}
	
		self.unit_categories.FBI_heavy_G36.unit_types.federales =	{
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_heavy_fbi/ene_cartel_soldier_heavy_fbi"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_heavy_fbi_shotgun/ene_cartel_soldier_heavy_fbi_shotgun")
		}
		self.unit_categories.FBI_heavy_R870.unit_types.federales =	{
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_heavy_fbi/ene_cartel_soldier_heavy_fbi"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_heavy_fbi_shotgun/ene_cartel_soldier_heavy_fbi_shotgun")
		}
		
		
	self.unit_categories.marshal_marksman.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_tazer/ene_cartel_tazer")}	
	self.unit_categories.marshal_shield.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_tazer/ene_cartel_tazer")}	

	self.unit_categories.spooc.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_scout/ene_cartel_scout")}
	self.unit_categories.CS_tazer.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_tazer_normal/ene_cartel_tazer_normal")}	

	self.unit_categories.medic_M4.unit_types.federales = {
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_grenadier/ene_cartel_grenadier"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_grenadier_2/ene_cartel_grenadier_2")		
	}	
	self.unit_categories.medic_R870.unit_types.federales = {
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_grenadier/ene_cartel_grenadier"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_grenadier_2/ene_cartel_grenadier_2")		
	}	
	self.unit_categories.FBI_tank.unit_types.federales = {
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_bulldozer/ene_cartel_bulldozer"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_bulldozer_2/ene_cartel_bulldozer_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_bulldozer_3/ene_cartel_bulldozer_3")		
	}
		
		
		
		self.unit_categories.FBI_shield.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_shield/ene_cartel_shield")}
		
	elseif difficulty_index < 8 then
		-- City
		self.unit_categories.FBI_swat_M4.unit_types.federales =	{
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_city_1/ene_cartel_soldier_city_1"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_city_2/ene_cartel_soldier_city_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_city_3/ene_cartel_soldier_city_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_city_4/ene_cartel_soldier_city_4"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_city_shotgun_1/ene_cartel_soldier_city_shotgun_1"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_city_shotgun_2/ene_cartel_soldier_city_shotgun_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_city_shotgun_3/ene_cartel_soldier_city_shotgun_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_city_shotgun_4/ene_cartel_soldier_city_shotgun_4")	
		}
		
		self.unit_categories.FBI_swat_R870.unit_types.federales =	{
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_city_1/ene_cartel_soldier_city_1"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_city_2/ene_cartel_soldier_city_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_city_3/ene_cartel_soldier_city_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_city_4/ene_cartel_soldier_city_4"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_city_shotgun_1/ene_cartel_soldier_city_shotgun_1"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_city_shotgun_2/ene_cartel_soldier_city_shotgun_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_city_shotgun_3/ene_cartel_soldier_city_shotgun_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_city_shotgun_4/ene_cartel_soldier_city_shotgun_4")	
		}
		
		self.unit_categories.FBI_heavy_G36.unit_types.federales =	{
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_heavy_city/ene_cartel_soldier_heavy_city"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_heavy_fbi_shotgun/ene_cartel_soldier_heavy_fbi_shotgun")
		}
		self.unit_categories.FBI_heavy_R870.unit_types.federales =	{
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_heavy_city/ene_cartel_soldier_heavy_city"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_heavy_fbi_shotgun/ene_cartel_soldier_heavy_fbi_shotgun")
		}
		
		
	self.unit_categories.marshal_marksman.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_tazer/ene_cartel_tazer")}	
	self.unit_categories.marshal_shield.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_tazer/ene_cartel_tazer")}	
	
	self.unit_categories.spooc.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_scout/ene_cartel_scout")}
	self.unit_categories.CS_tazer.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_tazer_normal/ene_cartel_tazer_normal")}	

	self.unit_categories.medic_M4.unit_types.federales = {
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_grenadier/ene_cartel_grenadier"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_grenadier_2/ene_cartel_grenadier_2")		
	}	
	self.unit_categories.medic_R870.unit_types.federales = {
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_grenadier/ene_cartel_grenadier"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_grenadier_2/ene_cartel_grenadier_2")		
	}	

	self.unit_categories.FBI_tank.unit_types.federales = {
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_bulldozer/ene_cartel_bulldozer"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_bulldozer_2/ene_cartel_bulldozer_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_bulldozer_3/ene_cartel_bulldozer_3")		
	}
		
		
		
		
		self.unit_categories.FBI_shield.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_shield/ene_cartel_shield")}
		
	else
		-- ZEALs
		self.unit_categories.FBI_swat_M4.unit_types.federales =	{
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_zeal_1/ene_cartel_soldier_zeal_1"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_zeal_2/ene_cartel_soldier_zeal_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_zeal_3/ene_cartel_soldier_zeal_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_zeal_4/ene_cartel_soldier_zeal_4"),
	}
		self.unit_categories.FBI_swat_R870.unit_types.federales =	{
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_zeal_1/ene_cartel_soldier_zeal_1"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_zeal_2/ene_cartel_soldier_zeal_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_zeal_3/ene_cartel_soldier_zeal_3"),		
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_zeal_4/ene_cartel_soldier_zeal_4"),
	}
		
		self.unit_categories.FBI_heavy_G36.unit_types.federales =	{Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_heavy_zeal/ene_cartel_soldier_heavy_zeal")}
		self.unit_categories.FBI_heavy_R870.unit_types.federales =	{Idstring("units/pd2_mod_ttr/characters/ene_cartel_soldier_heavy_zeal/ene_cartel_soldier_heavy_zeal")}
		
		
	self.unit_categories.marshal_marksman.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_tazer/ene_cartel_tazer")}	
	self.unit_categories.marshal_shield.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_tazer/ene_cartel_tazer")}	
	
	
	self.unit_categories.spooc.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_scout/ene_cartel_scout")}
	self.unit_categories.CS_tazer.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_tazer_normal/ene_cartel_tazer_normal")}	

	self.unit_categories.medic_M4.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_grenadier/ene_cartel_grenadier")}	
	self.unit_categories.medic_R870.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_grenadier_2/ene_cartel_grenadier_2")}	

	self.unit_categories.FBI_tank.unit_types.federales = {
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_bulldozer/ene_cartel_bulldozer"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_bulldozer_2/ene_cartel_bulldozer_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_bulldozer_3/ene_cartel_bulldozer_3")		
	}
		
		
		
	self.unit_categories.marshal_marksman.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_tazer/ene_cartel_tazer")}	
	self.unit_categories.marshal_shield.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_tazer/ene_cartel_tazer")}	
	
	self.unit_categories.spooc.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_scout/ene_cartel_scout")}
	self.unit_categories.CS_tazer.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_tazer_normal/ene_cartel_tazer_normal")}	

	self.unit_categories.medic_M4.unit_types.federales = {
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_grenadier/ene_cartel_grenadier"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_grenadier_2/ene_cartel_grenadier_2")		
	}	
	self.unit_categories.medic_R870.unit_types.federales = {
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_grenadier/ene_cartel_grenadier"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_grenadier_2/ene_cartel_grenadier_2")		
	}	
	self.unit_categories.FBI_tank.unit_types.federales = {
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_bulldozer/ene_cartel_bulldozer"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_bulldozer_2/ene_cartel_bulldozer_2"),
		Idstring("units/pd2_mod_ttr/characters/ene_cartel_bulldozer_3/ene_cartel_bulldozer_3")		
	}
				
		
	self.unit_categories.FBI_shield.unit_types.federales = {Idstring("units/pd2_mod_ttr/characters/ene_cartel_shield/ene_cartel_shield")}
	end
end)


Hooks:PostHook(GroupAITweakData, "_init_enemy_spawn_groups", "cartel_group_teams", function(self, difficulty_index)

		self.enemy_spawn_groups.marshal_squad = {
			spawn_cooldown = 90,
			max_nr_simultaneous_groups = 2,
			initial_spawn_delay = 90,
			amount = {
				1,
				1
			},
			spawn = {
				{
					respawn_cooldown = 80,
					amount_min = 1,
					rank = 2,
					freq = 1,
					unit = "marshal_shield",
					tactics = self._tactics.swat_rifle_flank
				},
				{
					respawn_cooldown = 80,
					amount_min = 1,
					rank = 1,
					freq = 1,
					unit = "marshal_marksman",
					tactics = self._tactics.swat_rifle_flank
				}
			},
			spawn_point_chk_ref = table.list_to_set({
				"tac_shield_wall",
				"tac_shield_wall_ranged",
				"tac_shield_wall_charge"
			})
		}

end)
