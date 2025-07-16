Hooks:PostHook(WeaponFactoryTweakData, "create_bonuses", "CAFCWMod_VxWolf_Init", function(self)

	--HK G11
	if self.wpn_fps_ass_temple then
	self:cafcw_add_attachment_type("Barrel_Extensions", "wpn_fps_ass_temple")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_temple")
	self:cafcw_add_attachment_type("Suppressors", "wpn_fps_ass_temple")
	end

	--eDEN Bavarium Splitter
	if self.wpn_fps_ass_fortress then
		self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_fortress", "wpn_fps_ass_famas", nil, "0,2,-3")
		self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_fortress", "wpn_fps_ass_famas", nil, "0,8,-3")
		self:cafcw_add_custom_sights("Specter", "wpn_fps_ass_fortress", "wpn_fps_ass_famas", nil, "0,2,-2.96")
		self:cafcw_add_custom_sights("ACOG", "wpn_fps_ass_fortress", "wpn_fps_ass_famas", nil, "-0.01,8,-2.96")	
		self:cafcw_add_custom_sights("RDS45", "wpn_fps_ass_fortress", "wpn_fps_ass_famas", nil, "2.9,-7,-14")
	self:cafcw_add_attachment_type("Gadgets", "wpn_fps_ass_fortress")
	end

end)