Hooks:PostHook( WeaponFactoryTweakData, "init", "polar9_stuff", function(self)

	for _, id in pairs(self.wpn_fps_pis_1911.uses_parts) do
		local part = self.parts[id]
		local stance_mod = part and part.stance_mod

		if stance_mod and stance_mod.wpn_fps_pis_1911 then
			stance_mod.wpn_fps_pis_polar9 = stance_mod.wpn_fps_pis_1911 
			stance_mod.wpn_fps_pis_baller = stance_mod.wpn_fps_pis_1911 
		end
	end

	self.parts.wpn_fps_pis_polar9_sl_standard.visibility = {
		{
			objects = {
				g_slide = true,
				g_barrel = false
			}
		}
	}

	self.parts.wpn_fps_pis_polar9_sl_long.visibility = {
		{
			objects = {
				g_slide_long = true,
				g_barrel_long = false
			}
		}
	}
	
	self.parts.wpn_fps_pis_polar9_b_standard.visibility = {
		{
			objects = {
				g_slide = false,
				g_slide_long = false,
				g_sight = false,
				g_barrel = true
			}
		}
	}

	self.parts.wpn_fps_pis_polar9_g_ergo.visibility = {
		{
			objects = {
				g_ergo = true
			}
		}
	}

	self.parts.wpn_fps_pis_1911_b_short.visibility = {
		{
			objects = {
				g_barrel = true
			}
		}
	}

	self.parts.wpn_fps_pis_baller_sl_standard.visibility = {
		{
			objects = {
				g_slide_long = true,
				g_barrel_long = false
			}
		}
	}

	self.parts.wpn_fps_pis_baller_b_average.visibility = {
		{
			objects = {
				g_slide = true,
				g_barrel = false
			}
		}
	}
	
	self.parts.wpn_fps_pis_baller_b_standard.visibility = {
		{
			objects = {
				g_slide = false,
				g_slide_long = false,
				g_sight = false,
				g_barrel = true,
				g_barrel_long = true
			}
		}
	}

	self.wpn_fps_pis_1911.override = self.wpn_fps_pis_1911.override or {}
	self.wpn_fps_pis_1911.override.wpn_fps_pis_baller_m_classic = {
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.wpn_fps_pis_1911.override.wpn_fps_pis_baller_m_classic_extended = {
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}

	self.wpn_fps_x_1911.override = self.wpn_fps_x_1911.override or {}
	self.wpn_fps_x_1911.override.wpn_fps_pis_baller_m_classic = {
		animations = {
			reload_not_empty = "reload_not_empty_right",
			reload = "reload_right",
			reload_left = "reload_left",
			reload_not_empty_left = "reload_not_empty_left"
		}
	}
	self.wpn_fps_x_1911.override.wpn_fps_pis_baller_m_classic_extended = {
		animations = {
			reload = "reload_right",
			reload_not_empty = "reload_not_empty_right",
			reload_left = "reload_left",
			reload_not_empty_left = "reload_not_empty_left"
		},
		stats = {
			extra_ammo = 2,
			spread = -1
		}
	}
	self.wpn_fps_x_1911.override.wpn_fps_pis_1911_b_short = {
		animations = {
			reload_left = "reload_left",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload = "reload_right",
			magazine_empty = "last_recoil"
		}
	}

	if self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot then --Vanilla Mod Pack

		table.insert(self.wpn_fps_pis_polar9.uses_parts, "wpn_fps_upg_fl_ass_smg_sho_pointshoot")			

		self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_polar9 = {
			translation = Vector3(-4, 0, -13),
			rotation = Rotation(0, 0, -35)			
		}

		table.insert(self.wpn_fps_pis_baller.uses_parts, "wpn_fps_upg_fl_ass_smg_sho_pointshoot")			

		self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_pis_baller = {
			translation = Vector3(-4, 0, -13),
			rotation = Rotation(0, 0, -35)			
		}

	end

	if self.parts.wpn_fps_pis_1911_body_sporty then
		
		self.parts.wpn_fps_pis_1911_body_sporty.forbids = self.parts.wpn_fps_pis_1911_body_sporty.forbids or{}
		table.insert(self.parts.wpn_fps_pis_1911_body_sporty.forbids, "wpn_fps_pis_1911_b_short")	

		self.parts.wpn_fps_pis_x_1911_body_sporty.forbids = self.parts.wpn_fps_pis_x_1911_body_sporty.forbids or{}
		table.insert(self.parts.wpn_fps_pis_x_1911_body_sporty.forbids, "wpn_fps_pis_1911_b_short")	

	end

	if BeardLib.Utils:FindMod("Off-hand Knife") then --Off-Hand Knife

		table.list_append(self.wpn_fps_pis_baller.uses_parts, {
		   "wpn_fps_pis_usp_knife_rambo",
		   "wpn_fps_pis_usp_knife_bayonet",
		   "wpn_fps_pis_usp_knife_sword",
		   "wpn_fps_pis_usp_knife_oxide",
		   "wpn_fps_pis_usp_knife_freedom",
		   "wpn_fps_pis_usp_knife_wing",
		   "wpn_fps_pis_usp_knife_kabar_tanto",
		   "wpn_fps_pis_usp_knife_kabar",
		   "wpn_fps_pis_usp_knife_km2000",
		   "wpn_fps_pis_usp_knife_ballistic",
		   "wpn_fps_pis_usp_knife_switchblade",
		   "wpn_fps_pis_usp_knife_x46",
		   "wpn_fps_pis_usp_knife_chef",
		   "wpn_fps_pis_usp_knife_fairbair",
		   "wpn_fps_pis_usp_knife_toothbrush_shiv",
		   "wpn_fps_pis_usp_knife_aziz"
		})
	
		table.list_append(self.wpn_fps_pis_polar9.uses_parts, {
		   "wpn_fps_pis_usp_knife_rambo",
		   "wpn_fps_pis_usp_knife_bayonet",
		   "wpn_fps_pis_usp_knife_sword",
		   "wpn_fps_pis_usp_knife_oxide",
		   "wpn_fps_pis_usp_knife_freedom",
		   "wpn_fps_pis_usp_knife_wing",
		   "wpn_fps_pis_usp_knife_kabar_tanto",
		   "wpn_fps_pis_usp_knife_kabar",
		   "wpn_fps_pis_usp_knife_km2000",
		   "wpn_fps_pis_usp_knife_ballistic",
		   "wpn_fps_pis_usp_knife_switchblade",
		   "wpn_fps_pis_usp_knife_x46",
		   "wpn_fps_pis_usp_knife_chef",
		   "wpn_fps_pis_usp_knife_fairbair",
		   "wpn_fps_pis_usp_knife_toothbrush_shiv",
		   "wpn_fps_pis_usp_knife_aziz"
		})	
	
	end

end)