-- Rotate Cube Script

local part = script.Parent

-- Ensure the script is parented to a Part
if not part:IsA("BasePart") then
    warn("This script must be parented to a Part.")
    return
end

-- Function to rotate the part
local function rotatePart()
    while true do
        part.CFrame = part.CFrame * CFrame.Angles(0, math.rad(1), 0)
        wait(0.01)
    end
end

-- Start rotating the part
rotatePart()