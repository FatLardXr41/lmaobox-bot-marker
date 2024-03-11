-- Made By https://lmaobox.net/forum/v/profile/34545496/somefemboy5141
--          @
--      11/03/2024


local botnames = {
    "OMEGATRONIC", 
    "HEXATRONIC", 
    "DELTATRONIC", 
    "Arenateamplayer", 
    "Archimedes", 
    "Twitter.com/ArchimedesAI",
	"า",
    "ี",
    "ิ",
    "ึ",
    "ื",
    "ุ",
    "ู",
    "เ",
    "แ",
    "โ",
    "ใ",
    "ไ",
    "ๅ",
    "ๆ",
    "็",
    "่",
    "้",
    "๊",
    "๋",
    "์",
    "ํ",
    "ฯ",
    "๎",
    "๏",
    "๐",
    "๑",
    "๒",
    "๓",
    "๔",
    "๕",
    "๖",
    "๗",
    "๘",
    "๙",
    "๚",
    "๛",
	"ื",
	"์"
} -- ATP bots are sydneys

local priority = 10 -- on default, it will set the bot's priority to 10. You can change this.

local function OMG_MEGA_ANTI_CHEET_LUA_LEAK()
    local players = entities.FindByClass("CTFPlayer")
    local pLocal  = entities.GetLocalPlayer()
    local friendOnly = false
    
    local markedPlayers = {} -- Keep track of marked players
    
    for i, player in pairs(players) do -- get players
        if player == nil then -- if our player is nil, return
            return;
        end
        
        local enemyname = player:GetName()
        
        local pInfoBot = client.GetPlayerInfo(player:GetIndex())
        
        -- Check if the player is already marked and checked
        if markedPlayers[player] then
            break -- If marked, skip this player
        end
        
        for j, botname in ipairs(botnames) do
            if string.find(pInfoBot.Name, botname) then
                -- set the priority on the bot.
                playerlist.SetPriority(player, priority)
                markedPlayers[player] = true -- Mark this player as checked
                break
            end
        end
    end
end

callbacks.Unregister("CreateMove", "MEGA-ANTI-CHEAT-LUA-LEAK")
callbacks.Register("CreateMove", "MEGA-ANTI-CHEAT-LUA-LEAK", OMG_MEGA_ANTI_CHEET_LUA_LEAK)
