-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local LoginTab = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Loginbtn = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local watermark = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

LoginTab.Name = "LoginTab"
LoginTab.Parent = ScreenGui
LoginTab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LoginTab.BackgroundTransparency = 0.250
LoginTab.Position = UDim2.new(0.292552799, 0, 0.672845662, 0)
LoginTab.Size = UDim2.new(0, 567, 0, 234)

TextLabel.Parent = LoginTab
TextLabel.BackgroundColor3 = Color3.fromRGB(85, 0, 127)
TextLabel.BackgroundTransparency = 0.400
TextLabel.Size = UDim2.new(0, 567, 0, 50)
TextLabel.Font = Enum.Font.Oswald
TextLabel.Text = "Valkyrie.uno"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 30.000

Loginbtn.Name = "Loginbtn"
Loginbtn.Parent = LoginTab
Loginbtn.BackgroundColor3 = Color3.fromRGB(85, 0, 127)
Loginbtn.BackgroundTransparency = 0.400
Loginbtn.Position = UDim2.new(0.322751313, 0, 0.577310145, 0)
Loginbtn.Size = UDim2.new(0, 201, 0, 36)
Loginbtn.Font = Enum.Font.Oswald
Loginbtn.Text = "login"
Loginbtn.TextColor3 = Color3.fromRGB(255, 255, 255)
Loginbtn.TextSize = 30.000
Loginbtn.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

TextLabel_2.Parent = LoginTab
TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.324514985, 0, 0.298113227, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.Oswald
TextLabel_2.Text = "your whitelist will be checked after pressing login"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 30.000

watermark.Name = "watermark"
watermark.Parent = ScreenGui
watermark.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
watermark.BackgroundTransparency = 0.450
watermark.Position = UDim2.new(0.377026349, 0, 0.0683679581, 0)
watermark.Size = UDim2.new(0, 367, 0, 50)
watermark.Font = Enum.Font.Oswald
watermark.Text = "Valkyrie.uno Premium"
watermark.TextColor3 = Color3.fromRGB(255, 255, 255)
watermark.TextSize = 30.000

Loginbtn.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IlIlIllIl/Engine/main/whitelist.lua"))()
	LoginTab.Visible = false
	watermark.Visible = false
end)
