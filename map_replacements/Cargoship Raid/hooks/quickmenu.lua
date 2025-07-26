Hooks:PostHook(MenuMainState, "at_enter", "XanaxFolderCheck", function(self, ...)
--Hook made with help of Mercu and The_Punisher from ModWorkShop discord server.
if not SystemInfo:platform() == Idstring("win32") then
	return
end

local WrongFolder = managers.localization:text("wrong_folder")
local WrongFolderDesc = managers.localization:text("wrong_folder_desc")
local WrongFolderDesc2 = managers.localization:text("wrong_folder_desc2")
local ReloadGame = managers.localization:text("ReloadGame")
	if FileIO:Exists("./mods/Cargoship Raid") then
		if FileIO:CanWriteTo("./Maps") then
			local menuY = QuickMenu:new( WrongFolder, WrongFolderDesc, {[1] = {text = ReloadGame, callback = function () setup:load_start_menu() end, is_cancel_button = false}} )
			FileIO:CopyDirTo("./mods/Cargoship Raid", "./Maps/Cargoship Raid")
			FileIO:Delete("./mods/Cargoship Raid")
			menuY:Show()
		else
			local menuN = QuickMenu:new( WrongFolder, WrongFolderDesc2, {[1] = {text = ReloadGame, callback = function () setup:load_start_menu() end, is_cancel_button = false}} )
			menuN:Show()
		end
	end
end)