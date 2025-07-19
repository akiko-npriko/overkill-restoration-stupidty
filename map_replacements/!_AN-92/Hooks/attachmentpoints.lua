Hooks:PostHook( WeaponTweakData, "init", "tiltHook", function(self)
    if ( self.tilt ) then
        self.tilt.attachment_points = {
            {
                name = "a_fl", -- Name of Attachment Point ( This can be a preexisting one or a new one. )
                base_a_obj = "a_fl", -- Attachment to base the attachment off off. This is so you can attach to the magazine if you want to. ( This defaults to 'a_body' if not included. )
                position = Vector3( 0, 0, -2 ), -- Position to offset from the base_a_obj.
                rotation = Rotation( 0, 0, 0 ) -- Rotation to offset from the base_a_obj.
            }
        }
    end
end )