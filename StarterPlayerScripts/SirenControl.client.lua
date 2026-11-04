-- Siren Control Script

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SoundService = game:GetService("SoundService")

-- Create a sound object for the siren
local sirenSound = Instance.new("Sound")
sirenSound.SoundId = "rbxassetid://123456789" -- Replace with your actual sound ID
sirenSound.Looped = true
sirenSound.Parent = SoundService

-- Function to start the siren
local function startSiren()
    sirenSound:Play()
end

-- Connect to the event to start the siren
ReplicatedStorage:WaitForChild("SirenEvent").OnClientEvent:Connect(startSiren)