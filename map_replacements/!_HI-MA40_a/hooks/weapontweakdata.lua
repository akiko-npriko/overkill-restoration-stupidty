-- not used
Hooks:PostHook(WeaponTweakData, "init", "ma40modInit", function(self)
	if self.SetupAttachmentPoint then 
		self:SetupAttachmentPoint( "ma40", {
			name = "a_fl_toprail",
			base_a_obj = "a_fl",
			position = Vector3(0, 0, 0),
			rotation = RotationCAP(0, 0, 0)
		})
	else
		error("You crashed because you're missing some dependencies. Please actually read the information on the mod page.")
	end
end)