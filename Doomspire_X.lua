--// Modified Library //--
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sjorbiia/X-Scripts/master/UILibrary", true))()

--// Settings //--
library.options.underlinecolor = "rainbow"

--//First Window//--
local w = library:CreateWindow('Teleports')

w:Section('Red')

w:Dropdown("Red Teleports", {
   location = _G;
   flag = "rtps";
   list = {
       "Red Top";
       "Red Bottom";
   }
}, function(new)

if _G.rtps == "Red Top" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-92.9552536, 131.400009, -0.228209555, 0.0130714383, -0.000241924077, -0.999914527, 0.000142972203, 0.99999994, -0.000240075751, 0.999914527, -0.000139821903, 0.0130714383) 

elseif _G.rtps == "Red Bottom" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-131, 24.8000011, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
end
end)

w:Section('Green')

w:Dropdown("Green Teleports", {
   location = _G;
   flag = "gtps";
   list = {
       "Green Top";
       "Green Bottom";
   }
}, function(new)

if _G.gtps == "Green Top" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.568436325, 131.400009, -91.7948074, -0.99970293, -3.20257132e-09, -0.0243779011, -3.26525385e-09, 1, 2.53147348e-09, 0.0243779011, 2.61032129e-09, -0.99970293) 

elseif _G.gtps == "Green Bottom" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 24.7999763, -131, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end
end)

w:Section('Blue')

w:Dropdown("Blue Teleports", {
   location = _G;
   flag = "btps";
   list = {
       "Blue Top";
       "Blue Bottom";
   }
}, function(new)

if _G.btps == "Blue Top" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.177885145, 131.400009, 92.7333221, 0.999991417, -1.94781169e-09, 0.0042735422, 2.06130002e-09, 1, -2.65513176e-08, -0.0042735422, 2.65598867e-08, 0.999991417)
elseif _G.btps == "Blue Bottom" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 24.8000011, 131, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end
end)

w:Section('Yellow')

w:Dropdown("Yellow Teleports", {
   location = _G;
   flag = "ytps";
   list = {
       "Yellow Top";
       "Yellow Bottom";
   }
}, function(new)

if _G.ytps == "Yellow Top" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(92.6032486, 131.400009, 0.0341797173, -0.00301746512, 1.09175371e-08, 0.999995112, -8.51412665e-08, 1, -1.11744924e-08, -0.999995112, -8.51746051e-08, -0.00301746512)
elseif _G.ytps == "Yellow Bottom" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(131, 24.7999821, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end
end)

w:Section('Other')

w:Dropdown("Other Teleports", {
   location = _G;
   flag = "otps";
   list = {
       "Spectator Area";
       "Map Middle";
   }
}, function(new)

if _G.otps == "Spectator Area" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.868957162, 387.5, -0.983278453, -0.999791503, -1.32764013e-08, 0.02043611, -1.4056039e-08, 1, -3.8006096e-08, -0.02043611, -3.82854211e-08, -0.999791503)
elseif _G.otps == "Map Middle" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.128807977, 132.598068, 0.188793659, -0.00738539733, -1.74024279e-08, 0.999972701, 4.3032351e-09, 1, 1.74346848e-08, -0.999972701, 4.43187975e-09, -0.00738539733)
end
end)

--// Second Window //--
local w2 = library:CreateWindow('Character')

w2:Section("Movement")

local box = w2:Box('Walkspeed', {
   flag = "ws";
   type = 'number';
}, function(new, old, enter)
    _G.SpeedHax = true
    _G.Speed = tonumber(new) or 16

    if _G.SpeedHax == false then
        _G.SpeedHax = true
        wait()
        _G.SpeedHax = false
    else
        _G.SpeedHax = false
        wait()
        _G.SpeedHax = true
    end

    i = (game.Players.LocalPlayer.Name)
    repeat wait()
        game.Workspace[i].Humanoid.WalkSpeed = _G.Speed
    until _G.SpeedHax == false
   end)

local box = w2:Box('Jump Height', {
   flag = "jp";
   type = 'number';
}, function(new, old, enter)
   while wait() do
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(new)
	end
end)

local b = w2:Button("Walkspeed Default: 16")

local b = w2:Button("Jump Height Default: 50")

w2:Section("FOV")

local old = workspace.CurrentCamera.FieldOfView

local s = w2:Slider("FOV", {
   min = math.floor(workspace.CurrentCamera.FieldOfView);
   max = 120;
   flag = 'fov'
}, function(v)
   workspace.CurrentCamera.FieldOfView = v;
end)

local b = w2:Button('Reset FOV', function()
   s:Set(old)
end)

local t = w2:Toggle("Anti FOV Keybind", {flag = "afovkb"}, function()
if w2.flags.afovkb then
while w2.flags.afovkb do
	wait()
	workspace.CurrentCamera.FieldOfView = 70
		end
	end
end)

w2:Bind("Reset", {
   flag = "killbind";
   kbonly = true;
   default = Enum.KeyCode.RightAlt;
}, function()
   game.Players.LocalPlayer.Character:BreakJoints()
end)

local w3 = library:CreateWindow('Tools')

w3:Section("Sword")

local t = w3:Toggle("Sword Reach", {flag = "SRDS"}, function()
end)

local s = w3:Slider("Sword Length", {
	min = 10;
	max = 40;
	flag = 'slength'
}, function(v)
if w3.flags.SRDS then
   	a = Instance.new("SelectionBox",game.Players.LocalPlayer.Backpack.Sword.Handle)
	a.Adornee = game.Players.LocalPlayer.Backpack.Sword.Handle
	game.Players.LocalPlayer.Backpack.Sword.Handle.Size=Vector3.new(1, 1, v)
else
	a = Instance.new("SelectionBox",game.Players.LocalPlayer.Backpack.Sword.Handle)
	a.Adornee = game.Players.LocalPlayer.Backpack.Sword.Handle
	game.Players.LocalPlayer.Backpack.Sword.Handle.Size=Vector3.new(1, 0.8, 4)
	end
end)

local w4 = library:CreateWindow('Scripts')

w4:Section("Navigation")

w4:Dropdown("Navigation Scripts", {
   location = _G;
   flag = "nvs";
   list = {
       "Infinite Jump";
       "CTRL Teleport";
	   "Teleport Tool";
	   "Btools";
   }
}, function(new)

if _G.nvs == "Infinite Jump" then

local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)

elseif _G.nvs == "CTRL Teleport" then

local UIS = game:GetService("UserInputService")

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()


function GetCharacter()
   return game.Players.LocalPlayer.Character
end

function Teleport(pos)
   local Char = GetCharacter()
   if Char then
       Char:MoveTo(pos)
   end
end

UIS.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
       Teleport(Mouse.Hit.p)
   end
end)

elseif _G.nvs == "Teleport Tool" then

local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()

local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click Teleport"

tool.Activated:Connect(function()
local root = plr.Character.HumanoidRootPart
local pos = mouse.Hit.Position+Vector3.new(0,2.5,0)
local offset = pos-root.Position
root.CFrame = root.CFrame+offset
end)

tool.Parent = plr.Backpack

elseif _G.nvs == "Btools" then
	
local tool1 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
local tool2 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
local tool3 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
local tool4 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
local tool5 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
tool1.BinType = "Clone"
tool2.BinType = "GameTool"
tool3.BinType = "Hammer"
tool4.BinType = "Script"
tool5.BinType = "Grab"
end
end)

w4:Section("Other")

w4:Dropdown("Navigation Scripts", {
   location = _G;
   flag = "bspt";
   list = {
       "No Brick Gravity";
       "Unanchored Brick Follow";
	   "Unanchored Brick Btools";
   }
}, function(new)

if _G.bspt == "No Brick Gravity" then
	spawn(function()
	while true do
		game.Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)*math.huge
		game.Players.LocalPlayer.SimulationRadius = math.pow(math.huge,math.huge)*math.huge
		game:GetService("RunService").Stepped:wait()
	end
end)
local function zeroGrav(part)
    if part:FindFirstChild("BodyForce") then return end
    local temp = Instance.new("BodyForce")
    temp.Force = part:GetMass() * Vector3.new(0,workspace.Gravity,0)
    temp.Parent = part
end

for i,v in ipairs(workspace:GetDescendants()) do
    if v:IsA("Part") and v.Anchored == false then
        if not (v:IsDescendantOf(game.Players.LocalPlayer.Character)) then
            zeroGrav(v)
        end
    end
end

workspace.DescendantAdded:Connect(function(part)
    if part:IsA("Part") and part.Anchored == false then
        if not (part:IsDescendantOf(game.Players.LocalPlayer.Character)) then
            zeroGrav(part)
        end
	end
end)

elseif _G.bspt == "Unanchored Brick Follow" then

local LocalPlayer = game:GetService("Players").LocalPlayer
local unanchoredparts = {}
local movers = {}
for index, part in pairs(workspace:GetDescendants()) do
    if part:IsA("Part") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
        table.insert(unanchoredparts, part)
        part.Massless = true
        part.CanCollide = false
        if part:FindFirstChildOfClass("BodyPosition") ~= nil then
            part:FindFirstChildOfClass("BodyPosition"):Destroy()
        end
    end
end
for index, part in pairs(unanchoredparts) do
    local mover = Instance.new("BodyPosition", part)
    table.insert(movers, mover)
    mover.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
end
repeat
    for index, mover in pairs(movers) do
        mover.Position = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame:PointToWorldSpace(Vector3.new(0, 0, 5))
    end
    wait(0.5)
until LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0
for _, mover in pairs(movers) do
    mover:Destroy()
end

elseif _G.bspt == "Unanchored Brick Btools" then

local LocalPlayer = game:GetService("Players").LocalPlayer
local mouse = LocalPlayer:GetMouse()
local movetool = Instance.new("Tool", LocalPlayer.Backpack)
local deletetool = Instance.new("Tool", LocalPlayer.Backpack)
local undotool = Instance.new("Tool", LocalPlayer.Backpack)
local identifytool = Instance.new("Tool", LocalPlayer.Backpack)
local movedetect = false
local movingpart = nil
local movetransparency = 0
if editedparts == nil then
    editedparts = {}
    parentfix = {}
    positionfix = {}
end
deletetool.Name = "Delete"
undotool.Name = "Undo"
identifytool.Name = "Identify"
movetool.Name = "Move"
undotool.CanBeDropped = false
deletetool.CanBeDropped = false
identifytool.CanBeDropped = false
movetool.CanBeDropped = false
undotool.RequiresHandle = false
deletetool.RequiresHandle = false
identifytool.RequiresHandle = false
movetool.RequiresHandle = false
local function createnotification(title, text)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title;
        Text = text;
        Duration = 1;
    })
end
deletetool.Activated:Connect(function()
    createnotification("Delete Tool", "You have deleted "..mouse.Target.Name)
    table.insert(editedparts, mouse.Target)
    table.insert(parentfix, mouse.Target.Parent)
    table.insert(positionfix, mouse.Target.CFrame)
    spawn(function()
        local deletedpart = mouse.Target
        repeat
            deletedpart.Anchored = true
            deletedpart.CFrame = CFrame.new(1000000000, 1000000000, 1000000000)
            wait()
        until deletedpart.CFrame ~= CFrame.new(1000000000, 1000000000, 1000000000)
    end)
end)
undotool.Activated:Connect(function()
    createnotification("Undo Tool", "You have undone "..editedparts[#editedparts].Name)
    editedparts[#editedparts].Parent = parentfix[#parentfix]
    editedparts[#editedparts].CFrame = positionfix[#positionfix]
    table.remove(positionfix, #positionfix)
    table.remove(editedparts, #editedparts)
    table.remove(parentfix, #parentfix)
end)
identifytool.Activated:Connect(function()
    createnotification("Identify Tool", "Instance: "..mouse.Target.ClassName.."\nName: "..mouse.Target.Name)
end)
movetool.Activated:Connect(function()
    createnotification("Move Tool", "You are moving: "..mouse.Target.Name)
    movingpart = mouse.Target
    movedetect = true
    movingpart.CanCollide = false
    movetransparency = movingpart.Transparency
    movingpart.Transparency = 0.5
    mouse.TargetFilter = movingpart
    table.insert(editedparts, movingpart)
    table.insert(parentfix, movingpart.Parent)
    table.insert(positionfix, movingpart.CFrame)
    movingpart.Transparency = movingpart.Transparency / 2
    repeat
        mouse.Move:Wait()
        movingpart.CFrame = CFrame.new(mouse.Hit.p)
    until movedetect == false
end)
movetool.Deactivated:Connect(function()
    createnotification("Move Tool", "You have stopped moving: "..mouse.Target.Name)
    movingpart.CanCollide = true
    movedetect = false
    mouse.TargetFilter = nil
    movingpart.Transparency = movetransparenc
		end)
	end
end)

local b = w4:Button("Edge Badge", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3070.49951, 387.499878, 3071.49683, -0.999998271, -3.79165108e-08, 0.00185270526, -3.78999374e-08, 1, 8.98211105e-09, -0.00185270526, 8.91187835e-09, -0.999998271)
end)

local w5 = library:CreateWindow('Other')

w5:Section('Version: V1')

w5:Section('Credits')

b = w5:Button('Axolotl_Eclipse')

w5:Section('How to Close GUI')

b = w5:Button('Right CTRL Button')

w5:Section('Options')

b = w5:Button('Destroy GUI', function()
game.CoreGui.ScreenGui:Destroy()
end)
