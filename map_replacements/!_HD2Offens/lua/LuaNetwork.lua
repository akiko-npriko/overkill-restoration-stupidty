Hooks:Add("NetworkReceivedData", "NetworkReceivedData_MetroLineHD2Offensive", function(sender, message, data)
	local table_get_from_data = {}

	if data then
		table_get_from_data = json.decode(data)
	end
	
	if message == "sync_hd2offensive_red_trail" then
		table_get_from_data.position = Vector3(table_get_from_data.x, table_get_from_data.y, table_get_from_data.z)

		HD2OffensiveRedTrail:spawn(table_get_from_data)
	end
end)