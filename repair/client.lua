RegisterCommand('repair', function()
    
    local ped = PlayerPedId()
	local vehicle = GetVehiclePedIsIn(ped, false)
	if vehicle ~= 0 and GetPedInVehicleSeat(vehicle, -1) == ped then
		SetVehicleFixed(vehicle)
		SetVehicleDeformationFixed(vehicle) -- Unsure if needed after SetVehicleFixed
		SetVehicleUndriveable(vehicle, false)
	end

end)