-- Target texture, Target zoom value and Target attachment ID  (Note. The lower value ZoomValue the more zoom power you get. Try value around 0.5 - 0.001 or more)
local TargetTexture = Idstring("guis/scopeoverlay/iuhPistolSniperScopeOverlay")
local ZoomValue = 1
-- local ZoomValue = 0.08
local TargetScopeID = "wpn_fps_upg_o_iuhPistolSniperScope"

--local old_get_zoom_fov = PlayerStandard.get_zoom_fov

-- Texture-related variables
local ScopePanel = nil                 
local ScopeBitmap = nil                
local TopBlack = nil
local RightBlack = nil
local BottomBlack = nil
local LeftBlack = nil

-- Function to adjust size and position of the texture and black bars
local function update_texture_and_black_bars()
    if ScopeBitmap and ScopePanel then
        local panel_width = ScopePanel:w()
        local panel_height = ScopePanel:h()

        -- Get the original dimensions of the texture
        local texture_width = ScopeBitmap:texture_width()
        local texture_height = ScopeBitmap:texture_height()

        -- Calculate aspect ratios
        local panel_aspect_ratio = panel_width / panel_height
        local texture_aspect_ratio = texture_width / texture_height

        -- Adjust the size of the texture
        if panel_aspect_ratio > texture_aspect_ratio then
            texture_width = panel_height * texture_aspect_ratio
            texture_height = panel_height
        else
            texture_width = panel_width
            texture_height = panel_width / texture_aspect_ratio
        end

        -- Center the texture
        ScopeBitmap:set_size(texture_width, texture_height)
        ScopeBitmap:set_center(panel_width / 2, panel_height / 2)

        -- Calculate black bar sizes
        local vertical_bar_height = (panel_height - texture_height) / 2
        local horizontal_bar_width = (panel_width - texture_width) / 2

        -- Update black bars
        TopBlack:set_size(panel_width, vertical_bar_height)
        TopBlack:set_lefttop(0, 0)

        RightBlack:set_size(horizontal_bar_width, panel_height)
        RightBlack:set_rightbottom(panel_width, panel_height)

        BottomBlack:set_size(panel_width, vertical_bar_height)
        BottomBlack:set_rightbottom(panel_width, panel_height)

        LeftBlack:set_size(horizontal_bar_width, panel_height)
        LeftBlack:set_lefttop(0, 0)
    end
end

-- Helper function to initialize panel, texture, and black bars
local function initialize_scope_overlay()
    if not ScopePanel and managers.hud then
        -- Create or retrieve the workspace and panel
        local workspace = managers.hud:workspace("workspace")
        ScopePanel = workspace:panel():child("scope_overlay_panel") or workspace:panel():panel({
            name = "scope_overlay_panel",
            layer = -10,
        })

        -- Create the bitmap within the panel
        ScopeBitmap = ScopePanel:bitmap({
            texture = TargetTexture,
            color = Color.white:with_alpha(1),
            alpha = 0,  -- Initially hidden
            visible = false,
        })

        -- Create black bars within the panel
        TopBlack = ScopePanel:rect({
            name = "top_black",
            visible = false,
            valign = "center",
            layer = 0,
            color = Color.black,
        })

        RightBlack = ScopePanel:rect({
            name = "right_black",
            visible = false,
            valign = "center",
            layer = 0,
            color = Color.black,
        })

        BottomBlack = ScopePanel:rect({
            name = "bottom_black",
            visible = false,
            valign = "center",
            layer = 0,
            color = Color.black,
        })

        LeftBlack = ScopePanel:rect({
            name = "left_black",
            visible = false,
            valign = "center",
            layer = 0,
            color = Color.black,
        })

        -- Adjust size and position on initialization
        update_texture_and_black_bars()
    end
end

-- Helper function to show the texture and black bars
local function show_scope_overlay()
    if ScopeBitmap and TopBlack then
        ScopeBitmap:set_visible(true)
        ScopeBitmap:set_alpha(1)  -- Fully visible
        TopBlack:set_visible(true)
        RightBlack:set_visible(true)
        BottomBlack:set_visible(true)
        LeftBlack:set_visible(true)
    end
end

-- Helper function to hide the texture and black bars
local function hide_scope_overlay()
    if ScopeBitmap and TopBlack then
        ScopeBitmap:set_visible(false)
        ScopeBitmap:set_alpha(0)  -- Fully hidden
        TopBlack:set_visible(false)
        RightBlack:set_visible(false)
        BottomBlack:set_visible(false)
        LeftBlack:set_visible(false)
    end
end

function PlayerStandard:get_zoom_fov(...)
    -- Initialize panel, texture, and black bars if not already initialized
    initialize_scope_overlay()

    -- Retrieve the original zoom FOV
	local old_get_zoom_fov = PlayerStandard.get_zoom_fov
    local get_zoom_fov = old_get_zoom_fov(self, ...)

    -- Validate equipped weapon and scope
    local weap_base = self._equipped_unit and self._equipped_unit:base()
    if not weap_base or not weap_base._parts then
        hide_scope_overlay()  -- Hide overlay when conditions are not met
        return get_zoom_fov
    end

    -- Check if the specific scope is equipped
    local has_scope = weap_base._parts[TargetScopeID]
    if not has_scope then
        hide_scope_overlay()  -- Hide overlay when the scope is not equipped
        return get_zoom_fov
    end

    -- Adjust FOV only when in steelsight mode
    if self._state_data.in_steelsight and not weap_base:is_second_sight_on() then
        local fov = weap_base:zoom()
        local fov_multiplier = ZoomValue

        -- Show overlay and update its size and position
        show_scope_overlay()
        update_texture_and_black_bars()

        -- Return adjusted FOV
        return fov * fov_multiplier
    end

    -- Hide overlay when not in steelsight
    hide_scope_overlay()

    -- Default return if not in steelsight
    return get_zoom_fov
end

-- Callback for resolution change
Hooks:PostHook(managers.viewport, "resolution_changed", "update_scope_overlay_resolution", function()
    if ScopeBitmap then
        update_texture_and_black_bars()
    end
end)
