-- made by fill_ma_hooters

local discordLink = 'discord.gg/example' -- Change this to your Discord link
local messageInterval = 300000 -- Default to 5 minutes in milliseconds (300000ms = 5 minutes)

-- Function to send the chat message
local function sendChatMessage()
    TriggerClientEvent('chat:addMessage', -1, {
        args = { '^1[Discord Bot]^7', 'Join our Discord: ' .. discordLink }
    })
end

-- Start the timer to send messages at regular intervals
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(messageInterval)
        sendChatMessage()
    end
end)
