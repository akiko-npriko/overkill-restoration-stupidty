Hooks:PostHook( WeaponFactoryTweakData, "init", "glockmags_init", function(self)

	self.wpn_fps_pis_x_g17.override = self.wpn_fps_pis_x_g17.override or {}
	self.wpn_fps_pis_x_g17.override.wpn_fps_pis_glock_m_pmag = {
		stats = {
			concealment = -1,
			reload = 2,
			spread = -1,
			extra_ammo = 4
		}
	}
	self.wpn_fps_pis_x_g17.override.wpn_fps_pis_glock_m_d50 = {
		custom_stats = {
			ammo_offset = 66
		}
	}
	self.wpn_fps_pis_x_g17.override.wpn_fps_pis_glock_m_cmag = {
		custom_stats = {
			ammo_offset = 166
		}
	}

	self.wpn_fps_pis_x_g18c.override = self.wpn_fps_pis_x_g18c.override or {}
	self.wpn_fps_pis_x_g18c.override.wpn_fps_pis_glock_m_pmag = {
		stats = {
			concealment = -1,
			reload = 2,
			spread = -1,
			extra_ammo = 4	
		}
	}
	self.wpn_fps_pis_x_g18c.override.wpn_fps_pis_glock_m_d50 = {
		custom_stats = {
			ammo_offset = 60
		}
	}
	self.wpn_fps_pis_x_g18c.override.wpn_fps_pis_glock_m_cmag = {
		custom_stats = {
			ammo_offset = 160
		}
	}
	self.wpn_fps_pis_g18c.override = self.wpn_fps_pis_g18c.override or {}
	self.wpn_fps_pis_g18c.override.wpn_fps_pis_glock_m_d50 = {
		custom_stats = {
			ammo_offset = 30
		}
	}
	self.wpn_fps_pis_g18c.override.wpn_fps_pis_glock_m_cmag = {
		custom_stats = {
			ammo_offset = 80
		}
	}

	self.wpn_fps_pis_x_g22c.override = self.wpn_fps_pis_x_g22c.override or {}
	self.wpn_fps_pis_x_g22c.override.wpn_fps_pis_glock_m_pmag = {
		stats = {
			concealment = -1,
			reload = 2,
			spread = -1,
			extra_ammo = 4	
		}
	}
	self.wpn_fps_pis_x_g22c.override.wpn_fps_pis_glock_m_d50 = {
		custom_stats = {
			ammo_offset = 68
		}
	}
	self.wpn_fps_pis_x_g22c.override.wpn_fps_pis_glock_m_cmag = {
		custom_stats = {
			ammo_offset = 168
		}
	}
	self.wpn_fps_pis_g22c.override = self.wpn_fps_pis_g22c.override or {}
	self.wpn_fps_pis_g22c.override.wpn_fps_pis_glock_m_d50 = {
		custom_stats = {
			ammo_offset = 18
		}
	}
	self.wpn_fps_pis_g22c.override.wpn_fps_pis_glock_m_cmag = {
		custom_stats = {
			ammo_offset = 84
		}
	}

	self.wpn_fps_jowi.override = self.wpn_fps_jowi.override or {}
	self.wpn_fps_jowi.override.wpn_fps_pis_glock_m_pmag = {
		stats = {
			concealment = -1,
			reload = 2,
			spread = -2,
			extra_ammo = 4	
		}
	}
	self.wpn_fps_jowi.override.wpn_fps_pis_glock_m_d50 = {
		custom_stats = {
			ammo_offset = 80
		}
	}
	self.wpn_fps_jowi.override.wpn_fps_pis_glock_m_cmag = {
		custom_stats = {
			ammo_offset = 180
		}
	}
	self.wpn_fps_pis_g26.override = self.wpn_fps_pis_g26.override or {}
	self.wpn_fps_pis_g26.override.wpn_fps_pis_glock_m_d50 = {
		custom_stats = {
			ammo_offset = 40
		}
	}
	self.wpn_fps_pis_g26.override.wpn_fps_pis_glock_m_cmag = {
		custom_stats = {
			ammo_offset = 80
		}
	}

	self.wpn_fps_pis_x_maxim9.override = self.wpn_fps_pis_x_maxim9.override or {}
	self.wpn_fps_pis_x_maxim9.override.wpn_fps_pis_glock_m_pmag = {
		stats = {
			concealment = -1,
			reload = 2,
			spread = -2,
			extra_ammo = 4	
		},
		unit = "units/mods/weapons/wpn_fps_pis_maxim9_pts/wpn_fps_pis_maxim9_m_pmag",
		third_unit = "units/mods/weapons/wpn_fps_pis_maxim9_pts/wpn_third_pis_maxim9_m_pmag"
	}

	self.wpn_fps_pis_maxim9.override = self.wpn_fps_pis_maxim9.override or {}
	self.wpn_fps_pis_maxim9.override.wpn_fps_pis_glock_m_pmag = {
		unit = "units/mods/weapons/wpn_fps_pis_maxim9_pts/wpn_fps_pis_maxim9_m_pmag",
		third_unit = "units/mods/weapons/wpn_fps_pis_maxim9_pts/wpn_third_pis_maxim9_m_pmag"
	}

	self.wpn_fps_smg_x_polymer.override = self.wpn_fps_smg_x_polymer.override or {}
	self.wpn_fps_smg_x_polymer.override.wpn_fps_smg_polymer_m_d50 = {
		stats = {
			concealment = -3,
			reload = -2,
			spread = 1,
			recoil = 1,
			extra_ammo = 20	
		}
	}
	self.wpn_fps_smg_x_polymer.override.wpn_fps_smg_polymer_m_cmag = {
		custom_stats = {
			ammo_offset = 140
		}
	}

-- Visibility toggles for Maxim-9 mags

	self.parts.wpn_fps_ass_sub2000_m_maxim.visibility = {
		{
			objects = {
				g_ext = true
			}
		}
	}

	self.parts.wpn_fps_smg_fmg9_m_short.visibility = {
		{
			objects = {
				g_ext = false
			}
		}
	}

end)