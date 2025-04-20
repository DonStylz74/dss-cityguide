Config = {}

Config.UseQB = false -- i could not find out why the car keys wouldnt be given to the player so he could get in, so if you use qb, you get warped into the car, sorry. (if you know a fix please let me know)
 
Config.AllowSkip = true -- if you want the player to be able to skip the drive to the next point

Config.PedModel = `S_M_M_LSMetro_01`

Config.CarModel = `tourbus`   ---  windsor2 - buccaneer2

Config.RoofState = "up" -- Set to "up" or "down" to choose the roof state - set to 'up' for hard top roofs & 'down' for convertible's
Config.NumberPlateText = "CITYTOUR" -- Set your desired number plate text
Config.VehicleRoofDownExtra = 1 -- DONT TOUCH  -  Replace with the extra ID for roof down
Config.VehicleRoofUpExtra = 2 -- DONT TOUCHReplace with the extra ID for roof up

Config.StartPedCoords = vector4(-1031.78, -2736.54, 19.18, 103.91) -- the ped you target coords

Config.CarSpawn = vector4(-1093.5, -2674.22, 20.03, 202.36) -- this is where the car spawns for the cinematic camera

Config.CarDriveTo = vector3(-1029.08, -2732.01, 20.11) -- where the car drives to pick the player up

Config.TourPoints = {
    {
        coords = vector3(-66.5466, -1763.5717, 29.2404), -- coords the ped drives to
        title = "Gas Stations",
        message = 'You can go to one of the many Gas Stations around the city to get fuel for your vehicles as well as your basic food & drink needs, and who knows maybe you can take some cash from those registers or safes.',
    },
    {
        coords = vector3(96.3946, -1403.6470, 29.1773), -- coords the ped drives to
        title = "Clothing Stores",
        message = 'You can go to one of the Clothing Stores around the city to get your fashion fix, Shirts, Shorts, Hats. You name it they have it!.',
    },
    {
        coords = vector3(20.6892, -1126.6708, 28.9690), -- coords the ped drives to
        title = "Ammunation Gunstore",
        message = 'You can go to one of the many Ammunation Stores the around city to get to get yourself some personal protection. Knives, Guns, Armour. You name it they have it!.',
    },
    {
        coords = vector3(-54.1207, -1110.4762, 26.4374), -- coords the ped drives to
        title = "Vehicle Dealership",
        message = 'You can go to one of the many Vehicle Dealerships around the city to get to get yourself a new sweet ride.',
    },
    {
        coords = vector3(-210.8521, -924.2083, 29.2541), -- coords the ped drives to
        title = "LS Job Centre",
        message = 'Need a Job, Head to LS Job Centre and find your future career, and dont forgot to pick up you paycheck whilst your here.',
    },
    {
        coords = vector3(-1079.3391, -1282.7717, 5.7009), -- coords the ped drives to
        title = "Los Santos DMV",
        message = 'So want to drive a vehicle?, Make sure you stop here to pick up an appropriate license.',
    },
    {
        coords = vector3(-1158.3462, -1415.3473, 4.7963), -- coords the ped drives to
        title = "Tattoo Stores",
        message = 'You can go to one of the many Tattoo Stores around the city to get yourself a fresh looking tattoo.',
    },
    {
        coords = vector3(-1232.7570, -898.1537, 11.5089), -- coords the ped drives to
        title = "Liquor Stores",
        message = 'You can go to one of the many Liquor Stores around the city pick yourself up some great liquor or even just a ecola!.',
    },
    {
        coords = vector3(-827.6496, -198.4962, 37.4726), -- coords the ped drives to
        title = "Hair Dressers",
        message = 'You can go to one of the many Hair Dressers around the city get yourself a new fresh hairstyle!.',
    },
    {
        coords = vector3(-373.5792, -128.1203, 38.6806), -- coords the ped drives to
        title = "Los Santos Customs",
        message = 'You can go to one of the many Los Santos Customs around the city to get your vehciles Repair, Upgraded and Customized at a great price!.',
    },
    {
        coords = vector3(373.9365, 314.2357, 102.8586), -- coords the ped drives to
        title = "24/7 Stores",
        message = 'You can go to one of the 24/7s around city to get your basic food & drink needs, and who knows maybe you can take some cash from those registers or safes.',
    },
    {
        coords = vector3(317.1888, -266.9305, 53.2589), -- coords the ped drives to
        title = "Fleeca Bank",
        message = 'You can go to one of the many fleeca banks around city to withdraw/deposit your money, i wonder how much money is in the vault back there.',
    },
    {
        coords = vector3(293.12, -584.58, 43.19),
        title = "Pillbox Hospital️",
        message = 'You can come here to cure any injuries that may occur. even have plastic surgery tand completly change the way you look!',
    },
    {
        coords = vector3(878.3406, -11.7119, 78.2168),
        title = "Diamond Casino",
        message = 'When you are all out of luck, Come to the Diamond Casino, Your luck might just change!.',
    }
}

Config.EndCoords = vector3(-1037.86, -2737.73, 20.17) -- where the player is teleported after the tour
