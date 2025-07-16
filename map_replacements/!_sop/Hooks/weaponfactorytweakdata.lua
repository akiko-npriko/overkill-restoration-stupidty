Hooks:PostHook(WeaponFactoryTweakData, "init", "soppo_is_toppo", function(self)
	
	if BeardLib.Utils:FindMod("TTI Attachment Pack") then
		table.insert(self.wpn_fps_ass_soppo.uses_parts, "wpn_fps_upg_rec_tti")
	end
	
	if BeardLib.Utils:FindMod("Vanilla Styled Weapon Mods") then
		table.insert(self.wpn_fps_ass_soppo.uses_parts, "wpn_fps_ass_m16_s_op")
		table.insert(self.wpn_fps_ass_soppo.uses_parts, "wpn_fps_ass_m4_g_sg")
		table.insert(self.wpn_fps_ass_soppo.uses_parts, "wpn_fps_m4_uupg_m_extend")
	end
	
	if BeardLib.Utils:FindMod("Magpul Attachments Pack - M4") then
		table.insert(self.wpn_fps_ass_soppo.uses_parts, "wpn_fps_upg_g_m4_moe")
	end
	
	if BeardLib.Utils:FindMod("Daniel Defense Grip") then
		table.insert(self.wpn_fps_ass_soppo.uses_parts, "wpn_fps_upg_g_m4_dd")
	end
	
	if BeardLib.Utils:FindMod("Tactical Operator Attachments") then
		table.insert(self.wpn_fps_ass_soppo.uses_parts, "wpn_fps_upg_o_amine")
	end
end)