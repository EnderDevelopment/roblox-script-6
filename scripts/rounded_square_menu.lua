-- Rounded Square Menu Script for Roblox

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create a ScreenGui to hold the menu
local menuGui = Instance.new("ScreenGui")
menuGui.Name = "RoundedSquareMenu"
menuGui.Parent = playerGui

-- Create a Frame for the menu
local menuFrame = Instance.new("Frame")
menuFrame.Name = "MenuFrame"
menuFrame.Size = UDim2.new(0, 300, 0, 200)
menuFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
menuFrame.AnchorPoint = Vector2.new(0.5, 0.5)
menuFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
menuFrame.BorderSizePixel = 0
menuFrame.Parent = menuGui

-- Create a UICorner for rounded corners
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 20)
uiCorner.Parent = menuFrame

-- Create a UIStroke for purple borders
local uiStroke = Instance.new("UIStroke")
uiStroke.Color = Color3.fromRGB(128, 0, 128)
uiStroke.Thickness = 2
uiStroke.Parent = menuFrame

-- Create a TextLabel for the title
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "TitleLabel"
titleLabel.Size = UDim2.new(1, 0, 0, 50)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.Text = "Rounded Square Menu"
titleLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
titleLabel.TextScaled = true
-- titleLabel.Font = Enum.Font.SourceSansBold
-- titleLabel.TextSize = 24
-- titleLabel.TextWrapped = true
-- titleLabel.TextXAlignment = Enum.TextXAlignment.Center
titleLabel.Parent = menuFrame

-- Create a TextButton for the menu button
local menuButton = Instance.new("TextButton")
menuButton.Name = "MenuButton"
menuButton.Size = UDim2.new(0.8, 0, 0, 50)
menuButton.Position = UDim2.new(0.1, 0, 0.5, -25)
menuButton.AnchorPoint = Vector2.new(0.5, 0.5)
menuButton.Text = "Click Me"
menuButton.TextColor3 = Color3.fromRGB(255, 255, 255)
menuButton.BackgroundColor3 = Color3.fromRGB(128, 0, 128)
menuButton.BorderSizePixel = 0
menuButton.Parent = menuFrame

-- Create a UICorner for the button
local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 10)
buttonCorner.Parent = menuButton

-- Function to handle button click
menuButton.MouseButton1Click:Connect(function()
	print("Button clicked!")
end)

-- Function to toggle the menu visibility
local function toggleMenu()
	menuFrame.Visible = not menuFrame.Visible
end

-- Example: Toggle the menu when a key is pressed
player:GetMouse().KeyDown:Connect(function(key)
	if key == "m" then
		toggleMenu()
	end
end)