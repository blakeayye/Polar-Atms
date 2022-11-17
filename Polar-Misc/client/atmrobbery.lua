local QBCore = exports[Config.Core]:GetCoreObject()

-- Cooldowns and Spam Preventions
local atmcooldown = false

local atmrobbed = false
local atmrobcooldown = false

local atmhacked = false
local atmhackcooldown = false

CreateThread(function()

    exports[Config.Target]:AddTargetModel(Config.Atms, { options = { { event = "Polar-Misc:client:getcopamount", icon = Config.Icon, label = Config.Label},}, distance = Config.Distance, }) 
	 
end)

----------------------
----------------------
----------------------
----------------------
----------------------
----------------------
----------------------
----------------------
----------------------
----------------------
----------------------
----------------------
----------------------
----------------------
----------------------
----------------------
RegisterNetEvent('Polar-Misc:client:getcopamount', function()
    TriggerServerEvent('Polar-Misc:server:test')
    QBCore.Functions.TriggerCallback("Polar-Misc:server:getPoliceAmount", function(result)
        if result >= Config.MinimumPolice then

            atmoptions()



        else if result < Config.MinimumPolice then
            QBCore.Functions.Notify('There are not enough police', 'error')
                -- debug
        if Config.Debug then print('not enough police') end
        return end

    end
end)
--------------------------------------------------------------------LVL 1 Robbing -------------------------------------------------------------------------------------
function atmoptions()
    
        local tamperset = QBCore.Functions.HasItem(Config.TamperItem)
        local hasitem = QBCore.Functions.HasItem(Config.ItemRob)
        local hascard = QBCore.Functions.HasItem(Config.CardSwipeItem)
        local hashackitem = QBCore.Functions.HasItem(Config.HackItem)
        
        

       
            -- no screw driver item
        if not tamperset then
              
        QBCore.Functions.Notify('You do not have a screw driver set', 'error')
   
                -- debug
        if Config.Debug then print('no screw driver set') end

        return end

        
        -- has screw driver item
        if tamperset then


        
        
            ---------------- ROB ITEM ------------------
             ---------------- ROB ITEM ------------------
             ---------------- ROB ITEM ------------------
             ---------------- ROB ITEM ------------------
            if hasitem then
                -- debug
                if Config.Debug then print('has rob item') end
            
                if atmrobcooldown then 
            
                    --debug
                    if Config.Debug then print('rob cooldown on') end
        
                    -- notification
                    QBCore.Functions.Notify('The atms are locked', 'error')
        
                return end
                alertpolice()
                -- progressbar for robbery
                QBCore.Functions.Progressbar("robatm", "Opening Drawer...", 7500, false, true, {
    
                    -- what is disabled
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
    
                },{
    
                    -- progressbar animation
                    animDict = 'anim_casino_a@amb@casino@games@arcadecabinet@femaleleft',
                    anim = 'insert_coins',
                    flags = 16,
    
                }, {}, {}, function() -- Done
                   
    
                    -- hacking function
                    robatm()
    
                    -- robb remove item
                    TriggerServerEvent('Polar:Misc:server:AtmRobItemRemove')
                
                    -- debug
                    if Config.Debug then print('mainframe hacked') end
    
             
                        -- robber cooldown
                    activaterobCooldown()
    
                end, function()
    
                    -- cancel notification
                    QBCore.Functions.Notify('Canceled', 'error')
        
                    -- debug
                    if Config.Debug then print('canceled') end
    
                end)  
             ---------------- HACK ITEM ------------------
             ---------------- HACK ITEM ------------------
             ---------------- HACK ITEM ------------------
             ---------------- HACK ITEM ------------------
            else if hashackitem then
               
                if atmhackcooldown then 
            
                    --debug
                    if Config.Debug then print('hack cooldown on') end
        
                    -- notification
                    QBCore.Functions.Notify('The Mainframe is on Lockdown', 'error')
        
                return end
                alertpolice()
                -- progressbar for robbery
            QBCore.Functions.Progressbar("hackatm", "Connecting To The Mainframe...", 7500, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },{
                -- progressbar animation
                animDict = 'mp_missheist_countrybank@enter_code',
                anim = 'enter_code_loop',
                flags = 16,
            }, {}, {}, function() -- Done
                --ClearPedTasks(ped)
                --Wait(5)
                hackatm()
                TriggerServerEvent('Polar:Misc:server:AtmRobItemRemove')
            
                -- debug
                if Config.Debug then print('mainframe hacked') end

                -- hacking function
            
                activatehackCooldown()
            end, function()
                QBCore.Functions.Notify('Canceled', 'error')
    
                -- debug
                if Config.Debug then print('canceled') end

                -- dp emotes cancel
                --TriggerEvent('animations:client:EmoteCommandStart', {"c"})
           
            
            end)    
        
            ---------------- CARD ITEM ------------------
            ---------------- CARD ITEM ------------------
            ---------------- CARD ITEM ------------------
            ---------------- CARD ITEM ------------------
            else if hascard then

                if atmhackcooldown then 
            
                    --debug
                    if Config.Debug then print('hack cooldown on') end
        
                    -- notification
                    QBCore.Functions.Notify('The Mainframe is on Lockdown', 'error')
        
                return end
                
                alertpolice()
                

                QBCore.Functions.Progressbar("robatm", "Swipping Card...", 7500, false, true, {

                    -- what is disabled
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
    
                },{
    
                    -- progressbar animation
                    animDict = 'missfbi_s4mop',
                    anim = 'swipe_card',
                    flags = 16,
    
                }, {}, {}, function() -- Done
                   
    
                    -- hacking function
                    swipecard()
    
                    -- robb remove item
                    TriggerServerEvent('Polar:Misc:server:AtmSwipeCardRemove')
                
                    -- debug
                    if Config.Debug then print('mainframe hacked') end
    
             
                        -- robber cooldown
                        activatehackCooldown()
    
                end, function()
    
                    -- cancel notification
                    QBCore.Functions.Notify('Canceled', 'error')
        
                    -- debug
                    if Config.Debug then print('canceled') end
    
                end)  
           
           
            else if not hascard and not hashackitem and not hasitem then
                -- cancel notification
                QBCore.Functions.Notify('You do not have any Tampering Items', 'error')
       
                -- debug
                if Config.Debug then print('no items') end

           
            
            
            end
       
    
    end
end
end
end
end

    



        
    
end)


function robatm()

    -- minigame
    exports['ps-ui']:Scrambler(function(success)
        if success then
            QBCore.Functions.Notify('You Cracked open the Drawer', 'success', 2500)
            Wait(3500)

            -- atm is robbed, leading to hacking
            atmrobbed = true

            -- rewards
            grab1item()
        else

            -- debug
            if Config.Debug then print('hack atm function failed') end
          
            atmrobbed = true
           QBCore.Functions.Notify('The ATMs are now locked', 'error', 2500)
               end
               -- minigame options
           end, Config.RandomScrambler2[math.random(1, #Config.RandomScrambler2- 1 )], math.random(Config.ScramblerSecondMin2,Config.ScramblerSecondMax2),  math.random(Config.ScramblerMirrorMin2,Config.ScramblerMirrorMax2)) -- Type (alphabet, numeric, alphanumeric, greek, braille, runes), Time (Seconds), Mirrored (0: Normal, 1: Normal + Mirrored 2: Mirrored only )
           -- NumberOfCircles, MS-- Number of Blocks, Time (seconds)
end

function grab1item()

    -- progressbar for grabbing 2
    QBCore.Functions.Progressbar("grab1item", "Grabbing Loose Goods", 7500, false, true, {
        
        -- what disables during progressbar
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,

    },{

        -- progressbar animation
        animDict = 'anim@gangops@van@drive_grab@',
        anim = 'grab_drive',
        flags = 16,

    }, {}, {}, function() -- Done

        -- giving rewards
        TriggerServerEvent('Polar-Misc:server:lvl1rewards')
    
        -- debug
        if Config.Debug then print('rewards lvl 1 giving') end

        -- robber cooldown
        activaterobCooldown()

    end, function()

        -- notification
        QBCore.Functions.Notify('The drawer is broken', 'error')


        -- debug
        if Config.Debug then print('canceled') end

    end)  
end




---- ROB COOLDOWN ----------
function activaterobCooldown()
    atmrobcooldown = true
    Wait(Config.AtmRobCoolDown * 60000)
    atmrobcooldown = false
    atmrobbed = false
    
end



----------------------
----------------------
----------------------
----------------------
----------------------
----------------------
----------------------
----------------------
----------------------
----------------------
----------------------
----------------------- HACKING LEVEL 2------------------------------------------------------------------


------------- THIRD EYE -------------------








------------------------------------ HACKING ANIMATION AND FUNCTION 2------------------------------------------------------------------

function hackatm()

    -- getting player id
    local ped = PlayerPedId()
    
    -- location of the player
    local loc = {x,y,z}
    loc.x = vector3(GetEntityCoords(ped)).x
    loc.y = vector3(GetEntityCoords(ped)).y 
    loc.z = vector3(GetEntityCoords(ped)).z + 0.62
    loc.h = vector3(GetEntityRotation(ped))

    ----------- LVL 2 ANIMATION --------------------

    -- animation dictionary
    local animDict = 'anim@heists@ornate_bank@hack'
    RequestAnimDict(animDict)

    -- requesting laptop model
    RequestModel('hei_prop_hst_laptop')

    -- requesting bag model
    RequestModel('hei_p_m_bag_var22_arm_s')

    -- if animation not loaded then wait
    while not HasAnimDictLoaded(animDict)
        or not HasModelLoaded('hei_prop_hst_laptop')
        or not HasModelLoaded('hei_p_m_bag_var22_arm_s') do
        Wait(100)
    end

    -- which way the player is rotated
    local targetPosition, targetRotation = (vec3(GetEntityCoords(ped))), vec3(GetEntityRotation(ped))
    -- bag prop
    SetPedComponentVariation(ped, 5, Config.HideBagID, 1, 1)
    
    local animPos = GetAnimInitialOffsetPosition(animDict, 'hack_enter', loc.x, loc.y, loc.z, loc.x, loc.y, loc.z, 0, 2)
    local animPos2 = GetAnimInitialOffsetPosition(animDict, 'hack_loop', loc.x, loc.y, loc.z, loc.x, loc.y, loc.z, 0, 2)
    local animPos3 = GetAnimInitialOffsetPosition(animDict, 'hack_exit', loc.x, loc.y, loc.z, loc.x, loc.y, loc.z, 0, 2)

    FreezeEntityPosition(ped, true)
    local netScene = NetworkCreateSynchronisedScene(animPos, targetRotation, 2, false, false, 1065353216, 0, 1.3)
    local bag = CreateObject(GetHashKey('hei_p_m_bag_var22_arm_s'), targetPosition, 1, 1, 0)
    local laptop = CreateObject(GetHashKey('hei_prop_hst_laptop'), targetPosition, 1, 1, 0)

    NetworkAddPedToSynchronisedScene(ped, netScene, animDict, 'hack_enter', 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, netScene, animDict, 'hack_enter_bag', 4.0, -8.0, 1)
    NetworkAddEntityToSynchronisedScene(laptop, netScene, animDict, 'hack_enter_laptop', 4.0, -8.0, 1)

    -- hack loop of hacking
    local netScene2 = NetworkCreateSynchronisedScene(animPos2, targetRotation, 2, false, true, 1065353216, 0, 1.3)
    NetworkAddPedToSynchronisedScene(ped, netScene2, animDict, 'hack_loop', 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, netScene2, animDict, 'hack_loop_bag', 4.0, -8.0, 1)
    NetworkAddEntityToSynchronisedScene(laptop, netScene2, animDict, 'hack_loop_laptop', 4.0, -8.0, 1)

    -- exiting loop
    local netScene3 = NetworkCreateSynchronisedScene(animPos3, targetRotation, 2, false, false, 1065353216, 0, 1.3)
    NetworkAddPedToSynchronisedScene(ped, netScene3, animDict, 'hack_exit', 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, netScene3, animDict, 'hack_exit_bag', 4.0, -8.0, 1)
    NetworkAddEntityToSynchronisedScene(laptop, netScene3, animDict, 'hack_exit_laptop', 4.0, -8.0, 1)

    Wait(200)
    NetworkStartSynchronisedScene(netScene)
    Wait(6300)
    NetworkStartSynchronisedScene(netScene2)
    QBCore.Functions.Notify('Disable the Security System', 'error')
    Wait(3500)
    
    ---------------- HACKING LVL 2 --------------------

    -- debug
    if Config.Debug then print('hack atm function started') end

    -- is buffs enabled?
    if Config.Buffs then

        -- Check if a player has the hacking buff and make it easier to hack something
        if exports['ps-buffs']:HasBuff(Config.HackBuff) then

            -- buff enabled and has buff
            exports['ps-ui']:VarHack(function(success)
                if success then
                    if Config.Debug then print('hack atm function success') end
                    
                    QBCore.Functions.Notify('You Hacked into Part 1/3 of the Mainframe', 'success', 2500)
                    Wait(3500)
                 
                    exports['ps-ui']:Scrambler(function(success)
                        if success then
                            QBCore.Functions.Notify('You Hacked into Part 2/3 of the Mainframe', 'success', 2500)
                            Wait(3500)
                            
                            exports['ps-ui']:Thermite(function(success)
                                if success then
        
                                    -- ANIMATION
                                    NetworkStartSynchronisedScene(netScene3)
                                    NetworkStopSynchronisedScene(netScene3)
                                    DeleteObject(bag)
                                    SetPedComponentVariation(ped, 5, Config.BagUseID, 0, 1)
                                    DeleteObject(laptop)
                                    FreezeEntityPosition(ped, false)
                                    atmhacked = true
        
                                    -- DEBUG
                                    if Config.Debug then print('hack atm maze success') end
        
                                    -- NOTIFICATION
                                    QBCore.Functions.Notify('You Hacked into Part 3/3 of the Mainframe', 'success', 2500)
                                    Wait(3500)
        
                                    -- GIVE ITEMS
                                    
                                    grab2item()
                                else
                                    if Config.Debug then print('hack atm function failed') end
                                    NetworkStartSynchronisedScene(netScene3)
                                    NetworkStopSynchronisedScene(netScene3)
                                    DeleteObject(bag)
                                    SetPedComponentVariation(ped, 5, Config.BagUseID, 0, 1)
                                    DeleteObject(laptop)
                                    FreezeEntityPosition(ped, false)
                                    atmhacked = true
                                    QBCore.Functions.Notify('The Mainframe is now on Lockdown', 'error', 2500)
        
                                end
                            end, math.random(Config.ThermiteTimeMin,Config.ThermiteTimeMax), math.random(Config.ThermiteGridsizeMin,Config.ThermiteGridsizeMax), math.random(Config.ThermiteIncorrectMin,Config.ThermiteIncorrectMax)) -- Time, Gridsize (5, 6, 7, 8, 9, 10), IncorrectBlocks
                        else
                             if Config.Debug then print('hack atm function failed') end
                            NetworkStartSynchronisedScene(netScene3)
                            NetworkStopSynchronisedScene(netScene3)
                            DeleteObject(bag)
                            SetPedComponentVariation(ped, 5, Config.BagUseID, 0, 1)
                            DeleteObject(laptop)
                            FreezeEntityPosition(ped, false)
                            atmhacked = true
                            QBCore.Functions.Notify('The Mainframe is now on Lockdown', 'error', 2500)
                                end
                            end, Config.RandomScrambler2[math.random(1, #Config.RandomScrambler2- 1 )], math.random(Config.ScramblerSecondMin2,Config.ScramblerSecondMax2),  math.random(Config.ScramblerMirrorMin2,Config.ScramblerMirrorMax2)) -- Type (alphabet, numeric, alphanumeric, greek, braille, runes), Time (Seconds), Mirrored (0: Normal, 1: Normal + Mirrored 2: Mirrored only )
                            -- NumberOfCircles, MS-- Number of Blocks, Time (seconds)
        
                            
                else
                    if Config.Debug then print('hack atm function failed') end
                    NetworkStartSynchronisedScene(netScene3)
                    NetworkStopSynchronisedScene(netScene3)
                    DeleteObject(bag)
                    SetPedComponentVariation(ped, 5, Config.BagUseID, 0, 1)
                    DeleteObject(laptop)
                    FreezeEntityPosition(ped, false)
                    atmhacked = true
                    QBCore.Functions.Notify('The Mainframe is now on Lockdown', 'error', 2500)
                end
             end, 5, 8) -- Number of Blocks, Time (seconds)
        
        
        
        
        
        
        else
            -- buff enabled but has no buffs
            exports['ps-ui']:VarHack(function(success)
                if success then
                    if Config.Debug then print('hack atm function success') end
                    
                    QBCore.Functions.Notify('You Hacked into Part 1/3 of the Mainframe', 'success', 2500)
                    Wait(3500)
                
                    exports['ps-ui']:Scrambler(function(success)
                        if success then
                            QBCore.Functions.Notify('You Hacked into Part 2/3 of the Mainframe', 'success', 2500)
                            Wait(3500)
                            
                            exports['ps-ui']:Thermite(function(success)
                                if success then
        
                                    -- ANIMATION
                                    NetworkStartSynchronisedScene(netScene3)
                                    NetworkStopSynchronisedScene(netScene3)
                                    DeleteObject(bag)
                                    SetPedComponentVariation(ped, 5, Config.BagUseID, 0, 1)
                                    DeleteObject(laptop)
                                    FreezeEntityPosition(ped, false)
                                    atmhacked = true
        
                                    -- DEBUG
                                    if Config.Debug then print('hack atm maze success') end
        
                                    -- NOTIFICATION
                                    QBCore.Functions.Notify('You Hacked into Part 3/3 of the Mainframe', 'success', 2500)
                                    Wait(3500)
        
                                    -- GIVE ITEMS
                                    
                                    grab2item()
                                else
                                    if Config.Debug then print('hack atm function failed') end
                                    NetworkStartSynchronisedScene(netScene3)
                                    NetworkStopSynchronisedScene(netScene3)
                                    DeleteObject(bag)
                                    SetPedComponentVariation(ped, 5, Config.BagUseID, 0, 1)
                                    DeleteObject(laptop)
                                    FreezeEntityPosition(ped, false)
                                    atmhacked = true
                                    QBCore.Functions.Notify('The Mainframe is now on Lockdown', 'error', 2500)
        
                                end
                            end, math.random(Config.ThermiteTimeMin + 1 ,Config.ThermiteTimeMax + 1 ), math.random(Config.ThermiteGridsizeMin,Config.ThermiteGridsizeMax), math.random(Config.ThermiteIncorrectMin + 1 ,Config.ThermiteIncorrectMax + 1 )) -- Time, Gridsize (5, 6, 7, 8, 9, 10), IncorrectBlocks
                        else
                             if Config.Debug then print('hack atm function failed') end
                            NetworkStartSynchronisedScene(netScene3)
                            NetworkStopSynchronisedScene(netScene3)
                            DeleteObject(bag)
                            SetPedComponentVariation(ped, 5, Config.BagUseID, 0, 1)
                            DeleteObject(laptop)
                            FreezeEntityPosition(ped, false)
                            atmhacked = true
                            QBCore.Functions.Notify('The Mainframe is now on Lockdown', 'error', 2500)
                                end
                            end, Config.RandomScrambler2[math.random(1, #Config.RandomScrambler2- 1 )], math.random(Config.ScramblerSecondMin2 + 1,Config.ScramblerSecondMax2 + 1),  math.random(Config.ScramblerMirrorMin2,Config.ScramblerMirrorMax2)) -- Type (alphabet, numeric, alphanumeric, greek, braille, runes), Time (Seconds), Mirrored (0: Normal, 1: Normal + Mirrored 2: Mirrored only )
                            -- NumberOfCircles, MS-- Number of Blocks, Time (seconds)
        
        
                else
                    if Config.Debug then print('hack atm function failed') end
                    NetworkStartSynchronisedScene(netScene3)
                    NetworkStopSynchronisedScene(netScene3)
                    DeleteObject(bag)
                    SetPedComponentVariation(ped, 5, Config.BagUseID, 0, 1)
                    DeleteObject(laptop)
                    FreezeEntityPosition(ped, false)
                    atmhacked = true
                    QBCore.Functions.Notify('The Mainframe is now on Lockdown', 'error', 2500)
                end
             end, 4, 10) -- Number of Blocks, Time (seconds)
        
        
        
        
        
        
        end

        
    else
        -- buff not enabled hacking 
        exports['ps-ui']:VarHack(function(success)
            if success then
                if Config.Debug then print('hack atm function success') end
                
                QBCore.Functions.Notify('You Hacked into Part 1/3 of the Mainframe', 'success', 2500)
                Wait(3500)
               
                exports['ps-ui']:Scrambler(function(success)
                    if success then
                        QBCore.Functions.Notify('You Hacked into Part 2/3 of the Mainframe', 'success', 2500)
                        Wait(3500)
                        
                        exports['ps-ui']:Thermite(function(success)
                            if success then
    
                                -- ANIMATION
                                NetworkStartSynchronisedScene(netScene3)
                                NetworkStopSynchronisedScene(netScene3)
                                DeleteObject(bag)
                                SetPedComponentVariation(ped, 5, Config.BagUseID, 0, 1)
                                DeleteObject(laptop)
                                FreezeEntityPosition(ped, false)
                                atmhacked = true
    
                                -- DEBUG
                                if Config.Debug then print('hack atm maze success') end
    
                                -- NOTIFICATION
                                QBCore.Functions.Notify('You Hacked into Part 3/3 of the Mainframe', 'success', 2500)
                                Wait(3500)
    
                                -- GIVE ITEMS
                                
                                grab2item()
                            else
                                if Config.Debug then print('hack atm function failed') end
                                NetworkStartSynchronisedScene(netScene3)
                                NetworkStopSynchronisedScene(netScene3)
                                DeleteObject(bag)
                                SetPedComponentVariation(ped, 5, Config.BagUseID, 0, 1)
                                DeleteObject(laptop)
                                FreezeEntityPosition(ped, false)
                                atmhacked = true
                                QBCore.Functions.Notify('The Mainframe is now on Lockdown', 'error', 2500)
    
                            end
                        end, math.random(Config.ThermiteTimeMin,Config.ThermiteTimeMax), math.random(Config.ThermiteGridsizeMin,Config.ThermiteGridsizeMax), math.random(Config.ThermiteIncorrectMin,Config.ThermiteIncorrectMax)) -- Time, Gridsize (5, 6, 7, 8, 9, 10), IncorrectBlocks
                    else
                         if Config.Debug then print('hack atm function failed') end
                        NetworkStartSynchronisedScene(netScene3)
                        NetworkStopSynchronisedScene(netScene3)
                        DeleteObject(bag)
                        SetPedComponentVariation(ped, 5, Config.BagUseID, 0, 1)
                        DeleteObject(laptop)
                        FreezeEntityPosition(ped, false)
                        atmhacked = true
                        QBCore.Functions.Notify('The Mainframe is now on Lockdown', 'error', 2500)
                            end
                        end, Config.RandomScrambler2[math.random(1, #Config.RandomScrambler2- 1 )], math.random(Config.ScramblerSecondMin2,Config.ScramblerSecondMax2),  math.random(Config.ScramblerMirrorMin2,Config.ScramblerMirrorMax2)) -- Type (alphabet, numeric, alphanumeric, greek, braille, runes), Time (Seconds), Mirrored (0: Normal, 1: Normal + Mirrored 2: Mirrored only )
                        -- NumberOfCircles, MS-- Number of Blocks, Time (seconds)
    
    
            else
                if Config.Debug then print('hack atm function failed') end
                NetworkStartSynchronisedScene(netScene3)
                NetworkStopSynchronisedScene(netScene3)
                DeleteObject(bag)
                SetPedComponentVariation(ped, 5, Config.BagUseID, 0, 1)
                DeleteObject(laptop)
                FreezeEntityPosition(ped, false)
                atmhacked = true
                QBCore.Functions.Notify('The Mainframe is now on Lockdown', 'error', 2500)
            end
         end, 5, 8) -- Number of Blocks, Time (seconds)
    
    
    
    
    
    
    end
end


-- HACKING COOLDOWN -------------
function activatehackCooldown()
    atmhackcooldown = true
    Wait(Config.AtmHackCoolDown * 60000)
    atmhackcooldown = false
    atmhacked = false
    
end



-- GRABBING ITEMS PROGRESSBAR -----------
function grab2item()
    -- progressbar for grabbing 2
    QBCore.Functions.Progressbar("grabsitem", "Grabbing Goods", 7500, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    },{
       -- progressbar animation
       animDict = 'anim@gangops@van@drive_grab@',
       anim = 'grab_drive',
       flags = 16,
    }, {}, {}, function() -- Done
        --ClearPedTasks(ped)
        --Wait(5)
        TriggerServerEvent('Polar-Misc:server:lvl2rewards')
    
        -- debug
        if Config.Debug then print('rewards lvl 2 giving') end

        -- hacking function
    
            activatehackCooldown()
    end, function()
        QBCore.Functions.Notify('Canceled', 'error')

        -- debug
        if Config.Debug then print('canceled') end

        -- dp emotes cancel
        --TriggerEvent('animations:client:EmoteCommandStart', {"c"})
   

    end)  
end


------------- SWIPPING CARD LVL 3 ------------------
function swipecard()
    exports['ps-ui']:Maze(function(success)
        if success then

            QBCore.Functions.Notify('Card Authorized', 'success')
            
            -- debug
            if Config.Debug then print('swipped card') end




            grab2item()

        else

            QBCore.Functions.Notify('Card Unathorized', 'error')

             -- debug
            if Config.Debug then print('card swipe failed') end

        end
    end, 20) -- Hack Time Limit
end


function alertpolice()

    exports['ps-dispatch']:SuspiciousActivity()

end