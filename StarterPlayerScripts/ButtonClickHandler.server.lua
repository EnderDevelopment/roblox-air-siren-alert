-- Button Click Handler Script

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function onButtonClicked(player)
    -- Broadcast a message to all clients to start the siren
    ReplicatedStorage:WaitForChild("SirenEvent"):FireAllClients()
end

-- Connect the button click event to the handler function
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        local button = character:WaitForChild("Button")
        button.ClickDetector.MouseClick:Connect(function()
            onButtonClicked(player)
        end)
    end)
end)