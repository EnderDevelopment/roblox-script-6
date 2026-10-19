-- Invisible Hitbox Script for Roblox

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Function to make the hitbox invisible to monsters
local function makeHitboxInvisible()
    for _, part in ipairs(character:GetChildren()) do
        if part:IsA("BasePart") then
            part.Transparency = 1
            part.CanCollide = false
            part.CanTouch = false
        end
    end
end

-- Call the function to make the hitbox invisible
makeHitboxInvisible()

-- Connect to the CharacterAdded event to handle respawns
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    humanoid = character:WaitForChild("Humanoid")
    makeHitboxInvisible()
end)