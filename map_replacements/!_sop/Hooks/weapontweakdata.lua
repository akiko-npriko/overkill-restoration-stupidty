Hooks:PostHook( WeaponTweakData, "init", "soppo_is_toppo", function(self)
	self.soppo_crew = self.soppo_crew  or deep_clone(self.m4_crew)

self:SetupAttachmentPoint( "soppo", {
		name = "a_gl",
		base_a_obj = "a_fl",
		position = Vector3( -2.6, 6.45, -2.4 ),
		rotation = RotationCAP( 0, 0, 0 )
	})
self:SetupAttachmentPoint( "soppo", {
		name = "a_s",
		base_a_obj = "a_s",
		position = Vector3( 0, 0.78, 0 ),
		rotation = RotationCAP( 0, 0, 0 )
	})
self:SetupAttachmentPoint( "soppo", {
		name = "a_body",
		base_a_obj = "a_body",
		position = Vector3( 0, -1.55, 0 ),
		rotation = RotationCAP( 0, 0, 0 )
	})
self:SetupAttachmentPoint( "soppo", {
		name = "a_b",
		base_a_obj = "a_b",
		position = Vector3( 0, -1.55, 0 ),
		rotation = RotationCAP( 0, 0, 0 )
	})
self:SetupAttachmentPoint( "soppo", {
		name = "a_fg",
		base_a_obj = "a_fg",
		position = Vector3( 0, -1.55, 0 ),
		rotation = RotationCAP( 0, 0, 0 )
	})
self:SetupAttachmentPoint( "soppo", {
		name = "a_g",
		base_a_obj = "a_g",
		position = Vector3( 0, 0.08, 0.21 ),
		rotation = RotationCAP( 0, 0, 0 )
	})
self:SetupAttachmentPoint( "soppo", {
		name = "a_o",
		base_a_obj = "a_o",
		position = Vector3( 0, -1.55, -0.71 ),
		rotation = RotationCAP( 0, 0, 0 )
	})
self:SetupAttachmentPoint( "soppo", {
		name = "a_fl",
		base_a_obj = "a_fl",
		position = Vector3( 0.1, -3.5, 0 ),
		rotation = RotationCAP( 0, 0, 0 )
	})
self:SetupAttachmentPoint( "soppo", {
		name = "a_gb",
		base_a_obj = "a_b",
		position = Vector3( 0, 11.4, 0 ),
		rotation = RotationCAP( 0, 0, 0 )
	})
self:SetupAttachmentPoint( "soppo", {
		name = "a_m",
		base_a_obj = "a_m",
		position = Vector3( 0, -2.12, 4.03 ),
		rotation = RotationCAP( 0, 0, 0 )
	})
self:SetupAttachmentPoint( "soppo", {
		name = "a_dh",
		base_a_obj = "a_dh",
		position = Vector3( 0, 0.97, 0.17 ),
		rotation = RotationCAP( 0, 0, 0 )
	})
self:SetupAttachmentPoint( "soppo", {
		name = "a_bolt",
		base_a_obj = "a_bolt",
		position = Vector3( 0.72, -4.65, 0.68 ),
		rotation = RotationCAP( 0, 0, 0 )
	})

self:SetupAttachmentPoint( "soppo", {
		name = "a_fl_left",
		base_a_obj = "a_fl",
		position = Vector3( -5.3, -3.5, 0 ),
		rotation = RotationCAP( 0, 0, 180 )
	})
self:SetupAttachmentPoint( "soppo", {
		name = "a_fl_top",
		base_a_obj = "a_fl",
		position = Vector3( -2.59, -3.5, 2.71 ),
		rotation = RotationCAP( 0, 0, -90 )
	})
self:SetupAttachmentPoint( "soppo", {
		name = "a_fl_gb",
		base_a_obj = "a_fl",
		position = Vector3( -2.59, 15.07, 1.9 ),
		rotation = RotationCAP( 0, 0, -90 )
	})
	
self:SetupAttachmentPoint( "soppo", {
		name = "a_gb_fs",
		base_a_obj = "a_b",
		position = Vector3( 0, 29.1, 0 ),
		rotation = RotationCAP( 0, 0, 0 )
	})
self:SetupAttachmentPoint( "soppo", {    
        name = "a_charm",
        base_a_obj = "a_fg",
        position = Vector3( -1.7, -5, 0),   
        rotation = RotationCAP( 180, 0, 0)
    })

if BeardLib.Utils:FindMod("TTI Attachment Pack") then -- this is so the plate thingy is properly positioned on the magazine instead of hovering below it
self:SetupAttachmentPoint( "soppo",{
		name = "a_tti_pl8",
		base_a_obj = "a_m",
		part_attach_data = {
			{"wpn_fps_upg_m_tti"},
			"g_wpn_fps_upg_m4_m_pmag"
			},
		position = Vector3( 0, -2.12, 4.03 ),
		rotation = RotationCAP( 0, 0, 0 )
	})
	end

	local yesakikosaysthisthinghasressupportubas = true
	if yesakikosaysthisthinghasressupportubas then -- If you're seeing this, hello there.

				self.soppo.recategorize = { "light_ar" }
				self.soppo.damage_type = "assault_rifle"
				self.soppo.tactical_reload = 1
				self.soppo.nato = true			
				self.soppo.BURST_FIRE = false
				self.soppo.ADAPTIVE_BURST_SIZE = false
				self.soppo.CLIP_AMMO_MAX = 30
				self.soppo.external_support = true
				self.soppo.AMMO_MAX = 120
				self.soppo.fire_mode_data.fire_rate = 0.08
				self.soppo.kick = self.stat_info.kick_tables.moderate_kick
				self.soppo.kick_pattern = {
					{0, self.stat_info.kick_tables.moderate_kick},
					{6, self.stat_info.kick_tables.moderate_right_kick},
					{8, self.stat_info.kick_tables.right_kick},
					{14, self.stat_info.kick_tables.left_kick},
					{19, self.stat_info.kick_tables.moderate_right_kick}
				}
				self.soppo.supported = true
				self.soppo.ads_speed = 0.320
				self.soppo.damage_falloff = {
					start_dist = 2200,
					end_dist = 6000,
					min_mult = 0.5
				}
				self.soppo.stats = {
					damage = 24,
					spread = 81,
					recoil = 83,
					spread_moving = 6,
					zoom = 1,
					concealment = 21,
					suppression = 9,
					alert_size = 2,
					extra_ammo = 101,
					total_ammo_mod = 400,
					value = 1,
					reload = 20
				}
				self.soppo.stats_modifiers = nil
				self.soppo.panic_suppression_chance = 0.05
				self.soppo.lock_slide = true
				self.soppo.sounds.magazine_empty = "wp_rifle_slide_lock"
				self.soppo.use_underbarrel_anim = "contraband"
				self.soppo.timers = deep_clone(self.contraband.timers)

		else

				self.soppo.damage_falloff = self.soppo.damage_falloff

		end

end)