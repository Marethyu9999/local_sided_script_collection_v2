local lvl = "Level 1"
local starcollect = game:GetService("ReplicatedStorage").GotStar
local unimportantvalue = 202.85298442841
local difficulty = "Ridiculous"
local boolidk = true
local beatit = game:GetService("ReplicatedStorage").BeatLevel
local enviro = "Ridiculous"
local dim = game:GetService("ReplicatedStorage").SetDimension
local ScreenGui = Instance.new("ScreenGui")
local frame = Instance.new("ImageLabel")
local autofarmLabel = Instance.new("TextLabel")
local AutofarmOn = Instance.new("TextButton")
local CollectStarsLabel = Instance.new("TextLabel")
local CollectStars = Instance.new("TextButton")
local CollectStarsImage = Instance.new("ImageLabel")
local AutofarmImage = Instance.new("ImageLabel")
local SkipLevelLabel = Instance.new("TextButton")
local SkipAllLabel = Instance.new("TextButton")
local title = Instance.new("TextLabel")
local titleimage = Instance.new("ImageLabel")
local skipLevelButton = Instance.new("TextButton")
frame.Visible = false
title.Visible = false
titleimage.Visible = false


ScreenGui.Parent = game.CoreGui

frame.Name = "frame"
frame.Parent = ScreenGui
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 1.000
frame.Position = UDim2.new(0.121468924, 0, 0.160933658, 0)
frame.Size = UDim2.new(0, 234, 0, 328)
frame.Image = "rbxassetid://3570695787"
frame.ImageColor3 = Color3.fromRGB(0, 0, 0)
frame.ScaleType = Enum.ScaleType.Slice
frame.SliceCenter = Rect.new(100, 100, 100, 100)
frame.SliceScale = 0.120
ScreenGui.ResetOnSpawn = false

autofarmLabel.Name = "autofarmLabel"
autofarmLabel.Parent = frame
autofarmLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
autofarmLabel.BackgroundTransparency = 1.000
autofarmLabel.Position = UDim2.new(0.191540644, 0, 0.25, 0)
autofarmLabel.Size = UDim2.new(0, 182, 0, 42)
autofarmLabel.Font = Enum.Font.SourceSans
autofarmLabel.Text = "Autofarm"
autofarmLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
autofarmLabel.TextScaled = true
autofarmLabel.TextSize = 14.000
autofarmLabel.TextWrapped = true

AutofarmOn.Name = "AutofarmOn"
AutofarmOn.Parent = frame
AutofarmOn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutofarmOn.BackgroundTransparency = 1.000
AutofarmOn.BorderSizePixel = 0
AutofarmOn.Position = UDim2.new(0.0854700878, 0, 0.25, 0)
AutofarmOn.Size = UDim2.new(0, 33, 0, 34)
AutofarmOn.ZIndex = 2
AutofarmOn.Font = Enum.Font.SourceSans
AutofarmOn.Text = ""
AutofarmOn.TextColor3 = Color3.fromRGB(0, 0, 0)
AutofarmOn.TextSize = 14.000
local autofarmToggled = false
AutofarmOn.MouseButton1Down:Connect(function()
   autofarmToggled = not autofarmToggled
   spawn(function()
       AutofarmImage.ImageColor3 = Color3.fromRGB(23, 230, 20)
       while autofarmToggled == true do
           for index = 1,6 do
               beatit:FireServer(unimportantvalue, difficulty, boolidk, beatit)
               wait(0.4)
           end
           dim:FireServer(difficulty)
       end
       if autofarmToggled == false then
           AutofarmImage.ImageColor3 = Color3.fromRGB(255, 0, 0)
       elseif autofarmToggled == true then
           AutofarmImage.ImageColor3 = Color3.fromRGB(23, 230, 20)
       end
   end)
end)





CollectStarsLabel.Name = "CollectStarsLabel"
CollectStarsLabel.Parent = AutofarmOn
CollectStarsLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CollectStarsLabel.BackgroundTransparency = 1.000
CollectStarsLabel.Position = UDim2.new(0.893162608, 0, 1.4852941, 0)
CollectStarsLabel.Size = UDim2.new(0, 167, 0, 33)
CollectStarsLabel.Font = Enum.Font.SourceSans
CollectStarsLabel.Text = "Collect Stars"
CollectStarsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
CollectStarsLabel.TextScaled = true
CollectStarsLabel.TextSize = 14.000
CollectStarsLabel.TextWrapped = true

CollectStars.Name = "CollectStars"
CollectStars.Parent = AutofarmOn
CollectStars.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CollectStars.BackgroundTransparency = 1.000
CollectStars.BorderSizePixel = 0
CollectStars.Position = UDim2.new(-0.00543900579, 0, 1.42647064, 0)
CollectStars.Size = UDim2.new(0, 33, 0, 34)
CollectStars.ZIndex = 2
CollectStars.Font = Enum.Font.SourceSans
CollectStars.Text = ""
CollectStars.TextColor3 = Color3.fromRGB(0, 0, 0)
CollectStars.TextSize = 14.000
local Cstars = false
CollectStars.MouseButton1Down:Connect(function()
   Cstars = not Cstars
   spawn(function()
       while Cstars == true do
            wait()
           CollectStarsImage.ImageColor3 = Color3.fromRGB(23, 230, 20)
           starcollect:FireServer(lvl)
       end
       if Cstars == false then
           CollectStarsImage.ImageColor3 = Color3.fromRGB(255, 0, 0)
       elseif Cstars == true then
           CollectStarsImage.ImageColor3 = Color3.fromRGB(23, 230, 20)
           end
   end)
end)

CollectStarsImage.Name = "CollectStarsImage"
CollectStarsImage.Parent = CollectStars
CollectStarsImage.Active = true
CollectStarsImage.AnchorPoint = Vector2.new(0.5, 0.5)
CollectStarsImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CollectStarsImage.BackgroundTransparency = 1.000
CollectStarsImage.Position = UDim2.new(0.25757575, 0, 0.558823586, 0)
CollectStarsImage.Selectable = true
CollectStarsImage.Size = UDim2.new(1, 0, 1, 0)
CollectStarsImage.Image = "rbxassetid://3570695787"
CollectStarsImage.ImageColor3 = Color3.fromRGB(255, 0, 0)
CollectStarsImage.ScaleType = Enum.ScaleType.Slice
CollectStarsImage.SliceCenter = Rect.new(100, 100, 100, 100)
CollectStarsImage.SliceScale = 0.120


AutofarmImage.Name = "AutofarmImage"
AutofarmImage.Parent = AutofarmOn
AutofarmImage.Active = true
AutofarmImage.AnchorPoint = Vector2.new(0.5, 0.5)
AutofarmImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutofarmImage.BackgroundTransparency = 1.000
AutofarmImage.Position = UDim2.new(0.25757575, 0, 0.617647052, 0)
AutofarmImage.Selectable = true
AutofarmImage.Size = UDim2.new(1, 0, 1, 0)
AutofarmImage.Image = "rbxassetid://3570695787"
AutofarmImage.ImageColor3 = Color3.fromRGB(255, 0, 0)
AutofarmImage.ScaleType = Enum.ScaleType.Slice
AutofarmImage.SliceCenter = Rect.new(100, 100, 100, 100)
AutofarmImage.SliceScale = 0.120

SkipLevelLabel.Name = "SkipLevelLabel"
SkipLevelLabel.Parent = AutofarmOn
SkipLevelLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SkipLevelLabel.BackgroundTransparency = 1.000
SkipLevelLabel.Position = UDim2.new(0.893162608, 0, 2.77941179, 0)
SkipLevelLabel.Size = UDim2.new(0, 151, 0, 33)
SkipLevelLabel.Font = Enum.Font.SourceSans
SkipLevelLabel.Text = "Skip Level"
SkipLevelLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
SkipLevelLabel.TextScaled = true
SkipLevelLabel.TextSize = 14.000
SkipLevelLabel.TextWrapped = true
SkipLevelLabel.MouseButton1Down:Connect(function()
   beatit:FireServer(unimportantvalue, difficulty, boolidk, beatit)
end)

SkipAllLabel.Name = "SkipAllLabel"
SkipAllLabel.Parent = AutofarmOn
SkipAllLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SkipAllLabel.BackgroundTransparency = 1.000
SkipAllLabel.Position = UDim2.new(1.13558686, 0, 4.04411793, 0)
SkipAllLabel.Size = UDim2.new(0, 151, 0, 33)
SkipAllLabel.Font = Enum.Font.SourceSans
SkipAllLabel.Text = "Skip All"
SkipAllLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
SkipAllLabel.TextScaled = true
SkipAllLabel.TextSize = 14.000
SkipAllLabel.TextWrapped = true
SkipAllLabel.MouseButton1Down:Connect(function()
   for index = 1,30 do
       beatit:FireServer(unimportantvalue, difficulty, boolidk, beatit)
   end
end)

title.Name = "title"
title.Parent = ScreenGui
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.BorderSizePixel = 0
title.Position = UDim2.new(0.121468924, 0, 0.160933658, 0)
title.Size = UDim2.new(0, 234, 0, 56)
title.ZIndex = 2
title.Font = Enum.Font.SciFi
title.Text = "Speed Run 4"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

titleimage.Name = "titleimage"
titleimage.Parent = title
titleimage.AnchorPoint = Vector2.new(0.5, 0.5)
titleimage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
titleimage.BackgroundTransparency = 1.000
titleimage.Position = UDim2.new(0.5, 0, 0.5, 0)
titleimage.Size = UDim2.new(1, 0, 1, 0)
titleimage.Image = "rbxassetid://3570695787"
titleimage.ScaleType = Enum.ScaleType.Slice
titleimage.SliceCenter = Rect.new(100, 100, 100, 100)
titleimage.SliceScale = 0.120



-- Gui to Lua
-- Version: 3.2

-- Instances:

local ButtonGuis = Instance.new("ScreenGui")
local OpenButton = Instance.new("TextButton")
local OpenButtonImage = Instance.new("ImageLabel")
local CloseButton = Instance.new("TextButton")
local CloseButtonImage = Instance.new("ImageLabel")

--Properties:

ButtonGuis.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

OpenButton.Name = "OpenButton"
OpenButton.Parent = ScreenGui
OpenButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OpenButton.BackgroundTransparency = 1.000
OpenButton.BorderSizePixel = 0
OpenButton.Position = UDim2.new(0.0105932206, 0, 0.803439796, 0)
OpenButton.Size = UDim2.new(0, 106, 0, 59)
OpenButton.ZIndex = 2
OpenButton.Font = Enum.Font.SourceSans
OpenButton.Text = "Open"
OpenButton.TextColor3 = Color3.fromRGB(0, 0, 0)
OpenButton.TextScaled = true
OpenButton.TextSize = 14.000
OpenButton.TextWrapped = true
OpenButton.MouseButton1Down:Connect(function()
   frame.Visible = true
   title.Visible = true
   titleimage.Visible = true
end)



OpenButtonImage.Name = "OpenButtonImage"
OpenButtonImage.Parent = OpenButton
OpenButtonImage.Active = true
OpenButtonImage.AnchorPoint = Vector2.new(0.5, 0.5)
OpenButtonImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OpenButtonImage.BackgroundTransparency = 1.000
OpenButtonImage.Position = UDim2.new(0.524999976, 0, 0.560000002, 0)
OpenButtonImage.Selectable = true
OpenButtonImage.Size = UDim2.new(1.04999995, 0, 0.879999995, 0)
OpenButtonImage.Image = "rbxassetid://3570695787"
OpenButtonImage.ImageColor3 = Color3.fromRGB(85, 170, 0)
OpenButtonImage.ScaleType = Enum.ScaleType.Slice
OpenButtonImage.SliceCenter = Rect.new(100, 100, 100, 100)
OpenButtonImage.SliceScale = 0.120

CloseButton.Name = "CloseButton"
CloseButton.Parent = ButtonGuis
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.BackgroundTransparency = 1.000
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.0120056495, 0, 0.716216207, 0)
CloseButton.Size = UDim2.new(0, 106, 0, 59)
CloseButton.ZIndex = 2
CloseButton.Font = Enum.Font.SourceSans
CloseButton.Text = "Close"
CloseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.TextScaled = true
CloseButton.TextSize = 14.000
CloseButton.TextWrapped = true
CloseButton.MouseButton1Down:Connect(function()
   frame.Visible = false
   title.Visible = false
   titleimage.Visible = false
end)

CloseButtonImage.Name = "CloseButtonImage"
CloseButtonImage.Parent = CloseButton
CloseButtonImage.Active = true
CloseButtonImage.AnchorPoint = Vector2.new(0.5, 0.5)
CloseButtonImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseButtonImage.BackgroundTransparency = 1.000
CloseButtonImage.Position = UDim2.new(0.524999976, 0, 0.560000002, 0)
CloseButtonImage.Selectable = true
CloseButtonImage.Size = UDim2.new(1.04999995, 0, 0.879999995, 0)
CloseButtonImage.Image = "rbxassetid://3570695787"
CloseButtonImage.ImageColor3 = Color3.fromRGB(255, 0, 0)
CloseButtonImage.ScaleType = Enum.ScaleType.Slice
CloseButtonImage.SliceCenter = Rect.new(100, 100, 100, 100)
CloseButtonImage.SliceScale = 0.120
ButtonGuis.ResetOnSpawn = false