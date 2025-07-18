blt.xaudio.setup()

_G.OCPOverlay = OCPOverlay or {}
OCPOverlay._path = OCPOverlayCore:GetPath()
OCPOverlay._current_data = {
	x = 1280/2,
	y = 720/2,
	t = nil  -- "animate in" t
} -- data about which enemy to target currently
--OCPOverlay._audio_source = XAudio.UnitSource:new(XAudio.PLAYER)
OCPOverlay._panel = nil
OCPOverlay._cooldowns = {
	-- [Idstring u_key] = 126.3249827 -- in-game timer time at which re-highlighting is possible
}
OCPOverlay._bodies = {
	"Spine",
	"Head"
--	"Spine1",
--	"Spine2",
--	"Hips",
--	"Neck",
--	"LeftShoulder",
--	"LeftArm",
--	"LeftForeArm",
--	"RightShoulder",
--	"RightArm",
--	"RightForeArm",
--	"LeftUpLeg",
--	"LeftLeg",
--	"LeftFoot",
--	"RightUpLeg",
--	"RightLeg",
--	"RightFoot"
}

local PATH_SND_SCAN = OCPOverlay._path .. "assets/sounds/hud_scan.ogg"
local PATH_SND_BEEP = OCPOverlay._path .. "assets/sounds/hud_beep.ogg"
local SND_BEEP_VOL = 1
local SND_SCAN_VOL = 0.25

local mvector3_set = mvector3.set
local mvector3_subtract = mvector3.subtract
local mvector3_normalize = mvector3.normalize
local mvector3_dot = mvector3.dot
local mvector3_x = mvector3.x
local mvector3_y = mvector3.y
local mvector3_length = mvector3.length
local mvector3_distance = mvector3.distance

local h_dir = Vector3()
local h_dir_normalized = Vector3()
local enemy_pos = Vector3()
local tmp_best_pos = Vector3()

local OCP_HUD_COLOR = Color("85ff9d")

local HUD_FONT = "fonts/vipnagorgialla"
local BOX_W = 400
local BOX_H = 800
local STROKE_LONG = 2560
local STROKE_SHORT = 4
local ANIM_DURATION = 0.5
local MAX_LOS_BREAK_DISTANCE = 150 -- if line of sight to an enemy is broken, the distance from the first sight obstacle to the enemy must be less than this value in order for targeting to work
local MAX_TARGET_DISTANCE = 2500 -- 25m range
local TARGET_MARK_COOLDOWN = 15

-- deprecated
local ALPHA_HAS_LOS = 0.9
local ALPHA_NO_LOS = 1

--Hooks:PostHook(PlayerStandard,"update","ocpo_update",upd2)
local function upd(t,dt)
	local audio_state,desired_state
	
	local hud_visible = true
	local ws = managers.hud and managers.hud._workspace
	if ws then
		local ocpo_panel = OCPOverlay._panel
		-- create a hud panel to hold all elements related to the ocp overlay
		-- this also confines drawing inside this bounding box
		-- (as long as we don't break it using any nonzero rotation on elements)
		if not alive(ocpo_panel) then
			ocpo_panel = ws:panel():panel({
				name = "ocpo_panel"
			})
			local ocpo_w,ocpo_h = ocpo_panel:size()
			local targeting_text = ocpo_panel:text({
				name = "targeting_text",
				font = HUD_FONT,
				font_size = 36,
				text = "TARGETING",
				x = 156,
				y = -168,
				align = "left",
				vertical = "bottom",
				layer = 20,
				alpha = 1,
				color = OCP_HUD_COLOR,
				visible = true
			})		
			local vbar = ocpo_panel:rect({
				name = "vbar",
				w = STROKE_SHORT,
				h = STROKE_LONG,
				valign = "grow",
				halign = "grow",
				x = (ocpo_w - STROKE_SHORT) / 2,
				y = (ocpo_h - STROKE_LONG) / 2,
				color = OCP_HUD_COLOR,
				visible = true
			})
			local hbar = ocpo_panel:rect({
				name = "hbar",
				w = STROKE_LONG,
				h = STROKE_SHORT,
				x = (ocpo_w - STROKE_LONG) / 2,
				y = (ocpo_h - STROKE_SHORT) / 2,
				valign = "grow",
				halign = "grow",
				color = OCP_HUD_COLOR,
				visible = true
			})
			
			local box = ocpo_panel:panel({
				name = "box",
				w = BOX_W,
				h = BOX_H,
				valign = "center",
				halign = "center",
				x = (ocpo_w - BOX_W) / 2,
				y = (ocpo_h - BOX_H) / 2,
				visible = true
			})
			
			box:rect({
				name = "side_left",
				w = STROKE_SHORT,
				h = BOX_H - (STROKE_SHORT * 2),
				x = 0,
				y = STROKE_SHORT,
				valign = "grow",
				halign = "left",
				color = OCP_HUD_COLOR
			})
			box:rect({
				name = "side_right",
				w = STROKE_SHORT,
				h = BOX_H - (STROKE_SHORT * 2),
				x = BOX_W - STROKE_SHORT,
				y = STROKE_SHORT,
				valign = "grow",
				halign = "right",
				color = OCP_HUD_COLOR
			})
			box:rect({
				name = "side_top",
				w = BOX_W,
				h = STROKE_SHORT,
				x = 0,
				y = 0,
				valign = "top",
				halign = "grow",
				color = OCP_HUD_COLOR
			})
			box:rect({
				name = "side_bottom",
				w = BOX_W,
				h = STROKE_SHORT,
				x = 0,
				y = BOX_H - STROKE_SHORT,
				valign = "bottom",
				halign = "grow",
				color = OCP_HUD_COLOR
			})
			
			OCPOverlay._box = box
			OCPOverlay._hbar = hbar
			OCPOverlay._vbar = vbar
			OCPOverlay._targeting_text = targeting_text
			OCPOverlay._panel = ocpo_panel
		end
		
		local player_unit = managers.player:local_player()
		if alive(player_unit) then
			local mov_ext = player_unit:movement()
			local current_state = mov_ext and mov_ext:current_state()
			
			local viewport_cam = managers.viewport:get_current_camera()
			if not (viewport_cam and current_state) then 
				hud_visible = false
			end
			
			
			-- check that the current weapon allows the overlay
			local inv_ext = player_unit:inventory()
			if inv_ext then
				--Console:SetTracker(string.format("2a %0.1f %",t),1)
				local weapon_unit = inv_ext:equipped_unit()
				if not alive(weapon_unit) then 
					-- weapon not initialized
					-- this can happen when restarting the level
					hud_visible = false
				else
					if tweak_data.weapon[weapon_unit:base():get_name_id()].has_ocp_overlay then
						--Console:SetTracker(string.format("2c %0.1f",t),1)
						-- has overlay, continue
					else
						-- weapon doesn't have overlay, don't update
						hud_visible = false
					end
				end
			else
				-- inventory extension not initalized
				hud_visible = false
			end
			
			-- check music state
			if not OCPOverlay._audio_source then
				local src = XAudio.UnitSource:new(XAudio.PLAYER,XAudio.Buffer:new(PATH_SND_SCAN))
				OCPOverlay._audio_source = src
				src._single_sound = false
				src:set_type(XAudio.Source.SOUND_EFFECT)
				src:set_looping(true)
				src:set_volume(SND_SCAN_VOL)
				src:pause()
			end
			if OCPOverlay._audio_source then
				audio_state = not OCPOverlay._audio_source._closed and OCPOverlay._audio_source:get_state()
			end
			
			-- check potential targets
			if hud_visible then
				local my_foes = player_unit:movement():team().foes
				local viewport_cam_pos = managers.viewport:get_current_camera_position()
				local viewport_cam_rot = managers.viewport:get_current_camera_rotation()
				local viewport_cam_fwd = viewport_cam_rot:y()
				local in_steelsight = current_state:in_steelsight()
				
				local all_targets = managers.enemy:all_enemies()
			
				
				-- update new onscreen targets
				local best_part
				local best_value = math.huge
				local current_data = OCPOverlay._current_data
				local best_key = current_data.u_key or nil
				local current_unit = current_data.u_key and all_targets[current_data.u_key] and all_targets[current_data.u_key].unit
				if not (current_data.t and current_unit and alive(current_unit) and current_unit:character_damage() and not current_unit:character_damage():dead()) then
					-- no current target
					current_unit = nil
					current_data.u_key = nil
					current_data.t = nil
					current_data.part_name = nil
					best_key = nil
					if in_steelsight then
						local world_geometry_mask = managers.slot:get_mask("world_geometry")
						for u_key,u_data in pairs(all_targets) do
							-- don't target allied units or cuffed units
							local unit = u_data.unit
							if alive(unit) and not unit:character_damage():dead() then 
								if my_foes[unit:movement():team().id] and not unit:anim_data().hands_tied then
									if not OCPOverlay._cooldowns[u_key] or OCPOverlay._cooldowns[u_key] < t then
										local found_part
										for _,part_name in ipairs(OCPOverlay._bodies) do 
											found_part = nil
											local part = unit:get_object(Idstring(part_name))
											if part then
												-- only show panel if the object is within view
												mvector3_set(tmp_best_pos,part:oobb():center())
												
												local ray = World:raycast("ray",viewport_cam_pos,tmp_best_pos,"slot_mask",world_geometry_mask)
												--Print(u_key,part_name,ray,ray and ray.position,ray and mvector3_distance(tmp_best_pos,ray.position))
												if not ray then
													found_part = part_name
													break
												elseif mvector3_distance(tmp_best_pos,ray.position) <= MAX_LOS_BREAK_DISTANCE then
													found_part = part_name
													break
												end
											end
										end
										if found_part then
											mvector3_set(tmp_best_pos,unit:get_object(Idstring(found_part)):oobb():center())
										
											local screen_coords = ws:world_to_screen(viewport_cam,tmp_best_pos)
											mvector3_set(h_dir, tmp_best_pos)
											mvector3_subtract(h_dir, viewport_cam_pos)
											mvector3_set(h_dir_normalized, h_dir)
											mvector3_normalize(h_dir_normalized)
											local dot = mvector3_dot(viewport_cam_fwd, h_dir_normalized)
											local t_x,t_y = mvector3_x(screen_coords),mvector3_y(screen_coords)
											
											if	dot < 0
											or	ocpo_panel:outside(t_x,t_y)
											or	mvector3_length(h_dir) > MAX_TARGET_DISTANCE
											--or	(current_data.t == 0 and not in_steelsight)
											--or (not found_part and World:raycast("ray",viewport_cam_pos,tmp_best_pos,"slot_mask",world_geometry_mask)) -- check los against main body
												then
												
												
												-- invalid (out of frame)
											else
												-- acceptable target
												local distance = mvector3_distance(tmp_best_pos,viewport_cam_pos)
												if distance < best_value then
													best_value = distance
													best_key = u_key
													best_part = found_part
												end
											end
										end
									end
								end
							end
						end
						
					end
					if best_key then
						-- reset the anim progress on new target
						current_data.t = 0
						current_data.part_name = best_part
						current_data.u_key = best_key
					end
				else
					-- nothin'
				end
				
				if current_data.u_key then
					current_unit = all_targets[current_data.u_key].unit
					
					local part
					if current_data.part_name then
						part = current_unit:get_object(Idstring(current_data.part_name))
					end
					if part then
						mvector3_set(enemy_pos,part:oobb():center())
					else
						current_data.part_name = nil
						mvector3_set(enemy_pos,current_unit:position())
					end
					
					-- update this panel
					local box = OCPOverlay._box
					--local c_x,c_y = box:center() -- current (centered) coordinates
					
					local screen_coords = ws:world_to_screen(viewport_cam,enemy_pos) -- world_to_screen results
					local t_x,t_y = mvector3_x(screen_coords),mvector3_y(screen_coords) -- target coordinates (destination)
					
					local d_x = t_x - current_data.x -- delta x to destination
					local d_y = t_y - current_data.y -- delta y to destination
					
					--Console:SetTracker(string.format("1 t%0.1f ct%0.1f x%0.1f y%0.1f",t,current_data.t,current_data.x,current_data.y),1)
					if current_data.t then 
						current_data.t = current_data.t + dt
						--Console:SetTracker(string.format("1a %0.1f %0.1f %0.4f",t,current_data.t,dt),3)
						if current_data.t <= ANIM_DURATION then
							-- update box anim, cross position
							local lerp = math.pow((ANIM_DURATION - current_data.t) / ANIM_DURATION,2)
							--Console:SetTracker(string.format("1b %0.3f %0.1f %0.1f",lerp,t,current_data.t),2)
							local rlerp = 1 - lerp
							
							-- linearly interpolated coordinates (subdestination for this frame)
							local i_x = current_data.x + (d_x * (rlerp))
							local i_y = current_data.y + (d_y * (rlerp))
							
							box:set_size(lerp * BOX_W,lerp * BOX_H)
							box:set_center(i_x,i_y)
							OCPOverlay._vbar:set_center_x(i_x)
							OCPOverlay._hbar:set_center_y(i_y)
						else
							-- hud targeting anim complete
							OCPOverlay._cooldowns[current_data.u_key] = t + TARGET_MARK_COOLDOWN
							current_data.t = nil
							current_data.u_key = nil
							current_data.part_name = nil
							
							-- play beep
							local beep_src = XAudio.UnitSource:new(XAudio.PLAYER,XAudio.Buffer:new(PATH_SND_BEEP))
							beep_src:set_type(XAudio.Source.SOUND_EFFECT)
							beep_src:set_volume(SND_BEEP_VOL)
							
							-- do highlight
							local contour_ext = current_unit:contour()
							if contour_ext then
								if not contour_ext:has_id("ocpo_target") then
									-- do not sync contours!
									contour_ext:add("ocpo_target",false,nil,nil,nil)
								end
							end
							OCPOverlay._current_data.x,OCPOverlay._current_data.y = box:center()
						end
					else
						hud_visible = false
					end
					
					if OCPOverlay._current_data.u_key ~= best_key then
						OCPOverlay._current_data.u_key = best_key
						
						-- set lerp start x/y
						local reset_x,reset_y = box:center()
						OCPOverlay._current_data.x,OCPOverlay._current_data.y = reset_x,reset_y
					end
				else
					hud_visible = false
				end
				
			end
		else
			hud_visible = false
		end
		
		if hud_visible ~= OCPOverlay._panel:visible() then
			
			--OCPOverlay._ocpo_visible = hud_visible
			OCPOverlay._panel:set_visible(hud_visible)
			
			if not hud_visible then
				desired_state = XAudio.Source.PAUSED
				local reset_x,reset_y = ocpo_panel:center()
				OCPOverlay._current_data.x,OCPOverlay._current_data.y = reset_x,reset_y
				OCPOverlay._box:set_size(BOX_W,BOX_H)
				OCPOverlay._box:set_center(reset_x,reset_y)
				OCPOverlay._vbar:set_center_x(reset_x)
				OCPOverlay._hbar:set_center_y(reset_y)
			else
				desired_state = XAudio.Source.PLAYING
			end
		end
	end
	
	if audio_state == XAudio.Source.PLAYING then
		if desired_state == XAudio.Source.PAUSED then
			OCPOverlay._audio_source:pause()
		end
	elseif audio_state == XAudio.Source.PAUSED or audio_state == XAudio.Source.INITIAL then
		if desired_state == XAudio.Source.PLAYING then
			OCPOverlay._audio_source:play()
		end
	end
end

BeardLib:AddUpdater("ocphud_update",upd)

local function clear_target_cooldowns(t)
	for k,_ in pairs(OCPOverlay._cooldowns) do 
		OCPOverlay._cooldowns[k] = nil
	end
end

--Hooks:PostHook(PlayerStandard,"_end_action_steelsight","ocpo_end_steelsight",clear_target_cooldowns)

--[[

local function upd2(self,t,dt)
	local BODY_IDS = Idstring("Spine")
	local ws = managers.hud._workspace
	local player_unit = self._unit
	local viewport_cam = managers.viewport:get_current_camera()
	if not viewport_cam then 
		return 
	end
	
	local all_targets = OCPOverlay._targets
	
	-- sort all huds related to ocp overlay in this panel
	-- this also confines drawing inside this bounding box
	-- (as long as we don't break it using any nonzero rotation on elements)
	local ocpo_panel = ws:panel():child("ocpo_panel")
	if not alive(ocpo_panel) then
		ocpo_panel = ws:panel():panel({
			name = "ocpo_panel"
		})
		ocpo_panel:text({
			name = "targeting_text",
			font = tweak_data.hud.medium_font,
			font_size = 36,
			text = "TARGETING",
			x = 156,
			y = -168,
			align = "left",
			vertical = "bottom",
			layer = 20,
			color = OCP_HUD_COLOR,
			alpha = 1,
			visible = false
		})
	end
	
	-- check that the current weapon allows the overlay
	local inv_ext = player_unit:inventory()
	if inv_ext then
		local weapon_unit = inv_ext:equipped_unit()
		if not weapon_unit then 
			-- weapon not initialized; come back later!
			-- this can happen when restarting the level
			return
		end
		if tweak_data.weapon[weapon_unit:base():get_name_id()].has_ocp_overlay then
			-- has overlay, continue
			ocpo_panel:show()
		else
			ocpo_panel:hide()
			-- weapon doesn't have overlay, don't update
			return
		end
	else
		-- inventory extension not initalized; come back later!
		return
	end
	
	local my_foes = player_unit:movement():team().foes
	local viewport_cam_pos = managers.viewport:get_current_camera_position()
	local viewport_cam_rot = managers.viewport:get_current_camera_rotation()
	local viewport_cam_fwd = viewport_cam_rot:y()
	
	local in_steelsight = self:in_steelsight()
	
	-- update onscreen targets
	if in_steelsight then
		for u_key,u_data in pairs(managers.enemy:all_enemies()) do
			local unit = u_data.unit
			-- don't target allied units or cuffed units
			if my_foes[unit:movement():team().id] and not unit:anim_data().hands_tied then
				local str_ukey = tostring(u_key)
				local data = all_targets[u_key]
				
				local part = unit:get_object(BODY_IDS)
				if part then
					mvector3_set(enemy_pos,part:oobb():center())
				else
					mvector3_set(enemy_pos,unit:position())
				end
				
				local panel
				if data then
					panel = data.panel
				else
					-- new/unregistered unit
					panel = ocpo_panel:panel({
						name = str_ukey,
						w = STROKE_LONG,
						h = STROKE_LONG,
						visible = false
					})
					
					local vbar = panel:rect({
						name = "vbar",
						w = STROKE_SHORT,
						h = STROKE_LONG,
						valign = "grow",
						halign = "grow",
						x = (panel:w() - STROKE_SHORT) / 2,
						y = (panel:h() - STROKE_LONG) / 2,
						color = OCP_HUD_COLOR
					})
					
					local hbar = panel:rect({
						name = "hbar",
						w = STROKE_LONG,
						h = STROKE_SHORT,
						x = (panel:w() - STROKE_LONG) / 2,
						y = (panel:h() - STROKE_SHORT) / 2,
						valign = "grow",
						halign = "grow",
						color = OCP_HUD_COLOR
					})
					
					local box = panel:panel({
						name = "box",
						w = BOX_W,
						h = BOX_H,
						valign = "center",
						halign = "center",
						x = (panel:w() - BOX_W) / 2,
						y = (panel:h() - BOX_H) / 2,
						visible = true
					})
					
					box:rect({
						name = "side_left",
						w = STROKE_SHORT,
						h = BOX_H - (STROKE_SHORT * 2),
						x = 0,
						y = STROKE_SHORT,
						valign = "grow",
						halign = "left",
						color = OCP_HUD_COLOR
					})
					box:rect({
						name = "side_right",
						w = STROKE_SHORT,
						h = BOX_H - (STROKE_SHORT * 2),
						x = BOX_W - STROKE_SHORT,
						y = STROKE_SHORT,
						valign = "grow",
						halign = "right",
						color = OCP_HUD_COLOR
					})
					box:rect({
						name = "side_top",
						w = BOX_W,
						h = STROKE_SHORT,
						x = 0,
						y = 0,
						valign = "top",
						halign = "grow",
						color = OCP_HUD_COLOR
					})
					box:rect({
						name = "side_bottom",
						w = BOX_W,
						h = STROKE_SHORT,
						x = 0,
						y = BOX_H - STROKE_SHORT,
						valign = "bottom",
						halign = "grow",
						color = OCP_HUD_COLOR
					})
					
					data = {
						t = 0, -- "animate in" t
						cooldown_t = nil, -- time before re-highlighting is possible
						panel = panel,
						unit = unit,
						box = box,
						hbar = hbar,
						vbar = vbar
					}
					all_targets[u_key] = data
				end
				
			end
		end
	end
	
	-- update existing targets,
	-- remove dead targets
	local done_any = false
	for key,data in pairs(all_targets) do 
		local unit = data.unit
		local panel = data.panel
		if alive(unit) and not unit:character_damage():dead() then 
			
			local part = unit:get_object(BODY_IDS)
			if part then
				mvector3_set(enemy_pos,part:oobb():center())
			else
				mvector3_set(enemy_pos,unit:position())
			end
			
			-- only show panel if the object is within view
			local h_p = ws:world_to_screen(viewport_cam,enemy_pos)
			mvector3_set(h_dir, enemy_pos)
			mvector3_subtract(h_dir, viewport_cam_pos)
			mvector3_set(h_dir_normalized, h_dir)
			mvector3_normalize(h_dir_normalized)
			local dot = mvector3_dot(viewport_cam_fwd, h_dir_normalized)
			local is_visible
			local t_x,t_y = mvector3_x(h_p),mvector3_y(h_p)
				
			local los = nil -- World:raycast("ray",viewport_cam_pos,enemy_pos,"slot_mask",managers.slot:get_mask("world_geometry"),"ignore_unit",{ignore_unit = unit})
			if dot < 0 or ocpo_panel:outside(t_x,t_y) or mvector3_length(h_dir) > MAX_TARGET_DISTANCE or (data.t == 0 and not in_steelsight) or (los and mvector3_distance(enemy_pos,los.position) > MAX_LOS_BREAK_DISTANCE) then 
				is_visible = false
				if data.t then
					-- if hasn't completed targeting yet, reset the anim progress
					data.t = 0
				end
			else
				panel:set_center(t_x,t_y)
				is_visible = true
				
				if los then
					panel:set_alpha(ALPHA_HAS_LOS)
				else
					panel:set_alpha(ALPHA_NO_LOS)
				end
			end
			
			if is_visible ~= panel:visible() then
				panel:set_visible(is_visible)
			end
			
			-- do animate
			if is_visible then
				done_any = true
				if data.t then 
					data.t = data.t + dt
					if data.t <= ANIM_DURATION then
						-- update box anim, cross position
						local p = math.pow((ANIM_DURATION - data.t) / ANIM_DURATION,2)
						data.box:set_size(BOX_W * p,BOX_H * p)
						data.box:set_center(panel:w() / 2,panel:h()/2)
					else
						-- hud targeting anim complete
						
						data.t = nil
						data.cooldown_t = TARGET_MARK_COOLDOWN
						data.box:hide()
						data.vbar:hide()
						data.hbar:hide()
						
						-- do highlight
						local contour_ext = unit:contour()
						if contour_ext then
							if not contour_ext:has_id("ocpo_target") then
								-- do not enable sync!
								contour_ext:add("ocpo_target",false,nil,nil,nil)
							end
						end
					end
				elseif data.cooldown_t then
					data.cooldown_t = data.cooldown_t - dt
					if data.cooldown_t <= 0 then
						-- cooldown end; enemy can be highlighted/targeted again
						data.cooldown_t = nil
						data.box:set_size(BOX_W,BOX_H)
						data.box:set_center(panel:w() / 2,panel:h()/2)
						data.vbar:show()
						data.hbar:show()
						data.box:show()
						data.t = 0
					end
				end
			end
		else
			if alive(panel) then
				panel:parent():remove(panel)
			end
			-- just in case, manually remove references to userdata
			data.panel = nil
			data.box = nil
			data.vbar = nil
			data.hbar = nil
			data.unit = nil
			all_targets[key] = nil
		end
		if in_steelsight then
			ocpo_panel:child("targeting_text"):show()
		else
			ocpo_panel:child("targeting_text"):hide()
		end
		
		if done_any then
			-- OCPOverlay._audio_source._looping = true
		end
	end
	
	
end

--]]