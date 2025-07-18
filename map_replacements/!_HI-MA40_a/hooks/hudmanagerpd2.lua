Hooks:PostHook(HUDManager,"_setup_player_info_hud_pd2","ma40_hudmanager_create_overlay",function(self)
	self:create_ma40_overlay()
end)

function HUDManager:create_ma40_overlay(path)
	
	if alive(self._ma40_scope_overlay) then 
		return 
--		self._ma40_scope_overlay:parent():remove(self._ma40_scope_overlay)
--		self._ma40_scope_overlay = nil
	end
	
	if managers.hud._fullscreen_workspace then 
		
		local panel = managers.hud._fullscreen_workspace:panel():panel({
			name = "ma40_scope_overlay",
			visible = false,
			alpha = 0
		})
		self._ma40_scope_overlay = panel
		
		--local path_overlay_crosshair = "scope_overlay/ma40_scope_overlay"
		--local path_overlay_ach = "scope_overlay/ma40_scope_overlay_ach"

		local overlay = panel:bitmap({
			name = "overlay",
			texture = path or "scope_overlay/ma40_scope_overlay", -- default to crosshaired overlay; set on each anim show
			layer = 127,
--			w = panel:w(),
--			h = panel:h(),
			valign = "grow",
			halign = "grow",
--			blend_mode = "add",
			alpha = 1
		})
		
		overlay:set_center(panel:center())
	end
end

function HUDManager:set_ma40_overlay(path)
	if alive(self._ma40_scope_overlay) then
		self._ma40_scope_overlay:child("overlay"):set_image(path)
	else
		self:create_ma40_overlay(path)
	end
end

function HUDManager:start_ma40_overlay(duration)
	if alive(self._ma40_scope_overlay) then
		self._ma40_scope_overlay:stop()
		duration = duration or 0.2
		self._ma40_scope_overlay:animate(function(o)
			local a = o:alpha()
			
			o:show()
			over(
				duration,
				function(lerp)
					local sq = math.clamp(lerp * lerp,0,1)
					o:set_alpha(sq * a)
				end
			)
			o:set_alpha(1)
		end)
	end
end

function HUDManager:stop_ma40_overlay(duration)
	if alive(self._ma40_scope_overlay) then
		self._ma40_scope_overlay:stop()
		duration = duration or 0.2
		self._ma40_scope_overlay:animate(function(o)
			local a = o:alpha()
			
			o:show()
			over(
				duration,
				function(lerp)
					local sq = 1-math.clamp(lerp * lerp,0,1)
					o:set_alpha(sq * a)
				end
			)
			o:set_alpha(0)
			o:hide()
		end)
	end
end



function HUDManager:hide_ma40_overlay()
	if self._ma40_scope_overlay then 
		self._ma40_scope_overlay:stop()
		self._ma40_scope_overlay:hide()
		self._ma40_scope_overlay:set_alpha(0)
	end
end