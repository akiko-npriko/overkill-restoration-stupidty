Hooks:PostHook( WeaponTweakData, "init", "vsk94Hook", function(self)
if self.vsk94 then
	self:SetupAttachmentPoint("vsk94", {
                		name = "a_o", -- Name of Attachment Point ( This can be a preexisting one or a new one. )
                		base_a_obj = "a_o", -- Attachment to base the attachment off off. This is so you can attach to the magazine if you want to. ( This defaults to 'a_body' if not included. )
                		position = Vector3( 0, 1.4, -0.1 ), -- Position to offset from the base_a_obj.
                		rotation = Rotation( 0, 0, 0 ) -- Rotation to offset from the base_a_obj.
            })
	self:SetupAttachmentPoint("vsk94", {
                		name = "a_fl", -- Name of Attachment Point ( This can be a preexisting one or a new one. )
               		base_a_obj = "a_fl", -- Attachment to base the attachment off off. This is so you can attach to the magazine if you want to. ( This defaults to 'a_body' if not included. )
                		position = Vector3( 1, -13, 1.2 ), -- Position to offset from the base_a_obj.
                		rotation = Rotation( 0, 0, 0 ) -- Rotation to offset from the base_a_obj.
            })
	self:SetupAttachmentPoint("vsk94", {
                		name = "a_b", -- Name of Attachment Point ( This can be a preexisting one or a new one. )
                		base_a_obj = "a_b", -- Attachment to base the attachment off off. This is so you can attach to the magazine if you want to. ( This defaults to 'a_body' if not included. )
                		position = Vector3( 0, -21.8, -0.4 ), -- Position to offset from the base_a_obj.
                		rotation = Rotation( 0, 0, 0 ) -- Rotation to offset from the base_a_obj.
            })
end
end )