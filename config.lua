Config = {}

Config.UseQB = false -- i could not find out why the car keys wouldnt be given to the player so he could get in, so if you use qb, you get warped into the car, sorry. (if you know a fix please let me know)
 
Config.AllowSkip = true -- if you want the player to be able to skip the drive to the next point

Config.PedModel = `u_m_m_jewelsec_01`

Config.CarModel = `oracle`

Config.StartPedCoords = vector4(-1039.32, -2729.92, 19.21, 297.19) -- the ped you target coords

Config.CarSpawn = vector4(-1093.5, -2674.22, 20.03, 202.36) -- this is where the car spawns for the cinematic camera

Config.CarDriveTo = vector3(-1029.08, -2732.01, 20.11) -- where the car drives to pick the player up

Config.TourPoints = {
    {
        coords = vector3(32.46, -1357.47, 29.25), -- coords the ped drives to
        title = "24/7",
        message = 'You can go to one of the 24/7s around city to get your basic food & drink needs, and who knows maybe you can take some cash from those registers.',
    },
    {
        coords = vector3(-74.14, -1098.59, 26.18),
        title = "Car Dealership",
        message = 'Come here to pick up your new sweet ride.',
    },
    {
        coords = vector3(152.14, -1028.91, 29.24),
        title = "Fleeca Bank",
        message = 'You can go to one of the many fleeca banks around city to withdraw/deposit your money, i wonder how much money is in the vault back there.',
    },
    {
        coords = vector3(293.12, -584.58, 43.19),
        title = "Pillbox Hospital",
        message = 'You can come here to cure any injuries that may occur.',
    }
}

Config.EndCoords = vector3(-1037.86, -2737.73, 20.17) -- where the player is teleported after the tour