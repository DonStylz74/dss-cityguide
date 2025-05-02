local tourPoints = Config.TourPoints
local endpoint = Config.EndCoords

lib.locale()

CreateThread(function()
    local startPedModel = Config.PedModel
    lib.requestModel(startPedModel)
    while not HasModelLoaded(startPedModel) do Wait(0) end

    local ped = CreatePed(0, startPedModel, Config.StartPedCoords, false, true)
    FreezeEntityPosition(ped, false)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)

    -- Start the animation based on the config file
    if Config.AnimationScenario then
        TaskStartScenarioInPlace(ped, Config.AnimationScenario, 0, true)
    end

    exports.ox_target:addLocalEntity(ped, {
        {
            icon = 'fa-solid fa-map-location-dot',
            label = 'Free 25min City Tour',
			distance = 5.0,
            onSelect = function()
                -- Play the ped animation
                TaskStartScenarioInPlace(ped, Config.AnimationScenariotxt, 0, true)
                --lib.notify({ title = 'Tour Guide', description = 'Give me a sec, let me call my Old Man', type = 'success', duration=4000 })
				Config.Notification(locale("ped_phonecall"), "info", false)
                Citizen.Wait(6500)
                -- Play the ped animation
                TaskStartScenarioInPlace(ped, Config.AnimationScenario, 0, true)
                -- Trigger the server event
                TriggerServerEvent('tropic-cityguide:startTour')
            end
        }
    })
end)

RegisterNetEvent('tropic-cityguide:beginTourClient', function(bucket)
    local skipKey = 191
    local skipPressed = false
    local ped = PlayerPedId()
    local spawnPoint = Config.CarSpawn
    local driveto = Config.CarDriveTo
    local vehicleModel = Config.CarModel
    local driverModel = Config.PedModelDriver
    local roofState = Config.RoofState -- Get roof state from config ("up" or "down")
    local numberPlate = Config.NumberPlateText -- Get number plate text from config

    lib.requestModel(vehicleModel)
    lib.requestModel(driverModel)

    while not HasModelLoaded(vehicleModel) or not HasModelLoaded(driverModel) do
        Wait(0)
    end

    DoScreenFadeOut(3000)
    while not IsScreenFadedOut() do
        Wait(10)
    end

	local vehicle = CreateVehicle(vehicleModel, spawnPoint.x, spawnPoint.y, spawnPoint.z, spawnPoint.w, true, false)

    local cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
    AttachCamToEntity(cam, vehicle, -6.0, 0.0, 2.5, true)
    PointCamAtEntity(cam, vehicle, 0.0, 0.0, 0.0, true)
    SetCamActive(cam, true)
    RenderScriptCams(true, true, 500, true, true)

	-- Assign number plate text
	SetVehicleNumberPlateText(vehicle, numberPlate)

    local driver = CreatePedInsideVehicle(vehicle, 4, driverModel, -1, true, false)
	Wait(500)

    TaskVehicleDriveToCoordLongrange(driver, vehicle, driveto, 10.0, 786603, 5.0)

    DoScreenFadeIn(3500)

    while #(GetEntityCoords(vehicle) - driveto) > 8.0 do
        Wait(500)
    end

    TaskVehicleTempAction(driver, vehicle, 27, 2000)
    ClearPedTasks(driver)

    TaskGoToEntity(ped, vehicle, -1, 3.0, 1.0, 1073741824, 0)
    while #(GetEntityCoords(ped) - GetEntityCoords(vehicle)) > 3.5 do Wait(0) end

    if Config.UseQB then
        TaskWarpPedIntoVehicle(ped, vehicle, 2)
    else
        TaskVehicleTempAction(driver, vehicle, 27, 2000)
        ClearPedTasks(driver)
    
        TaskGoToEntity(ped, vehicle, -1, 3.0, 1.0, 1073741824, 0)
        while #(GetEntityCoords(ped) - GetEntityCoords(vehicle)) > 3.5 do Wait(0) end

	-- Adjust the convertible roof state
	if roofState == "down" then
		LowerConvertibleRoof(vehicle) -- Lower the roof
		--lib.notify({ title = 'Tour Guide', description = 'Let me drop the roof down.', type = 'info', duration=3000 })
		Config.Notification(locale("driver_droproof"), "info", false)
	elseif roofState == "up" then
			RaiseConvertibleRoof(vehicle) -- Raise the roof
	end

	Wait(2000)
		Config.Notification(locale("driver_entercar"), "success", false)
		--lib.notify({ title = 'Tour Guide', description = 'Jump In! Let me show you around the City of Los Santos', type = 'success', duration=4000 })

	Wait(1500)
    TaskEnterVehicle(ped, vehicle, -1, 0, 1.0, 1, 0)
    while not IsPedInVehicle(ped, vehicle, false) do Wait(500) end

    RenderScriptCams(false, true, 3000, true, true)
    DestroyCam(cam, false)

    Wait(1000)
		Config.Notification(locale("driver_changeradio"), "info", false)
		--lib.notify({ title = 'Tour Guide', description = 'Change the radio station to what ever you like.', type = 'info', duration=4000 })

    Wait(5000)
		Config.Notification(locale("passanger_optout"), "info", false)
		--lib.notify({ title = 'Tour Guide', description = 'Feel free to jump out at any of the destinations we stop at, otherwise I can drop you at the Job Centre when were done.', type = 'success', duration=8000 })
    end


    CreateThread(function()
        for i, point in ipairs(tourPoints) do
            if not IsPedInVehicle(ped, vehicle, false) then
                lib.notify({ title = 'Tour Cancelled', description = 'You left the vehicle.', type = 'error' })
				SetVehicleDoorsLockedForAllPlayers(vehicle, true)  --  lock doors if ped not in vehicle
				TaskVehicleDriveToCoordLongrange(driver, vehicle, endpoint.x, endpoint.y, endpoint.z, 25.0, 1074528293, 20.0)
				--lib.notify({ title = 'Tour Complete', description = 'Hope you enjoyed!', type = 'success' })
				Config.Notification(locale("passanger_exit"), "green", false)
				Wait(40000)

                DeleteEntity(vehicle)
                DeleteEntity(driver)
                TriggerServerEvent('tropic-cityguide:endTour')
                return
            end

            ClearPedTasks(driver)
            SetDriveTaskDrivingStyle(driver, 1074528293)
            TaskVehicleDriveToCoordLongrange(driver, vehicle, point.coords.x, point.coords.y, point.coords.z, 25.0, 1074528293, 10.0)
            skipPressed = false

            CreateThread(function()
                while not skipPressed and #(GetEntityCoords(vehicle) - point.coords) > 15.0 do
                    if Config.AllowSkip and IsControlJustPressed(0, skipKey) then
                        skipPressed = true
                        DoScreenFadeOut(500)
                        while not IsScreenFadedOut() do Wait(10) end
                        SetEntityCoords(vehicle, point.coords.x, point.coords.y, point.coords.z + 1.0)
                        SetEntityHeading(vehicle, point.heading)
                        Wait(500)
                        DoScreenFadeIn(1000)
                    end
                    Wait(0)
                end
            end)

            while #(GetEntityCoords(vehicle) - point.coords) > 15.0 and not skipPressed do
                if not IsPedInVehicle(ped, vehicle, false) then
                    lib.notify({ title = 'Tour Cancelled', description = 'You left the vehicle.', type = 'error' })
					SetVehicleDoorsLockedForAllPlayers(vehicle, true)  --  lock doors if ped not in vehicle
					TaskVehicleDriveToCoordLongrange(driver, vehicle, endpoint.x, endpoint.y, endpoint.z, 25.0, 1074528293, 20.0)
					--lib.notify({ title = 'Tour Complete', description = 'Hope you enjoyed!', type = 'success' })
					Config.Notification(locale("passanger_exit"), "green", false)
					Wait(40000)
					
					DeleteEntity(vehicle)
					DeleteEntity(driver)
                    TriggerServerEvent('tropic-cityguide:endTour')
                    return
                end
                Wait(500)
            end

            TaskVehicleTempAction(driver, vehicle, 27, 2000)
            lib.alertDialog({
                header = point.title,
                content = point.message,
                centered = true,
                cancel = false
            })
            Wait(3000)
        end

	--  options on how to end tour
	if Config.ReturnToStart then
		-- Code for spawning back at the starting point
		DoScreenFadeOut(500)
		while not IsScreenFadedOut() do Wait(10) end

		DeleteEntity(vehicle)
		DeleteEntity(driver)

		SetEntityCoords(ped, Config.EndCoords)

		Wait(500)
		DoScreenFadeIn(1000)
	else
		-- Code for exiting the vehicle
		TaskLeaveVehicle(ped, vehicle, 0)
		Wait(3000)

		TaskVehicleDriveToCoordLongrange(driver, vehicle, endpoint.x, endpoint.y, endpoint.z, 25.0, 1074528293, 20.0)
		Wait(40000)

		DeleteEntity(vehicle)
		DeleteEntity(driver)
	end

        TriggerServerEvent('tropic-cityguide:endTour')
        --lib.notify({ title = 'Tour Complete', description = 'Hope you enjoyed!', type = 'success' })
        Config.Notification(locale("tour_complete"), "green", false)
    end)
end)


