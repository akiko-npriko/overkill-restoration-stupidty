Hooks:PostHook( WeaponTweakData, "init", "welrodInit", function(self)
self.welrod_crew = deep_clone(self.ppk_crew)
if not BeardLib.Utils:FindMod("RestorationMod") then
	self.welrod_crew.DAMAGE = 6
	self.welrod_crew.CLIP_AMMO_MAX = 8
	self.welrod_crew.NR_CLIPS_MAX = 7
	self.welrod_crew.alert_size = 1250
end


if BeardLib.Utils:FindMod("Custom Attachment Points") or BeardLib.Utils:FindMod("WeaponLib") then
     self:SetupAttachmentPoint( "welrod", {
				name = "a_fl",
				base_a_obj = "a_fl",
				position = Vector3(0, 1.08, 0.5),
				rotation = Rotation(0, 0, -0)
	})
	self:SetupAttachmentPoint( "welrod", {
				name = "a_rds",
				base_a_obj = "a_rds",
				position = Vector3(0, 3.5, 0.45),
				rotation = Rotation(0, 0, -0)
	})
end
    self.welrod.reload_timed_stance_mod = {
        empty = {
            hip = {
                {t = 2.80, translation = Vector3(0, 0, -10), rotation = Rotation(0, 0, 0), speed = 1},
                {t = 0.90, translation = Vector3(-5, -5, -20), rotation = Rotation(0, -10, -50), speed = 2},
                {t = 0.80, translation = Vector3(-5, -5, -20), rotation = Rotation(0, -10, -50), speed = 2, sound = "welrod_twist_open"},
                {t = 0.65, translation = Vector3(-5, -10, -20), rotation = Rotation(0, -10, -50), speed = 2, sound = "welrod_boltback"},
                {t = 0.40, translation = Vector3(-5, -10, -20), rotation = Rotation(0, 0, -25), speed = 2, sound = "welrod_boltrelease"},
                {t = 0.25, translation = Vector3(-5, -5, -10), rotation = Rotation(0, 0, -15), speed = 3, sound = "welrod_twist_close"},
                {t = 0.00, translation = Vector3(0, 0, 0), rotation = Rotation(0, 0, 0), speed = 1}
            },
            ads = {
                {t = 2.80, translation = Vector3(0, 0, -10), rotation = Rotation(0, 0, 0), speed = 1},
                {t = 0.90, translation = Vector3(-5, -5, -25), rotation = Rotation(0, -10, -50), speed = 2},
                {t = 0.80, translation = Vector3(-5, -5, -30), rotation = Rotation(0, -10, -50), speed = 2, sound = "welrod_twist_open"},
                {t = 0.65, translation = Vector3(-5, -10, -30), rotation = Rotation(0, -10, -50), speed = 2, sound = "welrod_boltback"},
                {t = 0.40, translation = Vector3(-5, -10, -25), rotation = Rotation(0, 0, -25), speed = 2, sound = "welrod_boltrelease"},
                {t = 0.25, translation = Vector3(-5, -5, -10), rotation = Rotation(0, 0, -15), speed = 3, sound = "welrod_twist_close"},
                {t = 0.00, translation = Vector3(0, 0, 0), rotation = Rotation(0, 0, 0), speed = 1}
            }
        }
    }
self.welrod.fire_timed_stance_mod = {
	ads = {
		{t = 0, translation = Vector3(0, -10, -5), rotation = Rotation(0, 10, 0), speed = 2},
		{t = 0.15, translation = Vector3(0, -5, -40), rotation = Rotation(0, 30, 20), speed = 2, sound = "welrod_twist_open"},
		{t = 0.30, translation = Vector3(0, -10, -40), rotation = Rotation(0, 32, 20), speed = 2, sound = "welrod_boltback"},
		{t = 0.60, translation = Vector3(0, -5, -40), rotation = Rotation(0, 30, 20), speed = 2, sound = "welrod_boltrelease"},
		{t = 0.80, translation = Vector3(0, 0, 0), rotation = Rotation(0, 0, 0), speed = 1, sound = "welrod_twist_close"}
	},
	hip = {
		{t = 0, translation = Vector3(0, -10, -5), rotation = Rotation(0, 10, 0), speed = 2},
		{t = 0.15, translation = Vector3(0, -5, -30), rotation = Rotation(10, -10, -70), speed = 2, sound = "welrod_twist_open"},
		{t = 0.30, translation = Vector3(0, -10, -30), rotation = Rotation(10, -8, -70), speed = 2, sound = "welrod_boltback"},
		{t = 0.60, translation = Vector3(0, -5, -30), rotation = Rotation(10, -10, -70), speed = 2, sound = "welrod_boltrelease"},
		{t = 0.80, translation = Vector3(0, 0, 0), rotation = Rotation(0, 0, 0), speed = 1, sound = "welrod_twist_close"}
	}
}
end )