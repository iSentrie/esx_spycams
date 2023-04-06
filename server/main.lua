local Players = {}

-- Make the spy camera item usable
ESX.CreateUseableItem(Config.SpycamItem, function(source, item)
    if Players[source] then
        if Players[source] == Config.MaxCameras then
            return Notify(source, Lang:t('errors.placed'))
        end
    end

    TriggerClientEvent('spycams:client:place', source)
end)

-- Make the spy camera tablet item usable
ESX.CreateUseableItem(Config.ControlItem, function(source, item)
    if Players[source] == 0 then
        return Notify(source, Lang:t('errors.missing'))
    end

    TriggerClientEvent('spycams:client:connect', source)
end)

-- Check player is allowed to place the spy camera
ESX.CreateCallback('spycams:server:canPlace', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if not Player then return end
    cb(not Players[source] or (Players[source] and Players[source] < Config.MaxCameras))
end)

RegisterNetEvent('spycams:server:placed', function()
    local source = source
    local Player = ESX.GetPlayerFromId(source)
    if not Player then return end

    if not Players[source] then
        Players[source] = 0
    else
        if Players[source] == Config.MaxCameras then return end
    end

    Player.removeInventoryItem(Config.SpycamItem, 1)
    Players[source] = Players[source] + 1
    Notify(source, Lang:t('messages.placed'))
end)

RegisterNetEvent('spycams:server:removed', function(destroyed)
    local source = source
    local Player = ESX.GetPlayerFromId(source)
    if not Player then return end
    if not Players[source] then return end

    if destroyed then
        if Players[source] > 0 then
            Players[source] = Players[source] - 1
        end
    else
        xPlayer.addInventoryItem(Config.SpycamItem, 1)
        Players[source] = Players[source] - 1
        Notify(source, Lang:t('messages.removed'))
    end
end)

RegisterNetEvent('spycams:server:destroyed', function(coords)
    TriggerClientEvent('spycams:client:destroyed', -1, coords)
end)

function Notify(src, msg)
    TriggerClientEvent('bulletin:send', src, msg)
end
