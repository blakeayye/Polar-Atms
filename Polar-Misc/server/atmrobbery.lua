local QBCore = exports[Config.Core]:GetCoreObject()
























































RegisterNetEvent('Polar-Misc:server:lvl1rewards', function()

    local Player = QBCore.Functions.GetPlayer(source)
    
   
    if Config.Buffs then
        if exports['ps-buffs']:HasBuff(Config.LuckBuff) then



        -- buff enabled and has buff
        local luck = math.random(0,100)


        if luck >= 0 and luck <= 25 then

        Player.Functions.AddItem('markedbills', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['markedbills'], 'add')
         TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")

        
    else if luck >= 25 and luck <= 50 then

        Player.Functions.AddItem('lockpick', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lockpick'], 'add')
        TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")

    else if luck >= 50 and luck <= 75 then

        Player.Functions.AddItem('lockpick', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lockpick'], 'add')
         TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")

    else if luck >= 75 and luck <= 100 then

        Player.Functions.AddItem('lockpick', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lockpick'], 'add')
         TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")


                    end
                end
            end
        end
    else

        -- buff enabled and has no buffs
        local luck = math.random(0,100)


        if luck >= 0 and luck <= 25 then

        Player.Functions.AddItem('markedbills', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['markedbills'], 'add')
         TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")

        
    else if luck >= 25 and luck <= 50 then

        Player.Functions.AddItem('lockpick', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lockpick'], 'add')
         TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")


    else if luck >= 50 and luck <= 75 then

        Player.Functions.AddItem('lockpick', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lockpick'], 'add')
         TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")

    else if luck >= 75 and luck <= 100 then

        Player.Functions.AddItem('lockpick', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lockpick'], 'add')
         TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")

        
                    end
                end
            end
        end
    end


else


    -- buff no enable
    local luck = math.random(0,100)


    if luck >= 0 and luck <= 25 then

    Player.Functions.AddItem('markedbills', 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['markedbills'], 'add')
     TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")

    
else if luck >= 25 and luck <= 50 then

    Player.Functions.AddItem('lockpick', 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lockpick'], 'add')
     TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")


else if luck >= 50 and luck <= 75 then

    Player.Functions.AddItem('lockpick', 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lockpick'], 'add')
     TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")

else if luck >= 75 and luck <= 100 then

    Player.Functions.AddItem('lockpick', 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lockpick'], 'add')
     TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")

    
                    end
                end
            end
        end
    end
end)





-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------


RegisterNetEvent('Polar-Misc:server:lvl2rewards', function()

    local Player = QBCore.Functions.GetPlayer(source)
    
   
    if Config.Buffs then
        if exports['ps-buffs']:HasBuff(Config.LuckBuff) then



        -- buff enabled and has buff
        local luck = math.random(0,100)


        if luck >= 0 and luck <= 25 then

        Player.Functions.AddItem('markedbills', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['markedbills'], 'add')
         TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")

        
    else if luck >= 25 and luck <= 50 then

        Player.Functions.AddItem('lockpick', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lockpick'], 'add')
         TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")


    else if luck >= 50 and luck <= 75 then

        Player.Functions.AddItem('lockpick', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lockpick'], 'add')
         TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")

    else if luck >= 75 and luck <= 100 then

        Player.Functions.AddItem('lockpick', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lockpick'], 'add')
         TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")


                    end
                end
            end
        end
    else

        -- buff enabled and has no buffs
        local luck = math.random(0,100)


        if luck >= 0 and luck <= 25 then

        Player.Functions.AddItem('markedbills', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['markedbills'], 'add')
         TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")

        
    else if luck >= 25 and luck <= 50 then

        Player.Functions.AddItem('lockpick', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lockpick'], 'add')
         TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")


    else if luck >= 50 and luck <= 75 then

        Player.Functions.AddItem('lockpick', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lockpick'], 'add')
         TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")

    else if luck >= 75 and luck <= 100 then

        Player.Functions.AddItem('lockpick', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lockpick'], 'add')
         TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")

        
                    end
                end
            end
        end
    end


else


    -- buff no enable
    local luck = math.random(0,100)


    if luck >= 0 and luck <= 25 then

    Player.Functions.AddItem('markedbills', 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['markedbills'], 'add')
     TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")

    
else if luck >= 25 and luck <= 50 then

    Player.Functions.AddItem('lockpick', 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lockpick'], 'add')
     TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")


else if luck >= 50 and luck <= 75 then

    Player.Functions.AddItem('lockpick', 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lockpick'], 'add')
     TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")

else if luck >= 75 and luck <= 100 then

    Player.Functions.AddItem('lockpick', 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lockpick'], 'add')
     TriggerEvent("qb-log:server:CreateLog", "atmrobbery", "ATM ROBBERY", "blue", "**" .. GetPlayerName(src) .. "** Got Item for Robbing a ATM")

    
                    end
                end
            end
        end
    end
end)

-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------





-- TriggerServerEvent('Polar:Misc:server:AtmRobItemRemove')
RegisterNetEvent('Polar:Misc:server:AtmRobItemRemove', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    local robitemluck = math.random(1,100)

    if robitemluck <= 50 then
        if exports[Config.Inventory]:RemoveItem(Player.PlayerData.source, Config.ItemRob, Config.RobItemAmount, false) then -- rob item removed from inventory
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ItemRob], 'remove', Config.RobItemAmount)
        end
    end
end)

RegisterNetEvent('Polar:Misc:server:AtmSwipeCardRemove', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    local cardswipeluck = math.random(1,100)

    if cardswipeluck <= 50 then
        if exports[Config.Inventory]:RemoveItem(Player.PlayerData.source, Config.CardSwipeItem, Config.CardSwipeAmount, false) then -- rob item removed from inventory
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.CardSwipeItem], 'remove', Config.CardSwipeAmount)
        end
    end
end)

-- TriggerServerEvent('Polar:Misc:server:AtmHackItemRemove')
RegisterNetEvent('Polar:Misc:server:AtmHackItemRemove', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    local hackitemluck = math.random(1,100)

    if hackitemluck <= 50 then
        if exports[Config.Inventory]:RemoveItem(Player.PlayerData.source, Config.HackItem, Config.HackItemAmount, false) then -- hack item removed from inventory
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.HackItem], 'remove', Config.HackItemAmount)
        end
    end
end)

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
----------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
----------------

QBCore.Functions.CreateCallback('Polar-Misc:server:getPoliceAmount', function(source, cb)
    local amount = 0
    local players = QBCore.Functions.GetQBPlayers()
    for _, Player in pairs(players) do
        if Player.PlayerData.job.name == "police" and Player.PlayerData.job.onduty then
            amount = amount + 1
        end
    end
    cb(amount)
end)
