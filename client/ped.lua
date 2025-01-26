local spawnedPed = nil

local point = lib.points.new({coords = Config.ped.coords.xyz, distance = 15})

function point:onEnter()
    if spawnedPed then return end
    local pedHash = joaat(Config.ped.model)
    lib.requestModel(pedHash)

    spawnedPed = CreatePed(4, pedHash, Config.ped.coords, 0.0, false, false)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetPedDiesWhenInjured(ped, false)
    SetPedCanPlayAmbientAnims(ped, true)
    SetPedCanRagdollFromPlayerImpact(ped, false)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityHeading(ped, Config.ped.coords.w)

    exports['qb-target']:AddTargetEntity(spawnedPed, { -- The specified entity number
    options = { -- This is your options table, in this table all the options will be specified for the target to accept
      { -- This is the first table with options, you can make as many options inside the options table as you want
        num = 1, -- This is the position number of your option in the list of options in the qb-target context menu (OPTIONAL)
        type = "client", -- This specifies the type of event the target has to trigger on click, this can be "client", "server", "command" or "qbcommand", this is OPTIONAL and will only work if the event is also specified
        event = "mtc-cityhall:client:open", -- This is the event it will trigger on click, this can be a client event, server event, command or qbcore registered command, NOTICE: Normal command can't have arguments passed through, QBCore registered ones can have arguments passed through
        icon = 'fas fa-id-card', -- This is the icon that will display next to this trigger option
        label = Config.ped.label, -- This is the label of this option which you would be able to click on to trigger everything, this has to be a string
      }
    },
    distance = 2.5, -- This is the distance for you to be at for the target to turn blue, this is in GTA units and has to be a float value
  })

--[[    exports.ox_target:addLocalEntity(spawnedPed, {
        {
            event = "mtc-cityhall:client:open",
            icon = "fas fa-id-card",
            label = Config.ped.label
        }
    })--]]
end

function point:onExit()
    if not spawnedPed then return end
    DeleteEntity(spawnedPed)
    spawnedPed = nil
end
