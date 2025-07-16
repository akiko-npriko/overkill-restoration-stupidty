Hooks:PostHook( WeaponTweakData, "init", "amtInit", function(self)

if self.SetupAttachmentPoint then
	self:SetupAttachmentPoint( "amt", {
		name = "a_quite",
		base_a_obj = "a_body",
		position = Vector3(0, 16.3, 10.65),
		rotation = RotationCAP(0, 0, 0)
	})
	self:SetupAttachmentPoint( "amt", {
		name = "a_charm",
		base_a_obj = "a_body",
		position = Vector3(-1.8, 8.2, 5.8),
		rotation = RotationCAP(180, 0, 0)
	})
	self:SetupAttachmentPoint( "amt", {
		name = "a_fl",
		base_a_obj = "a_body",
		position = Vector3(0, 15.2, 5.6),
		rotation = RotationCAP(0, 0, 0)
	})
	self:SetupAttachmentPoint( "amt", {
		name = "a_fg",
		base_a_obj = "a_body",
		position = Vector3(0, 14, 6.45),
		rotation = RotationCAP(180, 0, 0)
	})
	-- self:SetupAttachmentPoint( "amt", {
		-- name = "a_rds_pis",
		-- base_a_obj = "a_body",
		-- position = Vector3(0, 10, -10),
		-- rotation = RotationCAP(0, 0, 0)
	-- })
end

end )