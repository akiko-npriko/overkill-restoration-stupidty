Hooks:PostHook( WeaponTweakData, "init", "TF2_Minigun_Pack_ModInit", function(self)
if BeardLib.Utils:FindMod("Custom Attachment Points") or BeardLib.Utils:FindMod("WeaponLib") then
	self.sasha.attachment_points = {		
		{
                name = "a_b_tf2",
                base_a_obj = "a_b",
                position = Vector3(0, -39, 0),
                rotation = Rotation(0, 0, 0)
		}
	}
end
end )