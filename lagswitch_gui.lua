if not settings() then
warn("bruh")
end

local lagswitch = false

local LagswitchGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Button = Instance.new("TextButton")
local Button2 = Instance.new("TextButton")
local Deco = Instance.new("TextLabel")

LagswitchGUI.Name = "LagswitchGUI"
LagswitchGUI.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = LagswitchGUI
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
MainFrame.BorderSizePixel = 0
MainFrame.Draggable = true
MainFrame.Position = UDim2.new(0.25, 0, 0.25, 0)
MainFrame.Size = UDim2.new(0.150000006, 0, 0.100000001, 0)

Button.Name = "Button"
Button.Parent = MainFrame
Button.BackgroundColor3 = Color3.new(0, 0, 0)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0.0500000007, 0, 0.400000006, 0)
Button.Size = UDim2.new(0.5, 0, 0.400000006, 0)
Button.Font = Enum.Font.SourceSans
Button.FontSize = Enum.FontSize.Size14
Button.Text = "OFF"
Button.TextColor3 = Color3.new(1, 0, 0)
Button.TextScaled = true
Button.TextSize = 14
Button.TextWrapped = true

Deco.Name = "Deco"
Deco.Parent = MainFrame
Deco.BackgroundColor3 = Color3.new(1, 1, 1)
Deco.BackgroundTransparency = 0.89999997615814
Deco.BorderSizePixel = 0
Deco.Size = UDim2.new(1, 0, 0.300000012, 0)
Deco.Font = Enum.Font.SourceSansBold
Deco.FontSize = Enum.FontSize.Size14
Deco.Text = "Lagswitch"
Deco.TextColor3 = Color3.new(1, 1, 1)
Deco.TextScaled = true
Deco.TextSize = 14
Deco.TextWrapped = true

Button2.Name = "Button2"
Button2.Parent = MainFrame
Button2.BackgroundColor3 = Color3.new(0, 0, 0)
Button2.BorderSizePixel = 0
Button2.Position = UDim2.new(0.649999976, 0, 0.400000006, 0)
Button2.Size = UDim2.new(0.300000012, 0, 0.400000006, 0)
Button2.Font = Enum.Font.SourceSans
Button2.FontSize = Enum.FontSize.Size14
Button2.Text = "TP"
Button2.TextColor3 = Color3.fromRGB(0,50,50)
Button2.TextScaled = true
Button2.TextSize = 14
Button2.TextWrapped = true


local seed =  math.random(-5982913,-1)
local lastPos = CFrame.new(Vector3.new(0,0,0))



Button.MouseButton1Down:connect(function()
if lagswitch == false then
lagswitch = true
Button.TextColor3 = Color3.new(0, 1, 0)
Button.Text = "ON"
Button2.TextColor3 = Color3.fromRGB(0,255,255)
if workspace.CurrentCamera:findFirstChild("newFolder" .. seed) then
workspace.CurrentCamera["newFolder" .. seed]:remove()
end
local newFolder = Instance.new("Folder", workspace.CurrentCamera)
newFolder.Name = "newFolder" .. seed
local old = game.Players.LocalPlayer.Character:getChildren()
for i=1,#old do
if old[i].Name == "HumanoidRootPart" then
lastPos = old[i].CFrame
end
if old[i].ClassName == "Part" or old[i].ClassName == "MeshPart" then
local new = old[i]:clone()
local clean = new:getChildren()
for i=1,#clean do
if clean[i].ClassName == "Decal" or clean[i].ClassName == "SpecialMesh" then
else
clean[i]:remove()
end
end
new.Color = Color3.fromRGB(0,125,125)
new.Transparency = 0.7
new.Anchored = true
new.CanCollide = false
new.Parent = newFolder
end
end
settings().Network.IncommingReplicationLag = 1000
else
lagswitch = false
Button.TextColor3 = Color3.new(1, 0, 0)
Button.Text = "OFF"
Button2.TextColor3 = Color3.fromRGB(0,50,50)
if workspace.CurrentCamera:findFirstChild("newFolder" .. seed) then
workspace.CurrentCamera["newFolder" .. seed]:remove()
end
settings().Network.IncommingReplicationLag = 0
end
end)

Button2.MouseButton1Down:connect(function()
if lagswitch == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = lastPos
end
end)