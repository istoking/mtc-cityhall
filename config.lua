Config = {}

Config.RenewedPhone = false --> Set to true if you are using Renewed scripts their qb-phone
Config.idcard = "id_card" -- bl_idcard, qbx_idcard, um_idcard

-- Ped spawner
Config.ped = {
    enabled = true,
    model = "a_m_m_business_01",
    coords = vector4(-552.95, -192.04, 38.22, 209.78),
    label = "Open Cityhall"
}

Config.blip = {
    enabled = true,
    Name = "Cityhall",
    SpriteId = 487,
    Color = 2,
    Scale = 1.0,
    ShortRange = true,
    Alpha = 255,
    Coords = vector3(-552.95, -192.04, 38.22)
}

-- Jobs for hire
Config.jobs = {
    {
        job = "bus",
        label = "Bus Driver",
    },
    {
        job = "garbage",
        label = "Garbage Collector",
    },
    {
        job = "vineyard",
        label = "Vineyard Worker",
    },
    {
        job = "hotdog",
        label = "Hotdog Salesman",
    },
    {
        job = "taxi",
        label = "Taxi",
    },
    {
        job = "tow",
        label = "Tow Truck",
    },
    {
        job = "reporter",
        label = "News Reporter",
    },
}

-- Items for purchase
Config.items = {{
    item = "id_card",
    meta = 'id',
    label = "ID Card",
    price = 100,
    id_card = true
}, {
    item = "driver_license",
    label = "Driver License",
    meta = 'driver',
    price = 100,
    id_card = true,
}, --{
    --item = "weaponlicense",
    --label = "Weapon License",
    --meta = 'weapon',
    --price = 100,
    --id_card = true
}

-- Items shown in the information tab
Config.licenseItems = {{
    item = 'id_card',
    label = 'ID Card'
}, {
    item = 'driver_license',
    label = 'Driver License'
}, --{
    --item = 'weaponlicense',
    --label = 'Weapon License'
}
