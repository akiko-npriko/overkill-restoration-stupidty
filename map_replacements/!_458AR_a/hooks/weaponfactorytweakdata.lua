Hooks:PostHook(WeaponFactoryTweakData, "init", "socomstuff_init", function(self)
	
	-- vmp support
	if BeardLib.Utils:FindMod("Vanilla Styled Weapon Mods") then
		table.insert(self.wpn_fps_snp_sierra458.uses_parts, "wpn_fps_ass_tecci_s_minicontra")
		table.insert(self.wpn_fps_snp_sierra458.uses_parts, "wpn_fps_ass_m4_g_sg")
		table.insert(self.wpn_fps_snp_sierra458.uses_parts, "wpn_fps_ass_m4_s_russian")
		table.insert(self.wpn_fps_snp_sierra458.uses_parts, "wpn_fps_ass_m16_s_op")
		table.insert(self.wpn_fps_snp_sierra458.uses_parts, "wpn_fps_upg_fl_ass_smg_sho_pointshoot")
		table.insert(self.wpn_fps_snp_sierra458.uses_parts, "wpn_fps_ass_contraband_s_tecci")
		table.insert(self.wpn_fps_snp_sierra458.uses_parts, "wpn_fps_pis_triggermod_slow")
		table.insert(self.wpn_fps_snp_sierra458.uses_parts, "wpn_fps_pis_triggermod_fast")

	self.parts.wpn_fps_upg_o_cqb.stance_mod.wpn_fps_snp_sierra458 = 
	{
		translation = Vector3(0, -3.5, -0.12)
	}

	self.parts.wpn_fps_upg_fl_ass_smg_sho_pointshoot.stance_mod.wpn_fps_snp_sierra458 = 
	{
        translation = Vector3(-4, 0, -13),
        rotation = Rotation(0, 0, -35)
	}
	
	else
		-- vanilla mod pack not installed
	end

	if BeardLib.Utils:FindMod("Vanilla Styled Weapon Mods Legacy") then
		table.insert(self.wpn_fps_snp_sierra458.uses_parts, "wpn_fps_m4_g_wrap")
	
	else
		-- vanilla mod pack legacy not installed
	end

	if BeardLib.Utils:FindMod("AR AK Mods") then
		table.insert(self.wpn_fps_snp_sierra458.uses_parts, "wpn_fps_upg_m4_s_hera_paint")
		table.insert(self.wpn_fps_snp_sierra458.uses_parts, "wpn_fps_ass_tecci_s_wire")
	
	else
		-- AR AK mod pack not installed
	end

    for _, id in pairs(self.wpn_fps_ass_m16.uses_parts) do
        local part = self.parts[id]
        local stance_mod = part and part.stance_mod

        if stance_mod and stance_mod.wpn_fps_ass_m16 then
            stance_mod.wpn_fps_snp_sierra458 = stance_mod.wpn_fps_ass_m16 
        end
    end

	self.parts.wpn_fps_upg_o_shortdot.stance_mod.wpn_fps_snp_sierra458 = 
	{
		translation = Vector3(-0.001, -20, -0.85)
	}
	self.parts.wpn_fps_upg_o_leupold.stance_mod.wpn_fps_snp_sierra458 = 
	{
		translation = Vector3(0, -23, -0.955)
	}
	self.parts.wpn_fps_upg_o_box.stance_mod.wpn_fps_snp_sierra458 = 
	{
		translation = Vector3(0, -19, -0.955)
	}
	self.parts.wpn_fps_upg_o_northtac.stance_mod.wpn_fps_snp_sierra458 = 
	{
		translation = Vector3(-0.02, -18, -0.12),
		rotation = Rotation(-0.01, 0.0, 0)
	}
	self.parts.wpn_fps_upg_o_northtac_reddot.stance_mod.wpn_fps_snp_sierra458 = 
	{
		translation = Vector3(0, -10, -5.2),
		rotation = Rotation(-0.01, 0.0, 0)
	}
	self.parts.wpn_fps_upg_o_schmidt.stance_mod.wpn_fps_snp_sierra458 = 
	{
		translation = Vector3(0, -23, -0.875),
		rotation = Rotation(-0.01, 0.0, 0)
	}
	self.parts.wpn_fps_upg_o_schmidt_magnified.stance_mod.wpn_fps_snp_sierra458 = 
	{
		translation = Vector3(0, -29, -0.875),
		rotation = Rotation(-0.01, 0.0, 0)
	}	

	
	self.parts.wpn_fps_upg_o_45iron.stance_mod.wpn_fps_snp_sierra458 = 
	{
		translation = Vector3(-2.75, 0, -10.7),
		rotation = Rotation(0.0, 0.0, -45)
	}
	self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_snp_sierra458 = 
	{
		translation = Vector3(-2.75, 0, -10.7),
		rotation = Rotation(0.08, 0.08, -45)
	}
	self.parts.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_snp_sierra458 = 
	{
		translation = Vector3(-2.75, 0, -10.7),
		rotation = Rotation(0.08, 0.08, -45)
	}
	self.parts.wpn_fps_upg_o_45steel.stance_mod.wpn_fps_snp_sierra458 = 
	{
		translation = Vector3(-2.75, 0, -10.7),
		rotation = Rotation(0, 0, -45)
	}
	self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_snp_sierra458 = 
	{
		translation = Vector3(0, 0, -3.5),
		rotation = Rotation(0, 0, 0)
	}
	self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_snp_sierra458 = 
	{
		translation = Vector3(-0.15, 0, -6),
		rotation = Rotation(0, 0, 0)
	}
	self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_snp_sierra458 = 
	{
		translation = Vector3(0.05, 0, -3.3),
		rotation = Rotation(0.08, 0.08, 0)
	}
	self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_snp_sierra458 = {
		translation = Vector3(0, -3.5, -0.12),
		rotation = Rotation(0.0, 0.0, 0)
	}
	self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_snp_sierra458 = 
	{
		translation = Vector3(0, -3.5, -3.32),
		rotation = Rotation(0.08, 0.08, 0)
	}


	self.parts.wpn_fps_snp_sierra458_bush_switch = {
		is_a_unlockable = true,
		texture_bundle_folder = "mods",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		a_obj = "a_body",
		type = "ammo",
		internal_part = true,
		sub_type = "ammo_poison",
		name_id = "bm_wp_wpn_fps_snp_sierra458_m_bush",
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {},
		stats = {
			value = 0,
			total_ammo_mod = 0,
			damage = 0,
			spread = 0
		},
		custom_stats = {
			armor_piercing_add = 1,
			can_shoot_through_enemy = true,
			can_shoot_through_shield = false,
			can_shoot_through_wall = true,
			muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_rip",
			damage_far_mul = 1,
			damage_near_mul = 1,
			bullet_class = "PoisonBulletBase",
			dot_data = {
				type = "poison",
				custom_data = {
					hurt_animation_chance = 1,
					dot_damage = 12,
					dot_length = 2.5,
					use_weapon_damage_falloff = true,
					dot_tick_period = 0.5
				}
			}
		}
	}
	
	self.parts.wpn_fps_snp_sierra458_m_transparent.bullet_objects = {
		amount = 10,
		prefix = "g_bullet_"
	}	

end)