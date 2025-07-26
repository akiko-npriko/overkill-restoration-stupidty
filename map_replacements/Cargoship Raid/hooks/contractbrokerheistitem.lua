--PAYDAY 2 Creatos hook. https://discordapp.com/invite/GKRZAhF for more tutorials and hooks
local function make_fine_text(text)
	local x, y, w, h = text:text_rect()

	text:set_size(w, h)
	text:set_position(math.round(text:x()), math.round(text:y()))
end
Hooks:PostHook(ContractBrokerHeistItem, 'init', 'add_custom_heist_text', function(self, parent_panel, job_data, idx, ...)
	local job_tweak = tweak_data.narrative:job_data(job_data.job_id)
	local dlc_name, dlc_color = self:get_dlc_name_and_color(job_tweak)
	local contact = job_tweak.contact
	if contact == "pd2maps" or job_tweak.is_custom then
		local contact_tweak = tweak_data.narrative.contacts[contact]
		local custom_name
		if self._panel:child("custom_heist_panel") then
			custom_name = self._panel:child("custom_heist_panel")
		else
			custom_name = self._panel:text({
				name="custom_heist_panel",
				alpha = 1,
				vertical = "top",
				layer = 1,
				align = "left",
				halign = "left",
				valign = "top",
				text = managers.localization:to_upper_text("cn_menu_custom_heist"),
				font = tweak_data.menu.pd2_medium_font,
				font_size = tweak_data.menu.pd2_medium_font_size * 0.9,
				color = Color(255, 105, 254, 59) / 255
			})
		end

		make_fine_text(custom_name)
		for idx, child in ipairs(self._panel:children()) do
			if child.set_text then
				if child:text() == managers.localization:to_upper_text("menu_new") then
					custom_name:set_left(child:right() + 5)
					custom_name:set_bottom(child:bottom())
					self:refresh()
				end
				if child:text() == dlc_name and dlc_name ~= "" then
					custom_name:set_left(child:right() + 5)
					custom_name:set_bottom(child:bottom())
					self:refresh()
				end
				if child:text() == managers.localization:to_upper_text(contact_tweak.name_id) then
					custom_name:set_left(child:right() + 5)
					custom_name:set_bottom(child:bottom())
					self:refresh()
				end
			end
		end
	end
end)