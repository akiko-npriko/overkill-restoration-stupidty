--Hooks made by MiamiCenter <3 Wanna learn how to make custom maps? Join Payday 2 Creators discord! -> https://discordapp.com/invite/GKRZAhF
Hooks:PreHook(TradeManager, "clbk_begin_hostage_trade_dialog", "send_rust_unique_line", function(i, ...)
  if i ~= 1 then
    local ssuffix = managers.criminals:character_static_data_by_name(respawn_criminal.id).ssuffix
    if ssuffix == "w" then
      self:sync_hostage_trade_dialog(8)
    end
  end
end)

Hooks:PostHook(TradeManager, "sync_hostage_trade_dialog", "receive_rust_unique_line", function(i, ...)
	local display_string == "Trying to get voice line for i = " .. i
	managers.hud:show_hint({
		text=on and display_string or display_string,
		time=0.5
		})
  if i == 8 then
    managers.dialog:queue_narrator_dialog("h02w", {})
  end
end)