Config = {}

Config.UseQB = false -- i could not find out why the car keys wouldnt be given to the player so he could get in, so if you use qb, you get warped into the car, sorry. (if you know a fix please let me know)
 
Config.AllowSkip = true -- if you want the player to be able to skip the drive to the next point

Config.PedModel = `cs_jimmydisanto`   --  S_M_M_LSMetro_01  -  u_m_m_jewelsec_01 - ig_g
Config.AnimationScenario = 'WORLD_HUMAN_SMOKING' -- Replace with your desired animation scenario
Config.AnimationScenariotxt = 'WORLD_HUMAN_STAND_MOBILE' -- Replace with your desired animation scenario

Config.CarModel = `comet7`   ---  comet7 - windsor2 - buccaneer2 - vigero3 - dominator9 - rt3000 - tornado5 - tornado2 - surano - rapidgt2 - ninef2 - zion2 - felon2 - convertable vehicles
Config.RoofState = "down" -- Set roof "up" or "down" used for convertible vehicle's
Config.NumberPlateText = "de santa" -- Set your desired number plate text
Config.PedModelDriver = `player_zero`   --  S_M_M_LSMetro_01  -  u_m_m_jewelsec_01

Config.ReturnToStart = false -- Toggle end tour spawn option ('true' to spawn back to starting ped, 'false' to exit the vehicle)

Config.StartPedCoords = vector4(-1027.3092, -2736.9353, 12.8517, 39.9030) -- the ped you target coords  -1043.4436, -2737.9719, 20.1693, 204.1283

Config.CarSpawn = vector4(-1090.7405, -2683.4019, 13.4173, 268.6733) -- this is where the car spawns for the cinematic camera

Config.CarDriveTo = vector3(-1033.49, -2722.59, 13.70) -- where the car drives to pick the player up

Config.TourPoints = {
		{
			coords = vector3( -180.71, -2157.74, 16.70 ), -- coords the ped drives to
			title = "Go-Kart Racing",
			message = 'If you love the smell of fuel & loud noise, then this is your place. race karts around a massive split indoor-outdoor curcuit.',
		},
		{
			coords = vector3( 281.50, -1262.61, 29.22 ), -- coords the ped drives to
			title = "Fuel Stations",
			message = 'You can go to one of the many Gas Stations around the city to get fuel for your vehicles as well as your basic food & drink needs, and who knows maybe you can take some cash from those registers or safes.',
		},
		{
			coords = vector3( 254.50, -1157.25, 29.21 ), -- coords the ped drives to 254.5099, -1157.2513, 29.2191, 277.0713
			title = "Motorcycle Dealerships",
			message = 'You can go to any of the motorcycle dealerships around the city to get to get yourself a crazy pocket rocket.',
		},
		{
			coords = vector3( -53.58, -1109.88, 26.43 ), -- coords the ped drives to
			title = "Vehicle Dealerships",
			message = 'You can go to any of the vehicle dealerships around the city to get to get yourself a new sweet ride.',
		},
		{
			coords = vector3( 179.76, -1804.91, 29.16 ), -- coords the ped drives to
			title = "LS Locksmith",
			message = 'Lost your keys? head down to the locksmiths and they will sort you out with a set of new keys.',
		},
		{
			coords = vector3( 96.27, -1400.91, 29.20 ), -- coords the ped drives to
			title = "Clothing Stores",
			message = 'You can go to one of the Clothing Stores around the city to get your fashion fix, Shirts, Shorts, Hats. You name it they have it!.',
		},
		{
			coords = vector3( -794.01, -1325.50, 5.00 ), -- coords the ped drives to
			title = "Watercraft Dealerships",
			message = 'You can go to any of the watercraft dealerships around the city to get to get yourself an awesome watercraft.',
		},
		{
			coords = vector3( -1079.33, -1282.77, 5.70 ), -- coords the ped drives to
			title = "Los Santos DMV",
			message = 'So want to drive a vehicle?, Make sure you stop here to pick up an appropriate license.',
		},
		{
			coords = vector3( -1158.34, -1415.34, 4.79 ), -- coords the ped drives to
			title = "Tattoo Stores",
			message = 'You can go to one of the many Tattoo Stores around the city to get yourself a fresh looking tattoo.',
		},
		{
			coords = vector3( -1236.44, -898.96, 12.00 ), -- coords the ped drives to
			title = "Rob's Liquor Stores",
			message = 'You can go to one of the many Liquor Stores around the city pick yourself up some great liquor or even just a ecola!.',
		},
		{
			coords = vector3( -827.12, -199.49, 37.46 ), -- coords the ped drives to
			title = "Hair Dressers",
			message = 'You can go to one of the many Hair Dressers around the city get yourself a new fresh hairstyle!.',
		},
		{
			coords = vector3( -373.57, -128.12, 38.68 ), -- coords the ped drives to
			title = "Los Santos Custom   s",
			message = 'You can go to one of the many Los Santos Customs around the city to get your vehciles Repair, Upgraded and Customized at a great price!.',
		},
		{
			coords = vector3( 234.25, -40.35, 69.70 ), -- coords the ped drives to
			title = "Ammunation Gunstores",
			message = 'You can go to one of the many Ammunation Stores the around city to get to get yourself some personal protection. Knives, Guns, Armour. You name it they have it!.',
		},
		{
			coords = vector3( 373.93, 314.23, 102.85 ), -- coords the ped drives to
			title = "24/7 Stores",
			message = 'You can go to one of the many 24/7s around city to get your basic food & drink needs, and who knows maybe you can take some cash from those registers or safes.',
		},
		{
			coords = vector3( -481.07, 271.93, 83.22 ), -- coords the ped drives to
			title = "LS Pawnstores",
			message = 'You can go to one of the many pawnshops around city if you need to sell something or even pick up a rare find. dont expect a hi dollar on your sold items from these sharks!.',
		},
		{
			coords = vector3( 317.18, -266.93, 53.25 ), -- coords the ped drives to
			title = "Fleeca Banks",
			message = 'You can go to one of the many fleeca banks around city to withdraw/deposit your money, i wonder how much money is in the vault back there.',
		},
		{
			coords = vector3( 293.12, -584.58, 43.19 ),
			title = "Emergency Hospital️s",
			message = 'You can come here to cure any injuries that may occur. even have plastic surgery to completly change the way you look!',
		},
		{
			coords = vector3( -182.65, -1134.29, 23.06 ), -- coords the ped drives to
			title = "Impound Yards",
			message = 'Come to the Impound Yard to collect your car if its been impounded or its missing from your garage, you must have been up to no good!, if your car is here!.',
		},
		{
			coords = vector3( 215.26, -937.01, 24.14 ), -- coords the ped drives to
			title = "Public Parking Stations",
			message = 'When ever you need to park your ride, you can just drop it off at any parking station around the city, dont worry your vehicle will be there when you return.',
		},
		{
			coords = vector3( 402.52, -980.30, 29.39 ), -- coords the ped drives to
			title = "Police Departments",
			message = 'When ever you in trouble, you can call or visit the LSPD, But i wouldnt expect too much!.',
		},
		{
			coords = vector3( 919.08, -190.48, 73.51 ), -- coords the ped drives to
			title = "LS Cab&CO",
			message = 'When ever you need a ride or your stuck with no ride whilst out partying with friends. Call Cab&CO, they will come to the rescue. for a not so small fee of course.',
		},
		{
			coords = vector3( 878.34, -11.71, 78.21 ),
			title = "Diamond Casino",
			message = 'When you are all out of luck, Come to the Diamond Casino, Your luck might just change! but most likley not!.',
		},
		{
			coords = vector3( 528.86, -183.72, 54.06 ),
			title = "Custom Workshops & Dealerships",
			message = 'Come to the Custom Dealership & Workshop, not only can you buy a new car but get it kitted out at the same time, the one stop custom shop!',
		},
		{
			coords = vector3( -228.77, -888.67, 29.93 ), -- coords the ped drives to
			title = "LS Job Centre",
			message = 'Head into LS Job Centre and grad yourself an ID Card!, Maybe even find a new Job?, check back in at the job centre from time to time to collect your paychecks!',
		}
}

Config.EndCoords = vector3( -1033.98, -2728.44, 13.75 ) -- where the player is teleported after the tour


---@param message string
---@param type string
---@param is_server boolean
---@decription Send notification to the player
Config.Notification = function(message, type, is_server, src)
    local Core, Framework = GetCore()
    if is_server then
        if Framework == "esx" then
            TriggerClientEvent("esx:showNotification", src, message)
        else
            TriggerClientEvent('QBCore:Notify', src, message, type, 5000)
        end
    else
        if Framework == "esx" then
            -- TriggerEvent("esx:showNotification", message)
            Core.ShowNotification(message, type, 5000)
        else
            Core.Functions.Notify(message, type, 5000)
        end
    end
end