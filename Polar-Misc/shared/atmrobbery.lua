Config = {} or Config

-- Core Values
Config.Core = 'qb-core'
Config.Target = 'qb-target'
Config.Menu = 'qb-menu'
Config.Input = 'qb-input'
Config.Inventory = 'qb-inventory'
Config.Skillbar = 'qb-skillbar'

-- Debug
Config.Debug = true

-- ATMS
Config.Atms = { `prop_atm_01`, `prop_atm_02`, `prop_atm_03`, `prop_fleeca_atm` }
Config.Distance = 1.5

-- COOLDOWNS
Config.AtmRobCoolDown = 10 -- measured in minutes
Config.AtmHackCoolDown = 30 -- CARD AND HACK have same cooldown 

-- CLOTHING NUMBERS
Config.BagUseID = 93 -- Which ID is the bag that a player gets after doing an animation? (Should use a black one so it looks close to the animation)
Config.HideBagID = 0 -- Which Bag ID is hiding the bag? This is used to not mess up the animations

-- POLICE
Config.MinimumPolice = 1 -- how many police needed to start robbery

-- LVL 1 Robbing
Config.Icon = 'fa-solid fa-bolt'
Config.Label = 'Tamper'

-- NEEDED FOR ALL
Config.TamperItem = 'screwdriverset'

-- NEEDED FOR ROB
Config.ItemRob = 'advancedlockpick'
Config.RobItemAmount = 1

-- NEEDED FOR HACK
Config.HackItem = 'pistol_ammo'
Config.HackItemAmount = 1

-- NEEDED FOR CARD SWIPE
Config.CardSwipeItem = 'weapon_pistol'
Config.CardSwipeAmount = 1

-- ONLY FOR LOGS
Config.Amountofitem = 1




-- PS Buffs
Config.Buffs = true
Config.HackBuff = 'hacking'
Config.LuckBuff = "luck"

-- Notifications 
Config.NotificationLength = 5000
Config.NotificationEcolor = 'error'


-- SCRAMBLER MINIGAME
Config.RandomScrambler2 = {
    
    'alphabet',
    'numeric',
    'alphanumeric',
    'greek',
    'braille',
    'runes',

} 
Config.ScramblerMirrorMin2 = 0
Config.ScramblerMirrorMax2 = 2
Config.ScramblerSecondMin2 = 20
Config.ScramblerSecondMax2 = 30
    

-- VAR MINIGAME
Config.VarRandomBlocksMin = 4
Config.VarRandomBlocksMax = 6
Config.VarRandomSecondsMin = 6
Config.VarRandomSecondsMax = 8

-- THERMITE MINIGAME
Config.ThermiteTimeMin = 5
Config.ThermiteTimeMax = 10

Config.ThermiteGridsizeMin = 5
Config.ThermiteGridsizeMax = 6

Config.ThermiteIncorrectMin = 2
Config.ThermiteIncorrectMax = 3