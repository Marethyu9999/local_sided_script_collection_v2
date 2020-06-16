repeat wait() until game:IsLoaded()

local games = {
    [833423526] = "Strucid",
    [88070565] = "Bloxburg",
    [848145103] = "Dungeon Quest",
    [245662005] = "Jailbreak",
    [964540701] = "Sound Space",
    [1247975681] = "Big Paintball",
    [1153781324] = "Adventure Up",
    [111958650] = "Arsenal",
    [301252049] = "Robeats",
    [115797356] = "Counter Blox"
}

Game = games[game.GameId] or "Universal"

if syn then
    pcall(function()
        syn.protect_gui(game:GetService("CoreGui"))
    end)
end

    syn_websocket_send = syn_websocket_send
    firesignal = firesignal
    makefolder = makefolder
    is_protosmasher_caller = is_protosmasher_caller
    clonefunction = clonefunction
    setrawmetatable = setrawmetatable 
    getrawmetatable = getrawmetatable
    getinstancefromstate = getinstancefromstate
    setfflag = setfflag
    getcallingscript = getcallingscript or get_calling_script
    getrenv = getrenv
    syn_crypt_b64_encode = syn_crypt_b64_encode
    newcclosure = newcclosure
    getspecialinfo = debug.getspecialinfo or getspecialinfo
    shared = shared
    decompile = decompile
    loadstring = loadstring
    getprotos = debug.getprotos or getprotos
    hookfunction = hookfunction or hookfunc
    isfile = isfile
    getproto = debug.getproto or getproto
    print = print
    isrbxactive = isrbxactive
    rconsoleinfo = rconsoleinfo
    make_readonly = make_readonly
    getstack = debug.getstack or getstack
    rconsolename = rconsolename
    unlockmodulescript = unlockmodulescript
    getupvalue = debug.getupvalue or getupvalue
    setproto = debug.setproto or setproto
    mouse1click = mouse1click
    setupvalue = debug.setupvalue or setupvalue
    getscripts = getscripts or get_scripts
    rconsoleerr = rconsoleerr
    dumpstring = dumpstring
    keypress = keypress
    syn_crypt_derive = syn_crypt_derive
    rconsoleclear = rconsoleclear
    is_redirection_enabled = is_redirection_enabled
    syn_context_set = syn_context_set
    isreadonly = isreadonly or function(tbl) return is_readonly; end;
    mouse2click = mouse2click
    getinfo = debug.getinfo or getinfo
    writefile = writefile
    loadfile = loadfile
    getconstant = debug.getconstant or getconstant
    is_synapse_function = is_synapse_function or issynapsefunction
    getconnections = getconnections
    checkcaller = checkcaller
    setreadonly = setreadonly or function(tbl, val) if val then make_readonly(tbl); else make_writeable(tbl); end; end;
    syn_crypt_encrypt = syn_crypt_encrypt
    warn = warn
    validfgwindow = validfgwindow
    saveinstance = saveinstance
    getinstances = getinstances or get_instances
    getconstants = debug.getconstants or getconstants
    getloadedmodules = getloadedmodules or get_loaded_modules
    require = require
    getnilinstances = getnilinstances or get_nil_instances
    setclipboard = setclipboard
    delfile = delfile
    firetouchinterest = firetouchinterest
    mouse1release = mouse1release
    syn_websocket_close = syn_websocket_close
    setnamecallmethod = setnamecallmethod
    rconsoleprint = rconsoleprint
    getsenv = getsenv
    messagebox = messagebox
    replaceclosure = replaceclosure
    delfolder = delfolder
    keyrelease = keyrelease
    isfolder = isfolder
    XPROTECT = XPROTECT or xprotect
    getcallstack = getcallstack
    appendfile = appendfile
    syn_crypt_hash = syn_crypt_hash
    syn_websocket_connect = syn_websocket_connect
    is_protosmasher_closure = is_protosmasher_closure or isprotosmasherclosure
    mousemoverel = mousemoverel
    printconsole = printconsole
    listfiles = listfiles or list_files
    islclosure = islclosure or is_lclosure
    rconsolewarn = rconsolewarn
    getstateenv = getstateenv
    syn_crypt_decrypt = syn_crypt_decrypt
    readfile = readfile
    mousescroll = mousescroll
    mousemoveabs = mousemoverel
    setconstant = debug.setconstant or setconstant
    getpropvalue = getpropvalue
    syn_crypt_b64_decode = syn_crypt_b64_decode
    mouse2release = mouse2release
    mouse2press = mouse2press
    getgc = getgc
    getstates = getstates
    getpointerfromstate = getpointerfromstate
    mouse1press = mouse1press
    getnamecallmethod = getnamecallmethod or get_namecall_method
    setpropvalue = setpropvalue
    rconsoleinputasync = rconsoleinputasync
    syn_crypt_random = syn_crypt_random
    fireclickdetector = fireclickdetector
    rconsoleinput = rconsoleinput
    getmenv = getmenv
    getreg = getreg or debug.getregistry or getregistry
    getgenv = getgenv
    messageboxasync = messageboxasync
    getupvalues = getupvalues or debug.getupvalues or getupvalues
    setstack = setstack or debug.setstack or setstack
    syn_context_get = syn_context_get
    syn_isactive = syn_isactive
    profilebegan = debug.profilebegin or profilebegin
    traceback = debug.traceback or traceback
    setmetatable = debug.setmetatable or setmetatable
    getmetatable = debug.getmetatable or getmetatable
    getfenv = debug.getfenv or getfenv
    setupvaluename = debug.setupvaluename or setupvaluename
    profileend = debug.profileend or profileend
    validlevel = debug.validlevel or validlevel

local library = {};

if game:GetService("CoreGui"):FindFirstChild("LibraryUI") then
	game:GetService("CoreGui"):FindFirstChild("LibraryUI"):Destroy()
end

local WinRarUI = Instance.new("ScreenGui")

WinRarUI.Name = "LibraryUI"
WinRarUI.Parent = game:GetService("CoreGui")
WinRarUI.ResetOnSpawn = false

game:GetService("UserInputService").InputBegan:Connect(function(I)
	if I.KeyCode == Enum.KeyCode.RightShift then
		local LibraryUI = game:GetService("CoreGui"):FindFirstChild("LibraryUI")
		LibraryUI.Enabled = not LibraryUI.Enabled
	end
end)

function library.new(name)
	local UI = {};
	local Main = Instance.new("ImageLabel")
	local Holder = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local TabHolder = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local UIPadding = Instance.new("UIPadding")
	local underline = Instance.new("Frame")
	local UIGradient_2 = Instance.new("UIGradient")
	local Title = Instance.new("TextLabel")
	local UIPadding_2 = Instance.new("UIPadding")

	Main.Name = "Main"
	Main.Parent = WinRarUI
	Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Main.BackgroundTransparency = 1.000
	Main.Position = UDim2.new(0.106694564, 0, 0.270889491, 0)
	Main.Size = UDim2.new(0, 577, 0, 32)
	Main.Image = "rbxassetid://3570695787"
	Main.ScaleType = Enum.ScaleType.Slice
	Main.SliceCenter = Rect.new(100, 100, 100, 100)
	Main.SliceScale = 0.030

	Holder.Name = "Holder"
	Holder.Parent = Main
	Holder.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Holder.BackgroundTransparency = 0.080
	Holder.BorderSizePixel = 0
	Holder.Position = UDim2.new(0, 0, 1.03125, 0)
	Holder.Size = UDim2.new(0, 577, 0, 343)

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(30, 30, 30)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(26, 26, 26))}
	UIGradient.Parent = Main

	TabHolder.Name = "TabHolder"
	TabHolder.Parent = Main
	TabHolder.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	TabHolder.BackgroundTransparency = 1.000
	TabHolder.BorderSizePixel = 0
	TabHolder.Position = UDim2.new(0.211438477, 0, -4.76837158e-07, 0)
	TabHolder.Size = UDim2.new(0, 455, 0, 32)
	TabHolder.Visible = true
	TabHolder.ZIndex = 2

	UIPadding.Parent = TabHolder
	UIPadding.PaddingLeft = UDim.new(0, 3)
	UIPadding.PaddingTop = UDim.new(0, 7)

	UIListLayout.Parent = TabHolder
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout.Padding = UDim.new(0, 5)

	underline.Name = "underline"
	underline.Parent = Main
	underline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	underline.BorderSizePixel = 0
	underline.Position = UDim2.new(0, 0, 0.8125, 0)
	underline.Size = UDim2.new(0, 577, 0, 7)

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(30, 30, 30)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(26, 26, 26))}
	UIGradient_2.Parent = underline

	Title.Name = "Title"
	Title.Parent = Main
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(0, 122, 0, 33)
	Title.ZIndex = 8
	Title.Font = Enum.Font.SourceSansSemibold
	Title.Text = name
	Title.TextColor3 = Color3.fromRGB(252, 252, 252)
	Title.TextSize = 15.000
	Title.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_2.Parent = Title
	UIPadding_2.PaddingBottom = UDim.new(0, 1)
	UIPadding_2.PaddingLeft = UDim.new(0, 6)

	local players = game:service('Players');
    local player = players.LocalPlayer;
    local mouse = player:GetMouse();
    local run = game:service('RunService'); -- Credits to Google Chrome!
    local stepped = run.Stepped;
    draggable = function(obj)
        spawn(function()
            obj.Active = true;
            local minitial;
            local initial;
            local isdragging;
            obj.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    isdragging = true;
                    minitial = input.Position;
                    initial = obj.Position;
                    local con;
                    con = stepped:Connect(function()
                        if isdragging then
                            local delta = Vector3.new(mouse.X, mouse.Y, 0) - minitial;
                            obj.Position = UDim2.new(initial.X.Scale, initial.X.Offset + delta.X, initial.Y.Scale, initial.Y.Offset + delta.Y);
                        else
                            con:Disconnect();
                        end;
                    end);
                    input.Changed:Connect(function()
                        if input.UserInputState == Enum.UserInputState.End then
                            isdragging = false;
                        end;
                    end);
                end;
            end);
        end)
	end;

	draggable(Main)

	function UI.WindowTab(name)
		local UITabs = {};
		local Window = Instance.new("TextButton")
		local Container = Instance.new("Frame")
		local SideTabs = Instance.new("Frame")
		local UIPadding = Instance.new("UIPadding")
		local UIListLayout = Instance.new("UIListLayout")

		Window.Name = name
		Window.Parent = TabHolder
		Window.BackgroundColor3 = Color3.fromRGB(22, 195, 19)
		Window.BackgroundTransparency = 0.500
		Window.BorderColor3 = Color3.fromRGB(33, 83, 30)
		Window.Position = UDim2.new(0.00659340667, 0, 0.296875, 0)
		Window.Size = UDim2.new(0, 108, 0, 20)
		Window.ZIndex = 2
		Window.AutoButtonColor = false
		Window.Font = Enum.Font.SourceSans
		Window.Text = name
		Window.TextColor3 = Color3.fromRGB(240, 240, 240)
		Window.TextSize = 14.000

		Container.Name = "Container"
		Container.Parent = Holder
		Container.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		Container.BackgroundTransparency = 0.080
		Container.BorderSizePixel = 0
		Container.Size = UDim2.new(0, 577, 0, 343)
		Container.Visible = false

		SideTabs.Name = "SideTabs"
		SideTabs.Parent = Container
		SideTabs.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		SideTabs.BackgroundTransparency = 0.700
		SideTabs.BorderSizePixel = 0
		SideTabs.Position = UDim2.new(0.00173310225, 0, 0, 0)
		SideTabs.Size = UDim2.new(0, 122, 0, 342)
		SideTabs.ZIndex = 2
		SideTabs.Visible = false

		UIPadding.Parent = SideTabs
		UIPadding.PaddingLeft = UDim.new(0, 6)
		UIPadding.PaddingTop = UDim.new(0, 5)

		UIListLayout.Parent = SideTabs
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 4)

		function UITabs.ShowWindow()
			Container.Visible = true
			SideTabs.Visible = true
			Window.BackgroundTransparency = .32
			Window.Size = UDim2.new(0, 108,0, 23)
			Window.TextSize = 15
		end

		local NewHolder = Holder

		Window.MouseButton1Click:Connect(function()
			for i,v in pairs(NewHolder:GetChildren()) do
				if v:IsA("Frame") then
					v.Visible = false
				end
			end
			for i,v in pairs(TabHolder:GetChildren()) do
				if v:IsA('TextButton') then
					v.BackgroundTransparency = .5
					v.Size = UDim2.new(0, 108,0, 20)
					v.TextSize = 14
				end
			end
			Container.Visible = true
			SideTabs.Visible = true
			Window.BackgroundTransparency = .32
			Window.Size = UDim2.new(0, 108,0, 23)
			Window.TextSize = 15
		end)

		function UITabs.SideTab(name)
			local SideTabUI = {};
			local TabButton = Instance.new("TextButton")
			local Frame = Instance.new("Frame")
			local Tab = Instance.new("ScrollingFrame")
			local UIListLayout = Instance.new("UIListLayout")
			local UIPadding = Instance.new("UIPadding")

			TabButton.Name = name
			TabButton.Parent = SideTabs
			TabButton.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
			TabButton.BackgroundTransparency = 1.000
			TabButton.BorderColor3 = Color3.fromRGB(63, 63, 63)
			TabButton.LayoutOrder = 1
			TabButton.Position = UDim2.new(0, 0, 0.171875, 0)
			TabButton.Size = UDim2.new(0, 110, 0, 20)
			TabButton.ZIndex = 2
			TabButton.AutoButtonColor = false
			TabButton.Font = Enum.Font.SourceSans
			TabButton.Text = name
			TabButton.TextColor3 = Color3.fromRGB(240, 240, 240)
			TabButton.TextSize = 14.000

			Frame.Parent = TabButton
			Frame.BackgroundColor3 = Color3.fromRGB(49, 218, 46)
			Frame.BorderSizePixel = 0
			Frame.Size = UDim2.new(0.0350000001, 0, 0, 20)
			Frame.Visible = false

			function SideTabUI.ShowTab()
				TabButton.TextSize = 15
				TabButton.BackgroundTransparency = .5
				Frame.Visible = true
				Tab.Visible = true
			end

			Tab.Name = "Tabs"
			Tab.Parent = Container
			Tab.Active = true
			Tab.BackgroundColor3 = Color3.fromRGB(31, 35, 37)
			Tab.BackgroundTransparency = 1.000
			Tab.BorderColor3 = Color3.fromRGB(27, 42, 53)
			Tab.BorderSizePixel = 0
			Tab.Position = UDim2.new(0.216637775, 0, 0.00290708849, 0)
			Tab.Size = UDim2.new(0, 450, 0, 342)
			Tab.ZIndex = 2
			Tab.CanvasSize = UDim2.new(0,0,3,0)
			Tab.ScrollBarThickness = 5
			Tab.Visible = false

			UIListLayout.Parent = Tab
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 5)

			UIPadding.Parent = Tab
			UIPadding.PaddingBottom = UDim.new(0, 2)
			UIPadding.PaddingLeft = UDim.new(0, 2)
			UIPadding.PaddingTop = UDim.new(0, 5)

			TabButton.MouseButton1Click:Connect(function()
				for i,v in pairs(Container:GetChildren()) do
					if v.Name == "Tabs" then
						v.Visible = false
					end
				end
				for i,v in pairs(SideTabs:GetChildren()) do
					if v:IsA("TextButton") then
						v.TextSize = 14
						v.BackgroundTransparency = 1
						v.Frame.Visible = false
					end
				end
				Tab.Visible = true
				TabButton.TextSize = 15
				TabButton.BackgroundTransparency = .5
				TabButton.Frame.Visible = true
			end)

			function SideTabUI.Section(name)
				local SectionUI = {};
				local Section = Instance.new("Frame")
				local SectionTitle = Instance.new("TextLabel")
				local Underline = Instance.new("ImageLabel")

				Section.Name = name
				Section.Parent = Tab
				Section.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
				Section.BorderSizePixel = 0
				Section.Position = UDim2.new(0.00447427295, 0, 0.0146198831, 0)
				Section.Size = UDim2.new(0, 438, 0, 200)

				SectionTitle.Name = "SectionName"
				SectionTitle.Parent = Section
				SectionTitle.Active = true
				SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SectionTitle.BackgroundTransparency = 1.000
				SectionTitle.BorderSizePixel = 0
				SectionTitle.LayoutOrder = 1
				SectionTitle.Size = UDim2.new(0, 442,0, 23)
				SectionTitle.ZIndex = 3
				SectionTitle.Font = Enum.Font.SourceSans
				SectionTitle.Text = name
				SectionTitle.TextColor3 = Color3.fromRGB(198, 198, 198)
				SectionTitle.TextSize = 22.000
				SectionTitle.TextXAlignment = Enum.TextXAlignment.Left

				local UIPadding = Instance.new("UIPadding")
				UIPadding.Parent = SectionTitle
				UIPadding.PaddingBottom = UDim.new(0, 2)
				UIPadding.PaddingLeft = UDim.new(0, 5)

				Underline.Name = "Underline"
				Underline.Parent = Section
				Underline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Underline.BackgroundTransparency = 1.000
				Underline.LayoutOrder = 2
				Underline.Position = UDim2.new(0.00894965976, 0, 0.100877196, 0)
				Underline.Size = UDim2.new(0, 433, 0, 3)
				Underline.ZIndex = 4
				Underline.Image = "rbxassetid://3570695787"
				Underline.ImageColor3 = Color3.fromRGB(59, 59, 59)
				Underline.ScaleType = Enum.ScaleType.Slice
				Underline.SliceCenter = Rect.new(100, 100, 100, 100)
				Underline.SliceScale = 0.120

				local UIListLayout2 = Instance.new("UIListLayout")
				UIListLayout2.Parent = Section
				UIListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout2.Padding = UDim.new(0, 2)

				local y = 0
       		 	for i, v in pairs(Section:GetChildren()) do
            		if (not v:IsA("UIListLayout") and not v:IsA("UIPadding")) then
               			 	y = y + v.AbsoluteSize.Y + 2;
            			end
        			end
        		Section.Size = UDim2.new(0, 438, 0, y)

				function SectionUI:Resize()
        		local y = 0
       		 	for i, v in pairs(Section:GetChildren()) do
            		if (not v:IsA("UIListLayout") and not v:IsA("UIPadding")) then
               			 	y = y + v.AbsoluteSize.Y + 2;
            			end
        			end
        		Section.Size = UDim2.new(0, 438, 0, y)
    			end	

				SectionUI:Resize()

				function SectionUI.Label(name)
					local LabelHolder = Instance.new("Frame")
					local Label = Instance.new("TextLabel")

					LabelHolder.Name = "LabelHolder"
					LabelHolder.Parent = Section
					LabelHolder.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
					LabelHolder.BackgroundTransparency = 1.000
					LabelHolder.BorderSizePixel = 0
					LabelHolder.LayoutOrder = 3
					LabelHolder.Position = UDim2.new(0.00570776267, 0, 0.220588237, 0)
					LabelHolder.Size = UDim2.new(0, 432, 0, 30)

					Label.Name = "Label"
					Label.Parent = LabelHolder
					Label.AnchorPoint = Vector2.new(0, 0.00999999978)
					Label.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
					Label.BorderColor3 = Color3.fromRGB(58, 58, 58)
					Label.Position = UDim2.new(0.00499999989, 0, 0.0700000003, 0)
					Label.Size = UDim2.new(0.987999976, 1, 0.829999983, 1)
					Label.Font = Enum.Font.SourceSans
					Label.LineHeight = 1.1
					Label.Text = name
					Label.TextColor3 = Color3.fromRGB(194, 194, 194)
					Label.TextSize = 20.000
					SectionUI:Resize()
				end

				function SectionUI.Button(name,callback)
					local ButtonHolder = Instance.new("Frame")
					local Button = Instance.new("TextButton")
					local Circle = Instance.new("ImageLabel")

					ButtonHolder.Name = "ButtonHolder"
					ButtonHolder.Parent = Section
					ButtonHolder.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
					ButtonHolder.BorderSizePixel = 0
					ButtonHolder.LayoutOrder = 3
					ButtonHolder.Position = UDim2.new(0.008, 0,0.221, 0)
					ButtonHolder.Size = UDim2.new(0, 432, 0, 30)

					Button.Name = "Button"
					Button.Parent = ButtonHolder
					Button.AnchorPoint = Vector2.new(0, 0.01)
					Button.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
					Button.BorderSizePixel = 0
					Button.ClipsDescendants = true
					Button.Position = UDim2.new(0.004, 0,0.08, 0)
					Button.Size = UDim2.new(0.989, 1,0.83, 1)
					Button.AutoButtonColor = false
					Button.Text = name
					Button.Font = Enum.Font.SourceSans
					Button.TextColor3 = Color3.fromRGB(166, 166, 166)
					Button.TextSize = 20.000

					Circle.Name = "Circle"
					Circle.Parent = game:GetService("CoreGui")
					Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Circle.BackgroundTransparency = 1.000
					Circle.ZIndex = 10
					Circle.Image = "http://www.roblox.com/asset/?id=33112574"
					Circle.ImageColor3 = Color3.fromRGB(126, 126, 126)
					Circle.ImageTransparency = 0.700

					function CircleClick(Button, X, Y)
						coroutine.resume(coroutine.create(function()
						local Circle = game:GetService("CoreGui"):WaitForChild("Circle"):Clone()
						Circle.Parent = Button
						local NewX = X - Circle.AbsolutePosition.X
						local NewY = Y - Circle.AbsolutePosition.Y
						Circle.Position = UDim2.new(0, NewX, 0, NewY)
									
						local Size = 0
						if Button.AbsoluteSize.X > Button.AbsoluteSize.Y then
							Size = Button.AbsoluteSize.X*1.5
						elseif Button.AbsoluteSize.X < Button.AbsoluteSize.Y then
							Size = Button.AbsoluteSize.Y*1.5
						elseif Button.AbsoluteSize.X == Button.AbsoluteSize.Y then
							Size = Button.AbsoluteSize.X*1.5
						end
									
						local Time = 0.5
						Circle:TweenSizeAndPosition(UDim2.new(0, Size, 0, Size), UDim2.new(0.5, -Size/2, 0.5, -Size/2), "Out", "Quad", Time, false, nil)
							for i=1,10 do
								Circle.ImageTransparency = Circle.ImageTransparency + 0.03
									wait(Time/10)
								end
							Circle:Destroy()
						end))
					end
							
					local Mouse = game.Players.LocalPlayer:GetMouse()
					Button.MouseButton1Click:Connect(function()
						callback()
						CircleClick(Button,Mouse.X,Mouse.Y)
					end)
					SectionUI:Resize()
				end

				function SectionUI.KeyBind(name,callback)
					local KeybindHolder = Instance.new("Frame")
					local KeyBindText = Instance.new("TextLabel")
					local UIPadding = Instance.new("UIPadding")
					local KeybindButton = Instance.new("TextButton")

					KeybindHolder.Name = "KeybindHolder"
					KeybindHolder.Parent = Section
					KeybindHolder.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
					KeybindHolder.BorderSizePixel = 0
					KeybindHolder.LayoutOrder = 3
					KeybindHolder.Position = UDim2.new(0.00570776267, 0, 0.220588237, 0)
					KeybindHolder.Size = UDim2.new(0, 432, 0, 30)

					KeyBindText.Name = "KeyBindText"
					KeyBindText.Parent = KeybindHolder
					KeyBindText.Active = true
					KeyBindText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					KeyBindText.BackgroundTransparency = 1.000
					KeyBindText.BorderSizePixel = 0
					KeyBindText.Size = UDim2.new(0, 431, 0, 30)
					KeyBindText.Font = Enum.Font.SourceSans
					KeyBindText.Text = name
					KeyBindText.TextColor3 = Color3.fromRGB(198, 198, 198)
					KeyBindText.TextSize = 18.000
					KeyBindText.TextXAlignment = Enum.TextXAlignment.Left

					UIPadding.Parent = KeyBindText
					UIPadding.PaddingBottom = UDim.new(0, 3)
					UIPadding.PaddingLeft = UDim.new(0, 5)

					KeybindButton.Name = "KeybindButton"
					KeybindButton.Parent = KeybindHolder
					KeybindButton.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
					KeybindButton.BorderSizePixel = 0
					KeybindButton.Position = UDim2.new(0.810000002, 0, 0.100000001, 0)
					KeybindButton.Size = UDim2.new(0, 79, 0, 24)
					KeybindButton.AutoButtonColor = false
					KeybindButton.Font = Enum.Font.SourceSans
					KeybindButton.Text = ""
					KeybindButton.TextColor3 = Color3.fromRGB(166, 166, 166)
					KeybindButton.TextSize = 15.000

					local userInputService = game:GetService("UserInputService")
					local waitingForKeyPress, currentKey
					KeybindButton.Text = "Set Bind"
						
					KeybindButton.MouseButton1Click:Connect(function()
						KeybindButton.Text = "..."
						waitingForKeyPress = true
					end)
						
					local Blacklisted = {
						[Enum.KeyCode.Space] = "Space";
						[Enum.KeyCode.RightShift] = "RightShift";
						[Enum.KeyCode.F1] = "F1";
						[Enum.KeyCode.F2] = "F2";
						[Enum.KeyCode.F3] = "F3";
						[Enum.KeyCode.F4] = "F4";
						[Enum.KeyCode.F5] = "F5";
						[Enum.KeyCode.F6] = "F6";
						[Enum.KeyCode.F7] = "F7";
						[Enum.KeyCode.F8] = "F8";
						[Enum.KeyCode.F9] = "F9";
						[Enum.KeyCode.F10] = "F10";
						[Enum.KeyCode.F11] = "F11";
						[Enum.KeyCode.F12] = "F12";
						[Enum.KeyCode.Escape] = "Escape";
						[Enum.KeyCode.CapsLock] = "CapsLock";
						[Enum.KeyCode.Print] = "Print";
						[Enum.KeyCode.Tab] = "Tab";
						[Enum.KeyCode.NumLock] = "NumLock";
						[Enum.KeyCode.PageDown] = "PageDown";
						[Enum.KeyCode.PageUp] = "PageUp";
						[Enum.KeyCode.Home] = "Home";
						[Enum.KeyCode.End] = "End";
						[Enum.KeyCode.Delete] = "Delete";
						[Enum.KeyCode.Insert] = "Insert";
						[Enum.KeyCode.Backquote] = "Backquote";
						[Enum.KeyCode.Pause] = "Pause";
						[Enum.KeyCode.ScrollLock] = "ScrollLock";
						[Enum.KeyCode.Up] = "Up";
						[Enum.KeyCode.Right] = "Right";
						[Enum.KeyCode.Left] = "Left";
						[Enum.KeyCode.Down] = "Down";
						[Enum.KeyCode.W] = "W";
						[Enum.KeyCode.A] = "A";
						[Enum.KeyCode.S] = "S";
						[Enum.KeyCode.D] = "D";
					}
						
					userInputService.InputBegan:Connect(function(Input)
						local keyName = string.split(tostring(Input.KeyCode), ".")[3]
						local BlacklistedKeys = Blacklisted[Input.KeyCode]
						if waitingForKeyPress and keyName ~= "Unknown" and keyName ~= BlacklistedKeys then
						   	KeybindButton.Text = keyName
						    currentKey = Input.KeyCode
						    waitingForKeyPress = false
						end
						if not waitingForKeyPress and currentKey and Input.KeyCode == currentKey then
							callback()
						end
					end)
					SectionUI:Resize()
				end

				function SectionUI.Toggle(name,callback)
					local ToggleHolder = Instance.new("Frame")
					local ToggleText = Instance.new("TextLabel")
					local UIPadding = Instance.new("UIPadding")
					local ToggleButton = Instance.new("TextButton")

					ToggleHolder.Name = "ToggleHolder"
					ToggleHolder.Parent = Section
					ToggleHolder.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
					ToggleHolder.BorderSizePixel = 0
					ToggleHolder.LayoutOrder = 3
					ToggleHolder.Position = UDim2.new(0.00570776267, 0, 0.220588237, 0)
					ToggleHolder.Size = UDim2.new(0, 432, 0, 30)

					ToggleText.Name = "ToggleText"
					ToggleText.Parent = ToggleHolder
					ToggleText.Active = true
					ToggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ToggleText.BackgroundTransparency = 1.000
					ToggleText.BorderSizePixel = 0
					ToggleText.Size = UDim2.new(0, 431, 0, 30)
					ToggleText.Font = Enum.Font.SourceSans
					ToggleText.Text = name
					ToggleText.TextColor3 = Color3.fromRGB(198, 198, 198)
					ToggleText.TextSize = 18.000
					ToggleText.TextXAlignment = Enum.TextXAlignment.Left

					UIPadding.Parent = ToggleText
					UIPadding.PaddingBottom = UDim.new(0, 3)
					UIPadding.PaddingLeft = UDim.new(0, 5)

					ToggleButton.Name = "ToggleButton"
					ToggleButton.Parent = ToggleHolder
					ToggleButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					ToggleButton.BorderColor3 = Color3.fromRGB(40, 40, 40)
					ToggleButton.Position = UDim2.new(0.935000002, 0, 0.100000001, 0)
					ToggleButton.Size = UDim2.new(0, 24, 0, 24)
					ToggleButton.AutoButtonColor = false
					ToggleButton.Font = Enum.Font.SourceSans
					ToggleButton.Text = "X"
					ToggleButton.TextColor3 = Color3.fromRGB(197, 197, 197)
					ToggleButton.TextSize = 25.000
					ToggleButton.TextTransparency = 1.000

					local Toggled = false;
						
					local tweenInfo = TweenInfo.new(.15,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0)
						
					ToggleButton.MouseButton1Click:Connect(function()
						Toggled = not Toggled
						callback(Toggled)
						local Transparency = Toggled and 0 or 1
						game:GetService("TweenService"):Create(ToggleButton,tweenInfo,{TextTransparency = Transparency}):Play()
					end)
					SectionUI:Resize()
				end

				function SectionUI.Slider(name,min,max,default,callback)
					local SliderHolder = Instance.new("Frame")
					local Slider = Instance.new("TextButton")
					local Fill = Instance.new("Frame")
					local UIGradient = Instance.new("UIGradient")
					local ValueSlider = Instance.new("TextLabel")
					local UIPadding = Instance.new("UIPadding")
					local SliderText = Instance.new("TextLabel")
					local UIPadding_2 = Instance.new("UIPadding")
					local SetSlider = Instance.new("TextBox")

					SliderHolder.Name = "SliderHolder"
					SliderHolder.Parent = Section
					SliderHolder.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
					SliderHolder.BorderSizePixel = 0
					SliderHolder.LayoutOrder = 3
					SliderHolder.Position = UDim2.new(0.00570776267, 0, 0.455882341, 0)
					SliderHolder.Size = UDim2.new(0, 432, 0, 40)

					Slider.Name = "Slider"
					Slider.Parent = SliderHolder
					Slider.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
					Slider.BorderSizePixel = 0
					Slider.Position = UDim2.new(0.0189999994, 0, 0.680000007, 0)
					Slider.Size = UDim2.new(0, 415, 0, 4)
					Slider.AutoButtonColor = false
					Slider.Font = Enum.Font.SourceSans
					Slider.Text = ""
					Slider.TextColor3 = Color3.fromRGB(0, 0, 0)
					Slider.TextSize = 14.000

					Fill.Name = "Fill"
					Fill.Parent = Slider
					Fill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Fill.BorderSizePixel = 0
					Fill.LayoutOrder = 3
					Fill.Size = UDim2.new(0, 0, 0, 4)

					UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(32, 157, 53)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(80, 162, 44))}
					UIGradient.Parent = Fill

					ValueSlider.Name = "ValueSlider"
					ValueSlider.Parent = Slider
					ValueSlider.Active = true
					ValueSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ValueSlider.BackgroundTransparency = 1.000
					ValueSlider.BorderSizePixel = 0
					ValueSlider.Position = UDim2.new(-0.0186192524, 0, -6.80000305, 0)
					ValueSlider.Size = UDim2.new(0, 431, 0, 22)
					ValueSlider.Font = Enum.Font.SourceSans
					ValueSlider.Text = "Minimum/Maximum"
					ValueSlider.TextColor3 = Color3.fromRGB(198, 198, 198)
					ValueSlider.TextSize = 14.000

					UIPadding.Parent = ValueSlider
					UIPadding.PaddingBottom = UDim.new(0, 4)

					SliderText.Name = "SliderText"
					SliderText.Parent = SliderHolder
					SliderText.Active = true
					SliderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					SliderText.BackgroundTransparency = 1.000
					SliderText.BorderSizePixel = 0
					SliderText.Position = UDim2.new(0.018999977, 0, 0, 0)
					SliderText.Size = UDim2.new(0, 415, 0, 22)
					SliderText.Font = Enum.Font.SourceSans
					SliderText.Text = name
					SliderText.TextColor3 = Color3.fromRGB(198, 198, 198)
					SliderText.TextSize = 16.000
					SliderText.TextXAlignment = Enum.TextXAlignment.Left

					UIPadding_2.Parent = SliderText
					UIPadding_2.PaddingBottom = UDim.new(0, 2)

					SetSlider.Name = "SetSlider"
					SetSlider.Parent = SliderHolder
					SetSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					SetSlider.BackgroundTransparency = 1.000
					SetSlider.BorderColor3 = Color3.fromRGB(58, 58, 58)
					SetSlider.Position = UDim2.new(0.858524144, 0, 0.0500000007, 0)
					SetSlider.Size = UDim2.new(0, 51, 0, 16)
					SetSlider.Font = Enum.Font.SourceSans
					SetSlider.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
					SetSlider.PlaceholderText = "Slider Int"
					SetSlider.Text = ""
					SetSlider.TextColor3 = Color3.fromRGB(178, 178, 178)
					SetSlider.TextSize = 14.000
					SetSlider.TextXAlignment = Enum.TextXAlignment.Right

					local Connection;
					local RunService = game:GetService("RunService");
					local UIS = game:GetService("UserInputService");
						
					local tweenInfo = TweenInfo.new(.05,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0)
						
					local function Fade(Object,Number)
						game:GetService("TweenService"):Create(Object,tweenInfo,{TextTransparency = tonumber(Number)}):Play()
					end
						
					UIS.InputEnded:Connect(function(Input)
						if Input.UserInputType == Enum.UserInputType.MouseButton1 then
							if (Connection) then
								Connection:Disconnect();
								Connection = nil;
								Fade(ValueSlider,1)
							end;
						end;
					end);
						
					local Vals = {
						["Minimum"] = min,
						["Maximum"] = max
					}
						
					ValueSlider.Text = Vals.Minimum .. "/" .. Vals.Maximum
						
					Slider.MouseButton1Down:Connect(function()
						if (Connection) then
							Connection:Disconnect();
						end;
							
						Connection = RunService.Stepped:Connect(function()
							local Mouse = UIS:GetMouseLocation();
							local Percentage = math.clamp((Mouse.X - Slider.AbsolutePosition.X)/(Slider.AbsoluteSize.X),0,1)
							local ValueToNumber = Vals.Minimum + (Vals.Maximum - Vals.Minimum)*Percentage
							
							ValueToNumber = math.floor(ValueToNumber)
							
							ValueSlider.Text = ValueToNumber .. "/" .. Vals.Maximum
							
							game:GetService("TweenService"):Create(Fill,tweenInfo,{Size = UDim2.new(Percentage,0,0,4)}):Play()
							Fade(ValueSlider,0)
							callback(tonumber(ValueToNumber))
							SetSlider.Text = ValueToNumber
						end);
					end);
					
					local function SetValue(value)
						local percent = 1 - ((Vals.Maximum - value)/(Vals.Maximum - Vals.Minimum))
						local Number = value
						
						Number = math.floor(Number)
					
						game:GetService("TweenService"):Create(Fill,tweenInfo,{Size = UDim2.new(percent,0,0,4)}):Play()
						ValueSlider.Text = Number .. "/" .. Vals.Maximum
					end

					SetValue(default or Vals.Minimum)
					
					SetSlider.Changed:Connect(function()
						pcall(function()
							local Value = tonumber(SetSlider.Text)
							if Value >= Vals.Minimum and Value <= Vals.Maximum then
									SetValue(tonumber(SetSlider.Text))
									callback(tonumber(SetSlider.Text))
								end
							end)
						end)
					
					SetSlider.FocusLost:Connect(function()
						SetSlider.Text = tonumber(SetSlider.Text)
					end)
					SectionUI:Resize()
				end
				function SectionUI.Dropdown(name,list,callback)
					local DropFrame = Instance.new("Frame")
					local Dropdown = Instance.new("Frame")
					local DropdownText = Instance.new("TextLabel")
					local UIPadding = Instance.new("UIPadding")
					local ToggleButton = Instance.new("ImageButton")
					local DropdownObjects = Instance.new("Frame")
					local UIPadding_2 = Instance.new("UIPadding")
					local UIListLayout = Instance.new("UIListLayout")

					DropFrame.Name = "DropFrame"
					DropFrame.Parent = Section
					DropFrame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
					DropFrame.BorderSizePixel = 0
					DropFrame.LayoutOrder = 3
					DropFrame.Position = UDim2.new(0.00570776267, 0, 0.519999981, 0)
					DropFrame.Size = UDim2.new(0, 432, 0, 30)
					DropFrame.ZIndex = 6

					Dropdown.Name = "Dropdown"
					Dropdown.Parent = DropFrame
					Dropdown.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
					Dropdown.BackgroundTransparency = 0.200
					Dropdown.BorderSizePixel = 0
					Dropdown.LayoutOrder = 3
					Dropdown.Position = UDim2.new(0.00111346773, 0, 0, 0)
					Dropdown.Size = UDim2.new(0, 432, 0, 30)
					Dropdown.ZIndex = 6

					DropdownText.Name = "DropdownText"
					DropdownText.Parent = Dropdown
					DropdownText.Active = true
					DropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					DropdownText.BackgroundTransparency = 1.000
					DropdownText.BorderSizePixel = 0
					DropdownText.Position = UDim2.new(0.00337645644, 0, 0, 0)
					DropdownText.Size = UDim2.new(0, 431, 0, 30)
					DropdownText.ZIndex = 6
					DropdownText.Font = Enum.Font.SourceSans
					DropdownText.Text = name
					DropdownText.TextColor3 = Color3.fromRGB(198, 198, 198)
					DropdownText.TextSize = 18.000
					DropdownText.TextXAlignment = Enum.TextXAlignment.Left

					UIPadding.Parent = DropdownText
					UIPadding.PaddingBottom = UDim.new(0, 3)
					UIPadding.PaddingLeft = UDim.new(0, 5)

					ToggleButton.Name = "ToggleButton"
					ToggleButton.Parent = Dropdown
					ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ToggleButton.BackgroundTransparency = 1.000
					ToggleButton.BorderSizePixel = 0
					ToggleButton.Position = UDim2.new(0.944999993, 0, 0.219999999, 0)
					ToggleButton.Rotation = 90.000
					ToggleButton.Size = UDim2.new(0, 15, 0, 15)
					ToggleButton.ZIndex = 6
					ToggleButton.Image = "http://www.roblox.com/asset/?id=4888315295"
					ToggleButton.ImageColor3 = Color3.fromRGB(80, 80, 80)
					ToggleButton.SliceCenter = Rect.new(100, 100, 100, 100)

					DropdownObjects.Name = "DropdownObjects"
					DropdownObjects.BackgroundTransparency = 1
					DropdownObjects.Parent = Dropdown
					DropdownObjects.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
					DropdownObjects.BorderSizePixel = 0
					DropdownObjects.ClipsDescendants = true
					DropdownObjects.Position = UDim2.new(-0.002, 0,0, 0)
					DropdownObjects.Size = UDim2.new(0, 432, 0, 30)
					DropdownObjects.ZIndex = 5

					UIPadding_2.Parent = DropdownObjects
					UIPadding_2.PaddingTop = UDim.new(0, 32)

					UIListLayout.Parent = DropdownObjects
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.Padding = UDim.new(0, 1)

					local Toggled = false

					local tweenInfo = TweenInfo.new(.15,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0)
						
					DropdownText.Text = name
					for _,v in pairs(list) do
						local Button = Instance.new("TextButton")
						Button.Name = "Button"
						Button.Parent = DropdownObjects
						Button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						Button.BorderColor3 = Color3.fromRGB(44, 44, 44)
						Button.BorderSizePixel = 2
						Button.Text = v
						Button.ZIndex = 5
						Button.Position = UDim2.new(0.269, 0, 1, 0)
						Button.Size = UDim2.new(0, 430, 0, 30)
						Button.AutoButtonColor = false
						Button.Font = Enum.Font.SourceSans
						Button.TextColor3 = Color3.fromRGB(148, 148, 148)
						Button.TextSize = 20.000
								
						Button.MouseButton1Click:Connect(function()
							callback(Button.Text)
							DropdownText.Text = v
							Toggled = false
							DropdownObjects:TweenSize(UDim2.new(0, 432,0, 30),"In","Linear",.25,true)
							game:GetService("TweenService"):Create(ToggleButton,tweenInfo,{Rotation = 90}):Play()
						end)
					end
						
					ToggleButton.MouseButton1Click:Connect(function()
						Toggled = not Toggled
						local TotalY = 0;
						for i,v in next, DropdownObjects:GetChildren() do
							if (v:IsA("TextButton")) then
								TotalY = TotalY + v.AbsoluteSize.Y + 2;
							end
						end
							
						local RotationAmount = Toggled and 0 or 90
						local ToggleDirection = Toggled and "Out" or "In"
						local GetSize = Toggled and UDim2.new(0,432,0,TotalY + 50) or UDim2.new(0, 432,0, 30)
						DropdownObjects:TweenSize(GetSize,ToggleDirection,"Linear",.25,true)
						game:GetService("TweenService"):Create(ToggleButton,tweenInfo,{Rotation = RotationAmount}):Play()
					end)
					SectionUI:Resize()
				end

				function SectionUI.Box(name,callback)
					local BoxHolder = Instance.new("Frame")
					local BoxHolder_2 = Instance.new("TextLabel")
					local UIPadding = Instance.new("UIPadding")
					local Box = Instance.new("TextBox")
					local UIPadding_2 = Instance.new("UIPadding")

					BoxHolder.Name = "BoxHolder"
					BoxHolder.Parent = Section
					BoxHolder.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
					BoxHolder.BorderSizePixel = 0
					BoxHolder.LayoutOrder = 3
					BoxHolder.Position = UDim2.new(0.00228310493, 0, 1, 0)
					BoxHolder.Size = UDim2.new(0, 431, 0, 30)

					BoxHolder_2.Name = "BoxHolder"
					BoxHolder_2.Parent = BoxHolder
					BoxHolder_2.Active = true
					BoxHolder_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					BoxHolder_2.BackgroundTransparency = 1.000
					BoxHolder_2.BorderSizePixel = 0
					BoxHolder_2.Size = UDim2.new(0, 428, 0, 30)
					BoxHolder_2.Font = Enum.Font.SourceSans
					BoxHolder_2.Text = name
					BoxHolder_2.TextColor3 = Color3.fromRGB(198, 198, 198)
					BoxHolder_2.TextSize = 18.000
					BoxHolder_2.TextXAlignment = Enum.TextXAlignment.Left

					UIPadding.Parent = BoxHolder_2
					UIPadding.PaddingBottom = UDim.new(0, 3)
					UIPadding.PaddingLeft = UDim.new(0, 5)

					Box.Name = "Box"
					Box.Parent = BoxHolder
					Box.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					Box.BorderColor3 = Color3.fromRGB(52, 52, 52)
					Box.Position = UDim2.new(0.770, 0,0.135, 0)
					Box.Size = UDim2.new(0, 95, 0, 22)
					Box.Font = Enum.Font.SourceSans
					Box.PlaceholderText = "Value"
					Box.Text = ""
					Box.TextColor3 = Color3.fromRGB(0, 0, 0)
					Box.TextSize = 14.000
					Box.TextXAlignment = Enum.TextXAlignment.Left
					Box.ClipsDescendants = true

					UIPadding_2.Parent = Box
					UIPadding_2.PaddingBottom = UDim.new(0, 1)
					UIPadding_2.PaddingLeft = UDim.new(0, 3)

					Box.FocusLost:Connect(function(Enter)
						if Enter then
							if Box.Text ~= nil or Box.Text ~= "" then
								callback(Box.Text)
							end
						end
					end)

					SectionUI:Resize()
				end				
				return SectionUI
			end
			return SideTabUI
		end
		return UITabs
	end
	return UI
end

function universal(lib)
    
    uni = lib
    
    local unicheats = uni.WindowTab('Universal Cheats')
    
    local aimsettings = unicheats.SideTab("Aim Settings")
    
    local aimcheats = aimsettings.Section("Cheats")
    
    local toggleKey = 'MouseButton2'
    local targetPrt = 'Head'
    local triggerBot = false
    local accAimbot = false
    
    local smooth = 0.3
    local aimbot = false
    
    aimcheats.Toggle("Aimbot", function(a)
        accAimbot = a
    end)
    
   aimcheats.Toggle("Triggerbot", function(a)
        triggerBot = a
   end)

    aimcheats.Slider("Smoothness",1,10,2,function(a)
	    smooth = a
    end)
    
    aimcheats.Dropdown("Target Part", {"Head", "HumanoidRootPart"}, function(a)
        targetPrt = a
    end)
    
    aimcheats.Toggle("FFA", function(a)
        FFA = a
    end)
    
    local mouse = game.Players.LocalPlayer:GetMouse()
    local cc = game.workspace.CurrentCamera
    function pos(a)
        return cc:WorldToViewportPoint(a)
    end
    game:GetService("UserInputService").InputBegan:connect(function(a)
        if (a.UserInputType == Enum.UserInputType[toggleKey]) and accAimbot then
            aimbot = true
        end
    end)
    game:GetService("UserInputService").InputEnded:connect(function(a)
        if (a.UserInputType == Enum.UserInputType[toggleKey]) and accAimbot then
            aimbot = false
        end
    end)
    function getClosestMouse(trg_part)
        local nearest = nil  
        local last = math.huge
        for i,v in pairs(game.Players:GetPlayers()) do 
            if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character and v.Character and v.Character:FindFirstChild(trg_part) and (v.TeamColor ~= game.Players.LocalPlayer.TeamColor or FFA) then 
                if game.Players.LocalPlayer.Character:FindFirstChild(trg_part) then
                    local ePos = pos(v.Character[trg_part].Position)
                    local AccPos = Vector2.new(ePos.x, ePos.y)
                    local mousePos = Vector2.new(cc.ViewportSize.x / 2, cc.ViewportSize.y / 2)
                    local distance = (AccPos - mousePos).magnitude
                    if distance < last then
                        last = distance
                        nearest = v
                    end
                end
            end
        end
        if nearest ~= nil then
            if game.PlaceId == 292439477 then
                for i,v in pairs(game.workspace.Players:GetChildren()) do
                    if v:FindFirstChild(nearest.Name) then 
                        return nearest
                    end
                end
            else
                return nearest
            end
        end
    end
    game:GetService('RunService').Stepped:connect(function()
        if aimbot then
            if getClosestMouse(targetPrt) ~= nil and getClosestMouse(targetPrt).Character ~= nil then
                local move, vis = pos(getClosestMouse(targetPrt).Character[targetPrt].Position)
                if vis then
                    mousemoverel((move.x - mouse.x) * smooth, ((move.y * 0.93) - mouse.y) * smooth)
                    if triggerBot then
                        mouse1press()
                        game:GetService('RunService').Stepped:wait()
                        mouse1release()
                    end
                end
            end
        end
    end)
end

function bloxburg()
    local children = game.ReplicatedStorage.Modules.DataManager:GetChildren()
    for i, child in ipairs(children) do
        child.Name = "remote" .. i
        local childrens = child:GetChildren()
        for i, childs in ipairs(childrens) do
            childs.Name = "remotechild" .. i
        end
    end
    
    function endShift()
        local penis = game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobManager.BloxyBurgersCashier
        for i,v in pairs(require(penis)) do 
            for i2,v2 in pairs(getupvalues(v)) do 
                if typeof(v2) == "table" then 
                     for i3,v3 in pairs(v2) do 
                        if typeof(v3) == "function" then 
                            if debug.getinfo(v3).name == "EndShift" then 
                                v3()
                            end
                        end
                    end
                end
            end
        end
    end
    
    local Main = library.new("Bloxburg")
    local Window = Main.WindowTab('Cheats')

    local functions = Window.SideTab("Functions")
    local Tab = functions.Section("Cheats")
    
    Tab.Toggle("Bloxy Burgers", function(a)
        if a then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(824.88739, 13.6498051, 281.743896)
        local BloxyBurgersCashierModule = require(game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobManager.BloxyBurgersCashier)
        local AddCustomerBubbleFunction = BloxyBurgersCashierModule.AddCustomerBubble
        
        require(game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Scripts.JobManager.BloxyBurgersCashier).AddCustomerBubble = function(Argument_1, Argument_2, Argument_3)
        AddCustomerBubbleFunction(Argument_1, Argument_2, Argument_3)
        wait(1)
        local PhraseData, OrderData = BloxyBurgersCashierModule:GetOrderPhrase(Argument_3:WaitForChild("Order"))
        
        for a,b in pairs(OrderData) do
            if b == 333556924 then
            for a,b in pairs(workspace.BloxyBurgers.CashierWorkstations:GetDescendants()) do
                if b:IsA("TextButton") and b.Name == "Classic" and b.Parent.Parent.Used.Visible == false then
                for c,d in pairs(getconnections(b.Activated)) do
                    d:Fire()
                end
                end
            end
            elseif b == 333556968 then
          for a,b in pairs(workspace.BloxyBurgers.CashierWorkstations:GetDescendants()) do
            if b:IsA("TextButton") and b.Name == "Double" and b.Parent.Parent.Used.Visible == false then
              for c,d in pairs(getconnections(b.Activated)) do
                d:Fire()
              end
            end
          end
        elseif b == 333557004 then
          for a,b in pairs(workspace.BloxyBurgers.CashierWorkstations:GetDescendants()) do
            if b:IsA("TextButton") and b.Name == "Deluxe" and b.Parent.Parent.Used.Visible == false then
              for c,d in pairs(getconnections(b.Activated)) do
                d:Fire()
              end
            end
          end
        elseif b == 333557087 then
          for a,b in pairs(workspace.BloxyBurgers.CashierWorkstations:GetDescendants()) do
            if b:IsA("TextButton") and b.Name == "Cola" and b.Parent.Parent.Used.Visible == false then
              for c,d in pairs(getconnections(b.Activated)) do
                d:Fire()
              end
            end
          end
        elseif b == 333557058 then
          for a,b in pairs(workspace.BloxyBurgers.CashierWorkstations:GetDescendants()) do
            if b:IsA("TextButton") and b.Name == "Fries" and b.Parent.Parent.Used.Visible == false then
              for c,d in pairs(getconnections(b.Activated)) do
                d:Fire()
              end
            end
          end
        end
      end
    
      for a,b in pairs(workspace.BloxyBurgers.CashierWorkstations:GetDescendants()) do
        if b:IsA("ImageButton") and b.Name == "Done" and b.Parent.Parent.Used.Visible == false then
          for c,d in pairs(getconnections(b.Activated)) do
            d:Fire()
          end
        end
      end
    end
    else
    endShift()
    end
    end)
    
    Tab.Button( "Free Private Neighbourhood", function()
        game:GetService("TeleportService"):Teleport(4491408735)
    end)
end

function dungeonquest()
    repeat wait() until game.ReplicatedStorage:FindFirstChild("remotes")

    local Main = library.new("Dungeon Quest")
    local Window = Main.WindowTab('Cheats')

    local dupe = Window.SideTab("Duplicate")

    local Tab = dupe.Section("Settings")
    
    Tab.Box("Item Reciever", function(text)
        itemRec = tostring(text)
    end)
    
    Tab.Toggle("Dupe Weapons", function(a)
        dupeWep = a
    end)
    
    Tab.Toggle("Dupe Helmets", function(a)
        dupeHelm = a
    end)
    
    Tab.Toggle("Dupe Chests", function(a)
        dupeChest = a
    end)
    
    Tab.Toggle("Dupe Spells", function(a)
        dupeSpell = a
    end)
    
    Tab.Button("Start", function()
    wait(1)
    if game.Players.LocalPlayer.Name ~= itemRec then
    game.ReplicatedStorage.remotes.createLobby:InvokeServer("Desert Temple", "Easy", 0, false, false, false)
    game.ReplicatedStorage.remotes.startDungeon:FireServer()
    wait(1)
    game.ReplicatedStorage.remotes.acceptTradeRequest:InvokeServer(game.Players[itemRec])
    if dupeWep then
        for i = 1, 14 do
            game.ReplicatedStorage.remotes.addItemToTradeFolder:FireServer("weapon", i)
        end
    end
    if dupeHelm then
        for i = 1, 14 do
            game.ReplicatedStorage.remotes.addItemToTradeFolder:FireServer("helmet", i)
        end
    end
    
    if dupeChest then
        for i = 1, 14 do
            game.ReplicatedStorage.remotes.addItemToTradeFolder:FireServer("chest", i)
        end
    end
    if dupeSpell then
        for i = 1, 14 do
            game.ReplicatedStorage.remotes.addItemToTradeFolder:FireServer("ability", i)
        end
    end
    game.ReplicatedStorage.remotes.playerAcceptTrade:FireServer()
    end
    end)
end

function jailbreak()
    if getgenv().KeylimeLoaded then
        require(game:GetService("ReplicatedStorage").Game.Notification).new({
            Text = "Keylime is already loaded!",
            Duration = 3
        })
        return
    end
    wait()
    getgenv().KeylimeLoaded = true
    local getupvalues = debug.getupvalues
    local setupvalue = debug.setupvalue
    local getconstants = debug.getconstants
    local getupvalue = debug.getupvalue
    local getproto = getproto or debug.getproto
    local setconstant = setconstant or debug.setconstant
    local NiggaToggle = {
        NoWait = false,
        OpenDoors = false,
        NoClip = false,
        AntiArrest = false,
        Autobreakout = false,
        OPM = false,
        Eject = false,
        GodMode = false,
        AntiRagdoll = false,
        TeamSwitchCD = false,
        CellTime = false,
        FlySpeed = 0,
        AntiFlip = false,
        MobileGarage = false,
        AutoPilot = false,
        InjanHorn = false,
        RainbowCar = false,
        TazeAll = false,
        TazeAura = false,
        Autorob = false,
        Nuke = false,
        Annoy = false,
        Hats = false,
        UIToggle = Enum.KeyCode.RightShift,
        UnlockSkins = false,
    }
    wait(0.1)
    getrenv().lmao = function() return 0/0 end
    local Client = {}
    Client.Hashes = {}
    Client.Doors = {}
    Client.Constants = {}
    Client.VehicleData = {}
    Client.TouchTrigger = {}
    for i,v in pairs(require(game:GetService("ReplicatedStorage").Game.Garage.VehicleData)) do
        if not rawget(v, "NoGarageSpawn") then
            table.insert(Client.VehicleData, v.Make)
        end
    end
    local c = getconstants(getproto(require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Init,1))
    for i, v in pairs(getgc(true)) do
        if type(v) == "table" then
            if rawget(v, "Event") and rawget(v, "Fireworks") then
                Client.em = v.em
                Client.Network = v.Event
                Client.Fireworks = v.Fireworks
                Client.GetVehiclePacket = v.GetVehiclePacket
            elseif rawget(v, "OpenFun") and rawget(v, "State") then
                table.insert(Client.Doors, v)
            elseif rawget(v, "Ragdoll") then
                Client.Falling = v
            elseif rawget(v, "t") and rawget(v, "i") == 0.1 and type(rawget(v, "c")) == "function" then
                local con = getconstants(v.c)
                if table.find(con, "Eject") and table.find(con, "MouseButton1Down") then
                    Client.Constants.Eject = getconstants(getproto(v.c,1))
                end
            elseif rawget(v, "Part") and type(rawget(v, "Fun")) == "function" and not rawget(v, "Tag") then
                table.insert(Client.TouchTrigger, v)
            end
        elseif type(v) == "function" then
            if getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript then -- fetching localscript functions
                local con = getconstants(v)
                if table.find(con, "hems") and #con == 1 then
                    Client.AllHashes = getupvalue(v, 2)
                elseif table.find(con, "SequenceRequireState") then
                    Client.OpenDoor = v
                elseif table.find(con, "LastVehicleExit") and table.find(con, "tick") then
                    Client.Constants.ExitCar = con
                elseif table.find(con, "NitroLoop") and table.find(con, "Nitro1") then
                    Client.Nitro = v
                elseif table.find(con, "Punch") then
                    Client.GuiFunc = v
                elseif table.find(con, "Play") and table.find(con, "Source") and table.find(con, "FireServer") then
                    Client.PlaySound = v
                elseif table.find(con, "ShouldBreakout") and #con == 3 then
                    Client.PoliceFunction = v
                elseif table.find(con, "PlusCash") then
                    Client.PlusCash = v
                elseif table.find(con, "math") and table.find(con, "Random") and #con == 3 then
                    Client.RandomF = v
                end
            elseif getfenv(v).script == game:GetService("ReplicatedStorage").Game.TeamChooseUI then -- fetching teamscript functions
                local con = getconstants(v)
                if table.find(con, "delay") and table.find(con, "assert") then
                    local a = getproto(v, 6)
                    Client.Constants.TeamChange = getconstants(a)
                end
            elseif getfenv(v).script == game:GetService("ReplicatedStorage").Game.Inventory then -- fetching inventory function (godmode)
                local con = getconstants(v)
                if table.find(con, "GetLocalVehiclePacket") then
                    Client.Unequip = v
                end
            elseif getfenv(v).script == game:GetService("ReplicatedStorage").Game.Garage.GarageUI then -- fetching garage function
                local con = getconstants(v)
                if unpack(con) == unpack(c) then
                    Client.ModifyCar = v
                elseif table.find(con, "Type") and table.find(con, "Make") and table.find(con, "FireServer") then
                    Client.SpawnVehicle = v
                end
            elseif getfenv(v).script == game:GetService("ReplicatedStorage").Game.GunShop then -- fetching gunshop function
                local con = getconstants(v)
                if table.find(con, "CanGrab") and table.find(con, "FireServer") then
                    Client.GiveGun = v
                end
            elseif type(v) == "function" and getfenv(v).script == game:GetService("ReplicatedStorage").Game.NukeControl then -- fetching nukecontrol
                local con = getconstants(v)
                if table.find(con, "Nuke") and table.find(con, "Shockwave") then
                    Client.Nuke = v
                end
            end
        end
    end
    local GiveDonut
    local GiveJetPack
    for i,v in pairs(Client.TouchTrigger) do
        if v.Part.Name == "Donut" then
            GiveDonut = v.Fun 
        else
            GiveJetPack = v.Fun
        end
    end
    Client.Arrest = getupvalue(getupvalue(Client.PoliceFunction,1),7)
    Client.BreakOut = getupvalue(getupvalue(Client.PoliceFunction,3),2)
    Client.PickPocket = getupvalue(getupvalue(Client.PoliceFunction,2),2)
    Client.Hashes.ExitCar = (function()
        local const = {}
        for i,v in pairs(Client.Constants.ExitCar) do
            if i < table.find(Client.Constants.ExitCar, "FireServer") and v~="sub" and v~="reverse" then
                table.insert(const,v)
            end
        end
        local go1 = tostring(const[1])
        local go2 = tostring(const[tonumber(table.maxn(const))])
        for i, v in pairs(Client.AllHashes) do
            if go1:sub(1,1) == i:sub(1,1) and go2:sub(#go2,#go2) == i:sub(#i,#i) then
                return i
            end
        end
    end)()
    Client.Hashes.EatDonut = (function()
        local con = getconstants(getproto(require(game:GetService("ReplicatedStorage").Game.Item.Donut).InputBegan, 1))
        local dntconst = {}
            for i,v in pairs(con) do
            if i > table.find(con, "LastConsumed") and i < table.find(con, "FireServer") and v~= "sub" and v ~= "reverse" then
                table.insert(dntconst, v)
            end
        end
        local da = dntconst[1]
        local db = dntconst[table.maxn(dntconst)]
        for i, v in pairs(Client.AllHashes) do
            if da:sub(1,1) == i:sub(1,1) and db:sub(#db,#db) == i:sub(#i,#i) then
                return i
            end
        end
    end)()
    Client.Hashes.TeamChange = (function()
        local tcon = {}
        for i, v in pairs(Client.Constants.TeamChange) do
            if type(v) == "string" and v ~= "Police" and v ~= "Prisoner" and v ~= "sub" and v ~= "reverse" and v ~= "assert" and v ~= "FireServer" then
                table.insert(tcon, v)
            end
        end
        local taa = tcon[1]
        local tbb = tcon[table.maxn(tcon)]
        for i, v in pairs(Client.AllHashes) do
            if taa:sub(1,1) == i:sub(1,1) and tbb:sub(#tbb,#tbb) == i:sub(#i,#i) and tbb:sub(#tbb-1,#tbb-1) == i:sub(#i-1,#i-1) then
                return i
            end
        end
    end)()
    Client.Hashes.Eject = (function()
        local Kcon2 = {}
        for i, v in pairs(Client.Constants.Eject) do
            if type(v) == "string" and v ~= "FireServer" then
                table.insert(Kcon2, v)
            end
        end
        local ka = Kcon2[1]
        local kb = Kcon2[table.maxn(Kcon2)]
        for i, v in pairs(Client.AllHashes) do
            if ka:sub(1,1) == i:sub(1,1) and kb:sub(#kb,#kb) == i:sub(#i,#i) then
                return i
            end
        end
    end)()
    Client.Hashes.Taze = (function()
        local ta = getconstants(require(game:GetService("ReplicatedStorage").Game.Item.Taser).Tase)
        local taa = {}
        for i,v in pairs(ta) do
            if i > table.find(ta, "GetPlayerFromCharacter") and i < table.find(ta, "Name") and v~= "sub" and v ~= "reverse" then
                table.insert(taa, v)
            end
        end
        local tb = taa[1]:sub(1,1)
        local tc = taa[table.maxn(taa)]:sub(#taa[table.maxn(taa)], #taa[table.maxn(taa)])
        for i,v in pairs(Client.AllHashes) do
            if tb:sub(1,1) == i:sub(1,1) and tc:sub(#tc,#tc) == i:sub(#i,#i) then
                return i
            end
        end
    end)()
    if #getupvalues(Client.Network.FireServer) ~= 1 then
        game:GetService("Players").LocalPlayer:Kick("no")
    end
    local oldFS = getupvalue(Client.Network.FireServer, 1);
    setupvalue(Client.Network.FireServer, 1, function(...)
        local args = {...}
        if (getfenv(Client.Network.FireServer) ~= getfenv(2)) then
            game:GetService("Players").LocalPlayer:Kick("no")
        elseif args[2] and type(args[2] == "number") and string.find(tostring(debug.traceback()), "Falling") and NiggaToggle.AntiRagdoll then
            return nil
        end
        return oldFS(...)
    end);
    local oldRagdoll = Client.Falling.Ragdoll
    Client.Falling.Ragdoll = function(...)
        if NiggaToggle.AntiRagdoll then
            return wait(9e9)
        else
            return oldRagdoll(...)
        end
    end
    function TP(cframe)
        if Client.GetVehiclePacket() then
            if Client.GetVehiclePacket().Model.Name ~= "Volt" or Client.GetVehiclePacket().Model.Name ~= "Patrol" then
                Client.GetVehiclePacket().Model:SetPrimaryPartCFrame(cframe);
                return
            else
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = cframe
                return
            end
        else
            Client.Network:FireServer(Client.Hashes.ExitCar)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = cframe
            return
        end
    end
    function Punch(num)
        getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript).tick = function() return 0/0 end
        for i=1, num do
            Client.GuiFunc({Name = "Punch"}, true)
        end
        getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript).tick = tick
    end
    function Equip(name)
        local thing
        for i,v in pairs(getgc(true)) do
            if type(v) == "table" and rawget(v, 'i') and rawget(v, 'Frame') and rawget(v, 'Name') then
                if v.Name == name then
                    thing = v
                end
            end
        end
        require(game:GetService("ReplicatedStorage").Game.ItemSystem.ItemSystem).Equip(game:GetService("Players").LocalPlayer, thing)
        return
    end
    function GrabClickGun()
        for i,v in pairs(workspace.Givers:GetChildren()) do
            if v.Name == "Guns" then
                fireclickdetector(v.ClickDetector)
            end
        end
        return
    end
    function zigzag(X) 
        return math.acos(math.cos(X*math.pi))/math.pi 
    end
    local hatclick = (function()
        for i,v in pairs(game:GetService("Workspace").Givers:GetChildren()) do
            if v.Name == 'Station' then
                if v:FindFirstChild("Item").Value == 'HatPolice' then
                    return v.ClickDetector
                end
            end
        end
    end)()
    function firehatoff()
        fireclickdetector(hatclick)
        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('HatPolice') then 
            game:GetService('Players').LocalPlayer.Character.HatPolice.Parent = workspace
        else
            return
        end
    end
    function Taze(plr)
        if not plr:IsA("Player") then return end
        pcall(function()
            if plr.Character then
                Client.Network:FireServer(Client.Hashes.Taze, plr.Name, plr.Character.HumanoidRootPart, plr.Character.HumanoidRootPart.Position)
            end
        end)
    end
    require(game:GetService("ReplicatedStorage").Game.ItemSystem.ItemSystem).Fake = function() return end
    function sendn(title, text, time)
        game.StarterGui:SetCore("SendNotification", {
            Title = title;
            Text = text; 
            Duration = time; 
        })
    end
    function SendN(text,time)
        require(game:GetService("ReplicatedStorage").Game.Notification).new({
            Text = text,
            Duration = time
        })
    end
    local whitelisted = {}
    local locations = {
        {'Jewelry Out', CFrame.new(156.103851, 18.540699, 1353.72388)},
        {'Jewelry In', CFrame.new(133.300705, 17.9375954, 1316.42407)},
        {'Bank Out', CFrame.new(11.6854906, 17.8929214, 788.188171)},
        {'Bank In', CFrame.new(24.6513691, 19.4347649, 853.291687)},
        {'Museum Out', CFrame.new(1103.53406, 138.152878, 1246.98511)},
        {'Museum In', CFrame.new(1071.72, 102.8, 1191.9)},
        {'Donut Shop', CFrame.new(270.763885, 18.4229183, -1762.90149)},
        {'Gas Station', CFrame.new(-1584.1051, 18.4732189, 721.38739)},
        {'Power Plant', CFrame.new(691.559326, 37.6575089, 2362.05591)},
        {'Prison Cells', CFrame.new(-1461.07605, -0.318537951, -1824.14917)},
        {'Prison Yard', CFrame.new(-1219.36316, 17.7750931, -1760.8584)},
        {'Prison Sewer', CFrame.new(-1050.70667, 0.7002424, -1498.72766)},
        {'Prison Parking', CFrame.new(-1173.36951, 18.698061, -1533.47656)},
        {'Gun Shop', CFrame.new(-27.8670673, 17.7929249, -1774.66882)},
        {'1M Shop', CFrame.new(388.804688, 17.5929279, -1701.1698)},
        {'Volcano Base', CFrame.new(1726.72266, 50.4146309, -1745.76196)},
        {'City Base', CFrame.new(-244.824478, 17.8677788, 1573.81616)},
        {'Police HQ1', CFrame.new(-1134.69604, 17.9251575, -1586.79395)},
        {'Police HQ2', CFrame.new(738.103577, 38.1275024, 1134.48059)},
        {'Military Base', CFrame.new(766.283386, 18.0144463, -324.15921)},
        {'Evil Lair', CFrame.new(1735.52405, 18.1646328, -1726.05249)},
        {'Secret Agent Base', CFrame.new(1506.60754, 69.8824005, 1634.42456)},
        {'Garage', CFrame.new(-336.791779, 18.2407684, 1137.49451)},
        {'Glider Shop', CFrame.new(137.43399, 18.1547852, -1768.24658)},
        {'Lookout', CFrame.new(1328.05725, 166.614426, 2609.93457)},
        {'Airport', CFrame.new(-1227.47449, 64.4552231, 2787.64233)},
        {'Boat Cave', CFrame.new(1870.72498, 31.4386101, 1896.98865)},
        {'Port', CFrame.new(-423.029663, 21.2136765, 2023.55713)},
        {'Volcano Inside', CFrame.new(1704.46484, 25.0370979, -1775.46484)},
        {'Prison Camaro', CFrame.new(-951.755493, 18.5451126, -1446.42664)},
        {'Lamborghini', CFrame.new(146.728821, 17.5929279, 774.655396)},
        {'Bugatti', CFrame.new(241.109451, 17.6066723, 1362.49316)},
        {'McLaren', CFrame.new(597.850708, 37.712925, 1649.81897)},
        {'Pickup Truck', CFrame.new(-1543.02686, 18.3732185, 721.518494)},
        {'Model3', CFrame.new(-117.721481, 17.5907402, 547.516052)},
        {'Mini Cooper', CFrame.new(760.116577, 17.8929214, -1228.13806)},
        {'Dirtbike', CFrame.new(1643.61707, 18.8864899, 233.026291)},
        {'SUV', CFrame.new(-1066.26172, 18.6751556, -1476.00732)},
        {'Dune Buggy', CFrame.new(580.013916, 17.1554928, -458.795807)},
        {'ATV', CFrame.new(-1452.651, 24.8182373, 202.176361)},
        {'Mustang', CFrame.new(-97.1472931, 18.2549458, -1724.10986)},
        {'Porsche', CFrame.new(1111.16809, 101.783577, 1296.94312)},
        {'Ambulance', CFrame.new(-139.396881, 18.1840897, 1098.80212)},
        {'UFO', CFrame.new(775.515747, 18.3745003, -142.552948)},
        {'SWAT Van', CFrame.new(-1356.85388, 17.9232101, -1534.93152)},
        {'Wraith', CFrame.new(1687.08911, 50.4146309, -1704.4657)},
        {'Ferrari', CFrame.new(-1500.52051, 49.4602127, 1804.38611)},
        {'Classic', CFrame.new(1194.28406, 106.283951, 1176.69458)},
        {'Audi R8', CFrame.new(1714.05151, 18.646801, -1691.49756)},
        {'Raptor', CFrame.new(1520.34692, 73.6122742, 1741.82507)},
        {'Police Motorcycle', CFrame.new(718.890076, 38.3909264, 1072.3656)},
        {'Firetruck', CFrame.new(-967.847168, 33.1665268, 1320.79968)},
        {'Jet Skis', CFrame.new(-505.554657, 18.6864834, 812.503174)},
    }
    local Locations = {}
    for i,v in pairs(locations) do
        table.insert(Locations, v[1])
    end
    local Main = library.new("Keylime Hub")
    local jptab = Main.WindowTab('Jailbreak')
    local tptab = jptab.SideTab("Teleports").Section("Teleports")
    local playertab = jptab.SideTab("Player").Section("Player")
    local vehicle = jptab.SideTab("Vehicle").Section("Vehicle")
    local combatab = jptab.SideTab("Combat").Section("Combat")
    local farming = jptab.SideTab("Farming").Section("Farming")
    local funtab = jptab.SideTab("Fun").Section("Fun")
    local setting = jptab.SideTab("Settings").Section("Settings")
    universal(Main)
    tptab.Box("Teleport Player", function(callback)
        for i,v in next, game:GetService("Players"):GetPlayers() do
            if string.find(string.lower(v.Name), string.lower(tostring(callback)))  then
                TP(v.Character.HumanoidRootPart.CFrame)
                return
            end
        end
    end)
    tptab.Dropdown("Teleports", Locations, function(selected)
        for i,v in pairs(locations) do
            if v[1] == tostring(selected) then
                TP(v[2])
                return
            end
        end
    end)
    wait(0.1)
    _G.WalkSpeed = 16
    playertab.Slider("WalkSpeed", 16, 500, 16, function(callback)
        _G.WalkSpeed = callback
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = callback
    end)
    playertab.Slider("JumpPower", 50, 500, 50, function(callback)
        game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = callback
    end)
    playertab.Toggle("No Wait", function(arg)
        NiggaToggle.NoWait = arg
    end)
    playertab.Toggle("Open Doors", function(arg)
        NiggaToggle.OpenDoors = arg
    end)
    playertab.Toggle("NoClip", function(arg)
        NiggaToggle.NoClip = arg
    end)
    playertab.Toggle("Anti Arrest (20s cd)", function(arg)
        NiggaToggle.AntiArrest = arg
    end)
    playertab.Toggle("Auto Breakout", function(arg)
        NiggaToggle.Autobreakout = arg
    end)
    playertab.Toggle("One Punch Man", function(arg)
        NiggaToggle.OPM = arg
    end)
    playertab.Toggle("Eject All", function(arg)
        NiggaToggle.Eject = arg
    end)
    playertab.Toggle("God Mode", function(arg)
        NiggaToggle.GodMode = arg
        if NiggaToggle.GodMode then
            setconstant(GiveDonut,1,"lmao")
            setconstant(Client.Unequip,12,"Fake")
        else
            setconstant(GiveDonut,1,"tick")
            setconstant(Client.Unequip,12,"Unequip")
        end
    end)
    playertab.Toggle("Anti Ragdoll", function(arg)
        NiggaToggle.AntiRagdoll = arg
    end)
    playertab.Toggle("No Team Change Cooldown", function(arg)
        if arg then
            require(game:GetService("ReplicatedStorage").Resource.Settings).Time.BetweenTeamChange = 0
        else
            require(game:GetService("ReplicatedStorage").Resource.Settings).Time.BetweenTeamChange = 24
        end
    end)
    playertab.Toggle("No Cell Time", function(arg)
        if arg then
            require(game:GetService("ReplicatedStorage").Resource.Settings).Time.Cell = 0
        else
            require(game:GetService("ReplicatedStorage").Resource.Settings).Time.Cell = 20
        end
    end)
    playertab.Button("Give JetPack", GiveJetPack)
    playertab.Button("Inf JetPack Fuel", function()
        local JPFuel = getupvalue(require(game:GetService("ReplicatedStorage").Game.JetPack.JetPack).Init,7)
        JPFuel.LocalMaxFuel = math.huge
        JPFuel.LocalFuel = math.huge
        JPFuel.LocalFuelType = "Rocket"
    end)
    playertab.Button("PickPocket", function()
        local ogpos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
        for i,v in pairs(game:GetService('Players'):GetPlayers()) do
            if tostring(v.Team) == "Police" then
                if v.Character:FindFirstChild("HumanoidRootPart") then
                    if not v.Character:FindFirstChild("InVehicle") then
                        TP(v.Character.HumanoidRootPart.CFrame)
                        wait(0.5)
                        for count = 1, 10 do
                            Client.PickPocket(v)
                        end
                        wait()
                        TP(ogpos)
                        return
                    end
                end
            end
        end
    end)
    playertab.Dropdown("Change Team", {"Prisoner", "Police"}, function(selected)
        Client.Network:FireServer(Client.Hashes.TeamChange, tostring(selected))
    end)
    wait(0.1)
    vehicle.Box("Engine Speed", function(callback)
        if tonumber(callback) then
            Client.GetVehiclePacket().GarageEngineSpeed = callback
        end
    end)
    vehicle.Box("Height", function(callback)
        if tonumber(callback) then
            Client.GetVehiclePacket().Height = callback
        end
    end)
    vehicle.Box("Turn Speed", function(callback)
        if tonumber(callback) then
            Client.GetVehiclePacket().TurnSpeed = callback
        end
    end)
    vehicle.Box("Brake", function(callback)
        if tonumber(callback) then
            Client.GetVehiclePacket().GarageBrakes = callback
        end
    end)
    local x = game:GetService("Players").LocalPlayer:GetMouse()
    local z = workspace.CurrentCamera
    function FlyPart(ak, al)
        local am = Instance.new("Folder")
        am.Name = "Storage"
        for E, an in pairs(ak:GetChildren()) do
            if an:IsA("BodyGyro") then
                an.Parent = am
            end
        end
        local ao = Instance.new("BodyPosition", ak)
        ao.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        ao.Name = "Position"
        local ap = Instance.new("BodyGyro", ak)
        ap.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
        ap.Name = "Rotate"
        z.CameraSubject = ak
        local aq = 0
        local ar = x.KeyDown:Connect(function(as)
            if as == "w" then
                if al then
                    aq = NiggaToggle.FlySpeed
                else
                    aq = tonumber("-" .. tostring(NiggaToggle.FlySpeed))
                end
            elseif as == "s" then
                if al then
                    aq = tonumber("-" .. tostring(NiggaToggle.FlySpeed))
                else
                    aq = NiggaToggle.FlySpeed
                end
            end
        end)
        x.KeyUp:Connect(function(as)
            if as == "w" then
                aq = 0
            elseif as == "s" then
                aq = 0
            end
        end)
        local at = {}
        at.IsRunning = true
        at.Part = ak
        at.Storage = am
        at.MT = ar
        spawn(function()
            repeat
                local au = z.CFrame
                local av = ak.Position
                local aw = (av - au.p).Magnitude
                ao.Position = (au * CFrame.new(0, 0, tonumber("-" .. tostring(aw)) + aq)).p + Vector3.new(0, 0.2225, 0)
                ap.CFrame = au
                wait()
            until at.IsRunning == false or z.CameraSubject ~= ak
            ao:Remove()
            ap:Remove()
            for E, ax in pairs(at.Storage:GetChildren()) do
                ax.Parent = at.Part
            end
            at.MT:Disconnect()
            at.Storage:Remove()
        end)
        return at
    end
    local A = workspace.Vehicles
    function GetVehicleMain()
        local ai = game:GetService("Players").LocalPlayer.Name
        for E, aj in pairs(A:GetChildren()) do
            if aj:FindFirstChild("Seat") and aj.Seat:FindFirstChild("PlayerName") and aj:FindFirstChild("Engine") then
                if aj.Seat.PlayerName.Value == ai then
                    return aj.Engine, false
                end
            elseif aj:FindFirstChild("Seat") and aj.Seat:FindFirstChild("PlayerName") and aj:FindFirstChild("Model") then
                if aj.Seat.PlayerName.Value == ai then
                    if aj.Model:FindFirstChild("Body") then
                        return aj.Model.Body, true
                    end
                end
            end
        end
    end
    vehicle.Button("Car Fly", function()
        if GetVehicleMain() ~= nil then
            SendN("Vehicle Fly Enabled", 2)
            local az, al = GetVehicleMain()
            local aA = FlyPart(az, al)
            if al then
                repeat
                    wait()
                until az.Parent.Parent.Seat.PlayerName.Value ~= d.Name
            else
                repeat
                    wait()
                until az.Parent.Seat.PlayerName.Value ~= game:GetService("Players").LocalPlayer.Name
            end
            wait(0.1)
            z.CameraSubject = N
            SendN("Vehicle Fly Disabled", 2)
        else
            SendN("Vehicle Not Found", 2)
        end
    end)
    vehicle.Slider("Fly Speed", 25,200,50, function(callback)
        NiggaToggle.FlySpeed = callback
    end)
    vehicle.Toggle("Anti Flip Over", function(arg)
        NiggaToggle.AntiFlip = arg
    end)
    vehicle.Toggle("Mobile Garage", function(arg)
        debug.setupvalue(require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Toggle, 5, arg)
    end)
    vehicle.Toggle("Elon Musk Mode", function(arg)
        debug.setupvalue(require(game:GetService("ReplicatedStorage").Module.AlexChassis).OnAction, 8, arg)
    end)
    vehicle.Toggle("Injan Horn", function(arg)
        local id = game:GetService("Players").LocalPlayer.UserId
        require(game:GetService("ReplicatedStorage").Resource.Settings).Perm.InjanHorn.Id[tostring(id)] = arg
    end)
    vehicle.Toggle("Rainbow Car (FLASH WARNING)", function(arg)
        NiggaToggle.RainbowCar = arg
    end)
    vehicle.Button("Unlock Skins", function()
        for i,v in pairs(require(game:GetService("ReplicatedStorage").Game.Garage.StoreData.Color).Items) do
            require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.InteriorMainColor[v.Name] = true
            require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.WindowColor[v.Name] = true
            require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.WheelColor[v.Name] = true
            require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.SpoilerColor[v.Name] = true
            require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.InteriorDetailColor[v.Name] = true
            require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.HeadlightsColor[v.Name] = true
            require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.SeatColor[v.Name] = true
            require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.Glow[v.Name] = true
            require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.BodyColor[v.Name] = true
            require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.SecondBodyColor[v.Name] = true
        end
        for i,v in pairs(require(game:GetService("ReplicatedStorage").Game.Garage.StoreData.Engine).Items) do
            require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.Engine[v.Name] = true
        end
        for i,v in pairs(require(game:GetService("ReplicatedStorage").Game.Garage.StoreData.Brakes).Items) do
            require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.Brakes[v.Name] = true
        end
        for i,v in pairs(require(game:GetService("ReplicatedStorage").Game.Garage.StoreData.SuspensionHeight).Items) do
            require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.SuspensionHeight[v.Name] = true
        end
        for i,v in pairs(require(game:GetService("ReplicatedStorage").Game.Garage.StoreData.Rim).Items) do
            require(game:GetService("ReplicatedStorage").Game.Garage.GarageUI).Owned.Rim[v.Name] = true
        end
        for i,v in pairs(require(game:GetService("ReplicatedStorage").Game.ItemSkin.ItemSkinList)) do
            require(game:GetService("ReplicatedStorage").Game.ItemSkin.ItemSkin).ItemSkinsOwned[v.Name] = true
        end
    end)
    vehicle.Button("Inf Nitro SS", function()
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("InVehicle") then
            debug.setconstant(Client.Nitro, 1, "lmao")
            require(game:GetService("ReplicatedStorage").Game.Notification).new({
                Text = "Use nitro and it will be infinite!",
                Duration = 2
            })
        else
            require(game:GetService("ReplicatedStorage").Game.Notification).new({
                Text = "Make sure you are in a vehicle!",
                Duration = 2
            })
        end
    end)
    vehicle.Dropdown("Spawn Vehicle", Client.VehicleData, function(selected)
        for i,v in pairs(require(game:GetService("ReplicatedStorage").Game.Garage.VehicleData)) do
            if tostring(v.Make) == tostring(selected) then
                Client.SpawnVehicle(v)
            end
        end
    end)
    wait(0.1)
    local guns = { "AK47", "Uzi", "RocketLauncher", "Shotgun", "Pistol", "PlasmaPistol", "Revolver", "Rifle", "Sniper", "Taser", "ForcefieldLauncher", "Flintlock", "Grenade" }
    combatab.Button("Grab All Guns", function()
        GrabClickGun()
        for i,v in pairs(guns) do
            Client.GiveGun({ Part = { Parent = { Name = v } }, CanGrab = true }, true)
        end
    end)
    combatab.Button("Gun Mods", function()
        for i,v in pairs(game:GetService("ReplicatedStorage").Game.ItemConfig:GetChildren()) do
            local cst = require(v)
            cst.CamShakeMagnitude = 0
            cst.MagSize = math.huge
            cst.ReloadTime = 0
            cst.FireAuto = true
            cst.FireFreq = 30
        end
    end)
    combatab.Toggle("Taze All", function(arg)
        NiggaToggle.TazeAll = arg
    end)
    combatab.Toggle("Taze Aura", function(arg)
        NiggaToggle.TazeAura = arg
    end)
    wait(0.1)
    _G.BankRobbed = nil
    _G.JewRobbed = nil
    _G.MusRobbed = nil
    _G.TrainRobbed = nil
    _G.PlaneRobbed = nil
    spawn(function()
        while wait(2) do
            if workspace.Banks:GetChildren()[1].Extra.Sign.Decal.Transparency == 0 then
                _G.BankRobbed = false
            end
            if workspace.Jewelrys:GetChildren()[1].Extra.Sign.Decal.Transparency == 0 then
                _G.JewRobbed = false
            end
            for i,v in pairs(workspace.Museum.Roof.Hole:GetChildren()) do
                if v:GetChildren()[1] then
                    if v.Transparency == 0 then
                        _G.MusRobbed = false
                    end
                end
            end
            if not workspace.Trains:GetChildren()[1] then
                _G.TrainRobbed = false
            end
            if not workspace:FindFirstChild("Plane") then
                _G.TrainRobbed = false
            end
        end
    end)
    _G.AutoRobbing = nil
    local notificationcreate = sendn
    local function TPBuilding()
        for i,v in pairs(workspace.Buildings:GetDescendants()) do
            if v:IsA("Texture") and v.Color3 == Color3.fromRGB(83,123,186) then
                v.Parent.CanCollide = false
                TP(v.Parent.CFrame)
                break
            end
        end
    end
    function JewBox()
        for i,v in pairs(workspace.Jewelrys:GetDescendants()) do
            if v.Name == "Boxes" then
                local part = v:GetChildren()[math.random(1,table.maxn(v:GetChildren()))]
                local pos = CFrame.new(part.Position - part.CFrame.LookVector * 2, part.Position)
                return pos
            end
        end
    end
    function JewlRobbing()
        if _G.AutoRobbing or _G.JewRobbed then return end
            _G.AutoRobbing = true
            for i,v in pairs(game.Workspace.Jewelrys:GetDescendants()) do
                if v:IsA("Decal") then
                    if v.Parent.Name == "Sign" then
                        if v.Transparency > 0.5 then
                        notificationcreate('Jewelry', 'Open', 3)
                        TP(CFrame.new(91.6347504, 20.2128963, 1302.44189, 0.164838046, 0.0733769536, -0.983587563, 0.0025376468, 0.997194052, 0.0748172998, 0.986317396, -0.0148287192, 0.164189309))
                        for i,v in next, game:GetService("Workspace"):GetDescendants() do
                            if v.Name == "BarbedWire" and not string.find(v:GetFullName(), "MilitaryIsland") then
                                v:Destroy()
                            end
                        end
                        wait(2)
                        for count = 1, 4 do
                            TP(JewBox())
                            wait(0.5)
                            Punch(8)
                            wait(0.5)
                        end
                        wait(2)
                        TPBuilding()
                        _G.JewRobbed = true
                        _G.AutoRobbing = false
                    elseif v.Transparency == 0 then
                        notificationcreate('Jewelry', 'Closed', 3)
                        TPBuilding()
                        _G.AutoRobbing = false
                    end
                end
            end
        end
    end
    local function GetMoneyCapacity(a)local b=tostring(a)or a.Text;local c=b:sub(4,10)local d=c:gsub(",","")local e=tonumber(d)return e end
    function getNumber(pretty)
        local lol = ''
        for i = 1, pretty:len() do
            local char = pretty:sub(i, i)
            if char:match('%d') then
                lol = lol .. char
            end
        end
        return tonumber(lol)
    end
    function BankRobing()
        if _G.AutoRobbing or _G.BankRobbed then return end
        _G.AutoRobbing = true
        for i,v in pairs(game.Workspace.Banks:GetDescendants()) do
            if v:IsA("Decal") then
                if v.Parent.Name == "Sign" then
                    if v.Transparency > 0.5 then
                        game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CollectMoney.Money.Text = ""
                        notificationcreate('Bank', 'Open', 3)
                        TP(CFrame.new(30.8057957, 20.307003, 854.226563, -0.00389732886, 0.172487527, -0.98500371, -0.00170719274, 0.985008895, 0.172495201, 0.999990761, 0.00235385355, -0.00354445633))
                        for i,v in pairs(game:GetService("Workspace").Banks:GetDescendants()) do
                            if v:IsA("Part") then
                                if v.Name == "TriggerDoor" then
                                    TP(v.Parent.Begin.CFrame + Vector3.new(0,5,0))
                                    wait(1)
                                    TP(v.CFrame + Vector3.new(0,5,0))
                                end
                            end
                        end
                        wait(2)
                        for i,v in next, game:GetService("Workspace"):GetDescendants() do
                            if v.Name == "BarbedWire" and not string.find(v:GetFullName(), "MilitaryIsland") then
                                v:Destroy()
                            end
                        end
                        for i,v in pairs(game:GetService("Workspace").Banks:GetDescendants()) do
                            if v:IsA("Part") then
                                if v.Name == "Money" then
                                    TP(v.CFrame + Vector3.new(0,5,0))
                                end
                            end
                        end
                        wait(5)
                        repeat wait(0.5)
                        until getNumber(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CollectMoney.Money.Text) == GetMoneyCapacity(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CollectMoney.Maximum.Text)
                        TP(CFrame.new(1761.20618, 52.1366386, -1790.52783, -0.608304322, 0.063044101, -0.791196227, 0.018261876, 0.997688293, 0.0654573366, 0.793493927, 0.0253692511, -0.608049333))
                        wait(2)
                        TPBuilding()
                        _G.BankRobbed = true
                        _G.AutoRobbing = false
                    elseif v.Transparency == 0 then
                        notificationcreate('Bank', 'Closed', 3)
                        TPBuilding()
                        _G.AutoRobbing = false
                    end
                end
            end
        end
    end
    function checkmuseum()
        for i,v in pairs(workspace.Museum.Roof.Hole:GetChildren()) do
            if v:GetChildren()[1] then
                if v.Transparency == 0 then
                    return false
                else
                    return true
                end
            end
        end
    end
    function robmuseum()
        if _G.AutoRobbing or _G.MusRobbed then return end
        _G.AutoRobbing = true
        if not checkmuseum() then
            for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
                if v.Name == "Place Dynamite" and tostring(v.Tag) ~= "BankDoor" and v.Enabled then
                    v:Callback(true)
                end
            end
        end
        wait(1)
        if not checkmuseum() then 
            notificationcreate('Museum', 'Closed', 3)
            _G.AutoRobbing = false
            TP(CFrame.new(1730.87537, 20.45331, -1727.92773))
            return 
        end
        for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
            if rawget(v, "Name") then
                if string.find(v.Name, "Grab") and v.Name ~= "Grab" then
                    if v.Name == "Grab Bone" and v.Enabled then
                        TP(v.Tag.CFrame)
                        wait(1)
                        for count = 1,8 do
                            v:Callback(true)
                        end
                        break
                    end
                end
            end
        end
        TPBuilding() 
        notificationcreate('Museum', 'bypassing', 5)
        wait(16)
        TP(CFrame.new(1761.20618, 52.1366386, -1790.52783))
        wait(2)
        TPBuilding()
        require(game:GetService("ReplicatedStorage").Game.ItemSystem.ItemSystem).Unequip()
        _G.MusRobbed = true
        _G.AutoRobbing = false
        return
    end
    function CheckPlane()
        for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
            if v.Name == "Inspect Crate" then
                return v.Part
            end
        end
    end
    function RobPlane()
        if _G.AutoRobbing or _G.PlaneRobbed then return end
        _G.AutoRobbing = true
        if CheckPlane() then
            TP(CheckPlane().CFrame)
            wait(0.5)
            for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
                if v.Name == "Inspect Crate" then
                    v:Callback(v, true)
                end
            end
            wait(1)
            TP(CFrame.new(-451.725647, 78.4250259, 2056.63135))
            wait(4)
            TP(CFrame.new(-393.667542, 21.2136765, 2025.38611))
            wait(1.5)
            TPBuilding()
            require(game:GetService("ReplicatedStorage").Game.ItemSystem.ItemSystem).Unequip()
            _G.PlaneRobbed = true
            _G.AutoRobbing = false
        else
            _G.AutoRobbing = false
            sendn("Plane", "Closed", 2)
        end
    end
    function CheckTrainType()
        for i,v in pairs(workspace.Trains:GetChildren()) do
            if v.Name == "BoxCar" then
                return v.Model.Rob
            elseif v.Name == "SteamEngine" then
                return "Passenger"
            end
        end
    end
    _G.disabletrain = true
    function RobTrain()
        if _G.AutoRobbing or _G.TrainRobbed then return end
        _G.AutoRobbing = true
        if CheckTrainType() then
            if tostring(CheckTrainType()) == "Passenger" then
                for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
                    if v.Name == "Grab briefcase" then
                        v:Callback(true)
                        wait(1)
                    end
                 end
                 TP(CFrame.new(1761.20618, 52.1366386, -1790.52783))
                 require(game:GetService("ReplicatedStorage").Game.ItemSystem.ItemSystem).Unequip()
                 wait(2)
                 TPBuilding()
                 _G.TrainRobbed = true
                 _G.AutoRobbing = false
            else
                if _G.disabletrain then 
                    _G.AutoRobbing = false
                    return 
                end
                game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CollectMoney.Money.Text = ""
                for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
                    if v.Name == "Open Door" or v.Name == "Breach Vault" then
                        v:Callback(true)
                    end
                end
                repeat wait()
                    TP(CheckTrainType().Gold.CFrame + Vector3.new(0,0.1,0))
                until getNumber(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CollectMoney.Money.Text) == GetMoneyCapacity(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CollectMoney.Maximum.Text)
                wait()
                TP(CFrame.new(1730.87537, 20.45331, -1727.92773))
                wait()
                _G.TrainRobbed = true
                _G.AutoRobbing = false
            end
        else
            TPBuilding()
            sendn("Train", "Closed", 2)
            _G.AutoRobbing = false
            return false
        end
    end
    farming.Toggle("Auto Rob", function(arg)
        NiggaToggle.Autorob = arg
        _G.AutoRobbing = false
    end)
    farming.Button("Rob Small Stores", function()
        for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
            if v.Name == "Rob" then
                v:Callback(v, true)
            end
        end
    end)
    farming.Button("Remove Lasers", function()
        for i,v in next, game:GetService("Workspace"):GetDescendants() do
            if v.Name == "BarbedWire" and not string.find(v:GetFullName(), "MilitaryIsland") then
                v:Destroy()
            end
        end
    end)
    farming.Button("Arrest All", function()
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if not table.find(whitelisted, v.Name) then
                if v.Team == game.Teams.Criminal then
                    if v.Character:FindFirstChild('InVehicle') then
                        Client.Network:FireServer(Client.Hashes.Eject, v.Name)
                    end
                    if not v.Character:FindFirstChild("Handcuffs") then
                        Equip("Handcuffs")
                        TP(v.Character.HumanoidRootPart.CFrame);
                        wait(0.1)
                        Client.Arrest(v)
                        Client.Arrest(v)
                        Client.Arrest(v)
                        TP(v.Character.HumanoidRootPart.CFrame);
                        wait(0.1)
                        Client.Arrest(v)
                        Client.Arrest(v)
                        Client.Arrest(v)
                        TP(v.Character.HumanoidRootPart.CFrame);
                        wait(0.1)
                        Client.Arrest(v)
                        Client.Arrest(v)
                        Client.Arrest(v)
                        TP(v.Character.HumanoidRootPart.CFrame);
                        wait(0.1)
                        Client.Arrest(v)
                        Client.Arrest(v)
                        Client.Arrest(v)
                        TP(v.Character.HumanoidRootPart.CFrame);
                        wait(1)
                    end
                end
            end
        end
    end)
    wait(0.1)
    funtab.Box("Play Firework", function(callback)
        if tonumber(callback) then
            Client.Fireworks(tonumber(callback))
        end
    end)
    funtab.Box("Give Money", function(callback)
        if tonumber(callback) then
            Client.PlusCash(tonumber(callback), "this is fake nigga")
        end
    end)
    funtab.Toggle("Click Nuke", function(arg)
        NiggaToggle.Nuke = arg
    end)
    funtab.Toggle("Annoy Server", function(arg)
        NiggaToggle.Annoy = arg
    end)
    funtab.Toggle("Spam Hats", function(arg)
        NiggaToggle.Hats = arg
    end)
    funtab.Button("Volcano Eruption", function()
        firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, workspace.LavaFun.Lavatouch, 0)
        wait()
        firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, workspace.LavaFun.Lavatouch, 1)
    end)
    funtab.Button("Teleport All Unanchored Part to You", function()
        for index, part in pairs(workspace:GetDescendants()) do
            if part:IsA("Part") and part.Anchored == false and part:IsDescendantOf(game:GetService("Players").LocalPlayer.Character) == false then
                game.Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)*math.huge
                game.Players.LocalPlayer.SimulationRadius = math.pow(math.huge,math.huge)*math.huge
                part.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(10,50),50,math.random(10,50)))
            end
        end
    end)
    funtab.Button("Teleport All Vehicle to You", function()
        for index, part in pairs(workspace.Vehicles:GetDescendants()) do
            if part:IsA("Part") and part.Anchored == false and part:IsDescendantOf(game:GetService("Players").LocalPlayer.Character) == false then
                game.Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)*math.huge
                game.Players.LocalPlayer.SimulationRadius = math.pow(math.huge,math.huge)*math.huge
                part.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(10,50),50,math.random(10,50)))
            end
        end
    end)
    local sounds = {}
    for i,v in pairs(require(game:GetService("ReplicatedStorage").Resource.Settings).Sounds) do
        table.insert(sounds, i)
    end
    funtab.Dropdown("Play Sound", sounds, function(callback)
        Client.PlaySound(tostring(callback), {
            Source = game:GetService("Players").LocalPlayer.Character, 
            Volume = math.huge, 
            Multi = true,
            MaxTime = 5
        }, false);
    end)
    wait(0.1)
    setting.Box("Whitelist Player", function(callback)
        for i,v in next, game:GetService("Players"):GetPlayers() do
            if string.find(string.lower(v.Name), string.lower(tostring(callback))) and not table.find(whitelisted, v.Name) then
                table.insert(whitelisted, v.Name)
            end
        end
    end)
    setting.Box("Unwhitelist Player", function(callback)
        for i,v in next, game:GetService("Players"):GetPlayers() do
            if string.find(string.lower(v.Name), string.lower(tostring(callback))) then
                if table.find(whitelisted, v.Name) then
                    table.remove(whitelisted, table.find(whitelisted, v.Name))
                end
            end
        end
    end)
    setting.Button("Rejoin To Same Server", function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
    end)
    setting.KeyBind("Toggle GUI Key", function(obj)
        wait(0.1)
        NiggaToggle.UIToggle = obj
    end)
    game:GetService("RunService").Stepped:Connect(function()
        if NiggaToggle.NoClip then
            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
        end
        game.Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)*math.huge
        game.Players.LocalPlayer.SimulationRadius = math.pow(math.huge,math.huge)*math.huge
    end)
    game:GetService("UserInputService").InputBegan:Connect(function(input, ape)
        if ape then return end
        if input.KeyCode == Enum.KeyCode.F and NiggaToggle.OPM then
            Punch(20)
        end
    end)
    game:GetService("Players").LocalPlayer:GetMouse().Button1Down:Connect(function()
        if NiggaToggle.Nuke then
            require(game:GetService("ReplicatedStorage").Game.Notification).new({
                Text = "Nuke is incoming! (client sided)",
                Duration = 1.5
            })
            local bruh = game:GetService("Players").LocalPlayer:GetMouse().Hit.p
            Client.Nuke({
                Nuke = {
                    Origin = Vector3.new(0,0,0),
                    Speed = 650,
                    Duration = 10,
                    Target = bruh,
                    TimeDilation = 1.5
                },
                Shockwave = {
                    Duration = 20,
                    MaxRadius = 500
                }
            })
        end
    end)
    spawn(function()
        while wait(3) do
            if NiggaToggle.OpenDoors then
                pcall(function()
                    for i,v in next, Client.Doors do
                        Client.OpenDoor(v)
                    end
                end)
            end
            if NiggaToggle.Autobreakout then
                if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Team == game.Teams.Prisoner then
                    TP(CFrame.new(1730.87537, 20.45331, -1727.92773))
                    require(game:GetService("ReplicatedStorage").Game.Notification).new({
                        Text = "Escaping...",
                        Duration = 2
                    })
                    if NiggaToggle.Autorob then
                        _G.AutoRobbing = false
                    end
                end
            end
        end
    end)
    spawn(function()
        while wait(1) do
            if NiggaToggle.AntiArrest then
                repeat wait()
                until game:GetService("Players").LocalPlayer.Character:FindFirstChild("Handcuffs")
                Client.BreakOut(game:GetService("Players").LocalPlayer)
                require(game:GetService("ReplicatedStorage").Game.ItemSystem.ItemSystem).Unequip()
                if NiggaToggle.Autorob then
                    _G.AutoRobbing = false
                end
            end
        end
    end)
    local Colors = {}
    for i,v in pairs(require(game:GetService("ReplicatedStorage").Game.Garage.StoreData.Color).Items) do
        table.insert(Colors, v.Name)
    end
    spawn(function()
        while wait() do
            if NiggaToggle.NoWait then
                for i,v in pairs(require(game:GetService("ReplicatedStorage").Module.UI).CircleAction.Specs) do
                    v.Timed = false;
                end
            end
            if NiggaToggle.Eject then
                for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                    if not table.find(whitelisted, v.Name) then
                        Client.Network:FireServer(Client.Hashes.Eject, v.Name)
                    end
                end
            end
            if NiggaToggle.GodMode then
                GiveDonut()
                Client.Network:FireServer(Client.Hashes.EatDonut)
            end
            if NiggaToggle.AntiFlip then
                Client.GuiFunc({Name = "Flip"}, true)
            end
            if NiggaToggle.RainbowCar then
                local v = { Name = Colors[math.random(1,#Colors)] }
                Client.ModifyCar(v, { Name = "BodyColor" })
                Client.ModifyCar(v, { Name = "WindowColor" })
                Client.ModifyCar(v, { Name = "SpoilerColor" })
                Client.ModifyCar(v, { Name = "WheelColor" })
                Client.ModifyCar(v, { Name = "SecondBodyColor" })
                Client.ModifyCar(v, { Name = "Glow" })
                Client.ModifyCar(v, { Name = "HeadlightsColor" })
            end
            if NiggaToggle.Annoy then
                Client.PlaySound("FireworkBang", {
                    Source = game:GetService("Players").LocalPlayer.Character, 
                    Volume = math.huge, 
                    Multi = true,
                }, false)
                Client.PlaySound("Horn", {
                    Pitch = math.huge,
                    Source = game:GetService("Players").LocalPlayer.Character, 
                    Volume = math.huge, 
                    Multi = true,
                    MaxTime = 0.1
                }, false)
            end
            if NiggaToggle.Hats then
                firehatoff()
            end
        end
    end)
    spawn(function()
        while wait(2) do
            if NiggaToggle.TazeAll then
                pcall(function()
                    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                        if not table.find(whitelisted, v.Name) then
                            Taze(v)
                        end;
                    end;
                end)
            end
            if NiggaToggle.TazeAura then
                pcall(function()
                    for i,v in next, game:GetService('Players'):GetPlayers() do
                        if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude < 50 then
                            if not table.find(whitelisted, v.Name) then
                                Taze(v)
                            end
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait(1) do
            if NiggaToggle.Autorob then
                BankRobing()
                JewlRobbing()
                robmuseum()
                RobPlane()
                RobTrain()
                for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
                    if v.Name == "Rob" then
                        v:Callback(v, true)
                    end
                end
                wait(14)
            end
        end
    end)
    local mt = getrawmetatable(game)
    setreadonly(mt, false)
    local old
    old = hookfunction(mt.__newindex, newcclosure(function(a, b, c)
        if b == "WalkSpeed" then
            if tonumber(_G.WalkSpeed) == 16 then
                return old(a, b, c)
            elseif tonumber(_G.WalkSpeed) > 150 then
                Client.Network:FireServer(Client.Hashes.ExitCar)
            end
            return old(a, b, _G.WalkSpeed)
        end
        return old(a, b, c)
    end))
    jptab.ShowWindow();
end

function bigpaintball()
    local Main = library.new("Big Paintball")

    local Window = Main.WindowTab('Cheats')

    local functions = Window.SideTab("Functions")

    local Tab = functions.Section("Cheats")

    universal(Main)

    Tab.Toggle("Loop Kill All", function(a)
        kill = a
    end)
    
    spawn(function()
        while wait() do
       pcall(function()
           for i,v in next, game:GetService("Players"):GetChildren() do
               if v.Name ~= game.Players.LocalPlayer.Name and kill then
                   if v.Character.Humanoid ~= nil then
                       local Target = v
                       local data1 = math.random(1,1)
                       local data2 = Target.Character.HumanoidRootPart.Position
                       local data3 = false
                       local data4 = math.random(2,2)
                       local nt = require((game.ReplicatedStorage:WaitForChild("Framework")):WaitForChild("Library"))
                       nt.Network.Fire("New Projectile", 1, 1, math.floor(game.Workspace.DistributedGameTime))
                       game.Workspace.__THINGS.__REMOTES["do damage"]:FireServer({{Target.Character.Humanoid, data1, data1, data2, data3, data3, data3}, {data3,data3,data3,data3,data3, data4,data4}})
                        wait(.2)
                   end
               end
           end
       end)
    end
    end)
    
    Tab.Button("Kill All", function()
        pcall(function()
           for i,v in next, game:GetService("Players"):GetChildren() do
               if v.Name ~= game.Players.LocalPlayer.Name then
                   if v.Character.Humanoid ~= nil then
                       local data1 = math.random(1,1)
                       local data2 = Target.Character.HumanoidRootPart.Position
                       local data3 = false
                       local data4 = math.random(2,2)
                       local framework = require((game.ReplicatedStorage:WaitForChild("Framework")):WaitForChild("Library"))
                       framework.Network.Fire("New Projectile", 1, 1, math.floor(game.Workspace.DistributedGameTime))
                       game.Workspace.__THINGS.__REMOTES["do damage"]:FireServer({{v.Character.Humanoid, data1, data1, data2, data3, data3, data3}, {data3,data3,data3,data3,data3, data4,data4}})
                        wait(.2)
                   end
               end
           end
       end)
    end)
    
    Tab.Button("Unlock All", function()
        local Library = require(game:GetService("ReplicatedStorage").Framework.Library)
        local DoesOwnGun = Library.GunCmds.DoesOwnGun
        local NetworkFire = Library.Network.Fire
        
        Library.GunCmds.DoesOwnGun = function()
          return true
        end
        
        Library.Network.Fire = function(Argument_1, Argument_2, ...)
          if Argument_1 == "Request Respawn" and not DoesOwnGun(game:GetService("Players").LocalPlayer, Argument_2) then
            return NetworkFire(Argument_1, "1")
          end
          return NetworkFire(Argument_1, Argument_2, ...)
        end
    end)
    
    Tab.Button("Gun Mod", function()
    for i, v in pairs(getgc(true)) do
       if type(v) == "table" and rawget(v, "firerate") then
          v.firerate = 0.00001
          v.damage = 5000
          v.automatic = true
          v.velocity = 50000
          v.gadgetDamage = 80000
          v.additionalspeed = 10
       end
    end
    end)
    
    Tab.Button("Hitbox Expander", function()
        while wait(0.5) do
        local stuff = workspace:getDescendants()
        for i=1,#stuff do
            if stuff[i].Name == "Hitbox" then
                if game.Players.LocalPlayer:FindFirstChild("Team") then
                    if game.Players:FindFirstChild(stuff[i].Parent.Name) and game.Players[stuff[i].Parent.Name].Team ~= game.Players.LocalPlayer.Team then
                        stuff[i].Massless = true
                        stuff[i].Size = Vector3.new(100,100,100)
                        stuff[i].Transparency = 0.75
                    end
                    else
                        stuff[i].Massless = true
                        stuff[i].Size = Vector3.new(100,100,100)
                        stuff[i].Transparency = 0.75   
                end
            end
        end
    end
    end)
end

function soundspace()
    local Main = library.new("Sound Space")
    local Window = Main.WindowTab('Cheats')

    local autoplay = Window.SideTab("Autoplayer")
    local otherstuff = Window.SideTab("Other")

    local auto = autoplay.Section("Options")
    local other = otherstuff.Section("Options")

    auto.Toggle("Autoplayer", function(a)
        autoplay = a
    end)

    game:GetService("RunService").RenderStepped:Connect(function()
        if autoplay then
        local MaxDistance = math.huge
        for a,b in pairs(workspace:GetDescendants()) do
          if b:IsA("Part") and tonumber(b.Name) and (b.Position - workspace.CurrentCamera.CFrame.p).Magnitude < MaxDistance then
            MaxDistance = (b.Position - workspace.CurrentCamera.CFrame.p).Magnitude
            game:GetService("TweenService"):Create(workspace.CurrentCamera, TweenInfo.new(MaxDistance / 250, Enum.EasingStyle.Linear), {CFrame = CFrame.new(workspace.CurrentCamera.CFrame.p, Vector3.new(0, b.Position.Y, b.Position.Z))}):Play()
          end
        end
        end
      end)

    local songspeed = 1
    
      other.Slider("Song Speed", 1, 5, 1, function(speed)
        songspeed = speed
      end)

      spawn(function()
        while wait() do
            game:GetService("ReplicatedFirst").GameScript.Music.PlaybackSpeed = songspeed
        end
      end)
      
      local MainCursor = game:GetService("Players").LocalPlayer.PlayerGui.CursorGui
            local TweenService = game:GetService("TweenService")
      local RainbowCursor = false
    
    other.Toggle("Rainbow Cursor", function(enabled)
        if enabled then
            RainbowCursor = true
            while RainbowCursor do
                local t = 5
	            local hue = tick() % t / t
	            local color = Color3.fromHSV(hue, 1, 1)
	            MainCursor.ImageLabel.ImageColor3 = color
                MainCursor.ImageLabel.BackgroundColor3 = color
                wait()
            end
        elseif not enabled then
            MainCursor.ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
            MainCursor.ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        end
    end)
    
    other.Toggle("Cursor Trail", function(enabled)
        trail = enabled
    end)
    
    spawn(function()
        while wait() do
            getfenv(require(game:GetService("ReplicatedFirst").GameScript).CursorTrail)._G.PlayerData.Settings.CursorTrail = trail
        end
    end)
end

function adventureup()
    local Main = library.new("Adventure Up")
    local Window = Main.WindowTab('Cheats')

    local shortcuts = Window.SideTab("Shortcuts")
    local combat = Window.SideTab("Combat")

    local Tab = combat.Section("Cheats")
    local Tab2 = shortcuts.Section("Cheats")
    
    local fw = require(game.ReplicatedStorage:WaitForChild("Framework"))
    local n = fw.Network

    local ws = 16
    
    Tab.Toggle("KillAura", function(a)
        kill = a
    end)
    
    Tab.Slider("Walkspeed", 16, 100, 16, function(a)
        ws = a
    end)

    game:GetService("Players").LocalPlayer.Character.Humanoid.Changed:Connect(function()
        if game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed ~= ws then
            game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = ws
        end
    end)
    
    Tab2.Dropdown("Dungeon", {"Crystal Caverns", "Skylands", "Royal Hall", "Tomb of Ancients", "Mount Ashea"}, function(text)
        if text == "Crsytal Caverns" then 
            dun = 1
        end
        if text == "Skylands" then 
            dun = 2
        end
        if text == "Royal Hall" then 
            dun = 3
        end
        if text == "Tomb of Ancients" then 
            dun = 4
        end
        if text == "Mount Ashea" then 
            dun = 5
        end
    end)
    
    Tab2.Dropdown("Difficulty", {"Normal", "Heroic", "Mythic", "Maxed"}, function(text)
        if text == "Normal" then 
            diff = 1
        end
        if text == "Heroic" then 
            diff = 2
        end
        if text == "Mythic" then 
            diff = 3
        end
        if text == "Maxed" then 
            diff = 4
        end
    end)
    
    Tab2.Button("Start Dungeon", function()
        n:Send("Parties/Create", dun, diff, 4)
    end)
    
    game:GetService("RunService").RenderStepped:Connect(function()
        if kill then
            n:Send("Abilities/Use", "BasicAttack")
        end
    end)
    end
    

function arsenal()
    local Main = library.new("Arsenal")
    local Window = Main.WindowTab('Cheats')

    local gunmod = Window.SideTab("Gun Mod")
    local ka = Window.SideTab("Kill All")
    local otherstuff = Window.SideTab("Other")

    local lib = gunmod.Section("Settings")
    local killall = ka.Section("Settings")
    local other = otherstuff.Section("Settings")

    universal(Main)
    
    local killFFA = false
    
    killall.Toggle("Shoot Kill All", function(a)
        kill = a
    end)

    killall.Toggle("FFA", function(a)
        killFFA = a
    end)

function check(thing, team)
    if thing ~= game.Players.LocalPlayer and thing.Character.FindFirstChild(thing.Character,'Head') and thing.Character.FindFirstChild(thing.Character,'Humanoid') and thing.Character.Humanoid.Health ~= 0 and thing.Character.FindFirstChild(thing.Character, 'HumanoidRootPart') then
        if team then
            if thing.Status.Team.Value ~= game.Players.LocalPlayer.Status.Team.Value then
                return true
            else
                return false
            end
        else
            return true
        end
    else
        return false
    end
end

local FFA = false

local mt = getrawmetatable(game)
setreadonly(mt, false)
local oldname = mt.__namecall

mt.__namecall = function(self, ...)
    local args = {...}
    if tostring(self) == "HitPart" and kill then
        for i,v in pairs(game.Players.GetPlayers(game.Players)) do
            if check(v, killFFA) then
                args[1] = v.Character.Head
                args[2] = v.Character.Head.Position
                for i = 1, 25 do oldname(self, unpack(args)) end
            end
        end
    end
    return oldname(self, ...)
end
    
    
    local func = nil
    local env = nil
    local enable = false
    local mode = 'semi'
    local ammo = 20
    local rec = 0
    local spred = 0
    lib.Button('Enable', function()
        enable = true
    end)
    lib.Button('Inf Ammo', function()
        ammo = 999
    end)
    lib.Button('No Recoil', function()
        rec = 0
    end)
    lib.Dropdown('Gun Mode', {"automatic", "semi"}, function(a)
        mode = a
    end)

    lib.Button('No Spread', function()
        spred = 0
    end)
    local InstantKill = false
    local WallBang = false
    local SilentAim = false
    local TeamCheck = false
    local NoFall = false
    lib.Toggle("Instakill", function(a)
        InstantKill = a
    end)
    lib.Toggle("Silent Aim", function(a)
       SilentAim = a 
    end)
    lib.Toggle("Team Check", function(a)
       TeamCheck = a 
    end)
    lib.Toggle("Wallbang", function(a)
        WallBang = a
    end)
    other.Toggle("No Fall Damage", function(a)
        NoFall = a
    end)
    other.Toggle("Auto Respawn", function(a)
        AutoRespawn = a
    end)
    
    game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
        if AutoRespawn then
            wait(0.5)
            game:GetService("ReplicatedStorage").Events.SpawnMe:FireServer()
        end
    end)
    
    local mt = getrawmetatable(game)
    setreadonly(mt,false)
    local oldname = mt.__namecall
    mt.__namecall = newcclosure(function(self, ...) 
        local args = {...}
        local method = getnamecallmethod()
        if tostring(method) == "FireServer" then
            if tostring(self) == "Kick" or tostring(self) == "Ban" or tostring(self) == "Ban2" then
                return
            end
            if tostring(self) == "FallDamage" and NoFall then
                return
            end
                if tostring(self) == "HitPart" then
                    local Player = nil
                    local Shortest = math.huge
                for i,v in next, game.Players.GetPlayers(game.Players) do
                   if v ~= game.Players.LocalPlayer then
                    pcall(function()
                        if v.Character and v.Character.FindFirstChild(v.Character,'Head') and v.Character.FindFirstChild(v.Character,'Humanoid') and v.Character.Humanoid.Health ~= 0 and v.Character.FindFirstChild(v.Character,'HumanoidRootPart') then
                            if TeamCheck then
                                if v.Team ~= game.Players.LocalPlayer.Team then 
                                    local Magnitude = (v.Character.WaitForChild(v.Character, 'Head').Position-game.Players.LocalPlayer.Character.WaitForChild(game.Players.LocalPlayer.Character, 'Head').Position).magnitude
                                    if Magnitude < Shortest then
                                        Player = v
                                        Shortest = Magnitude
                                    end
                                end
                            else
                                local Magnitude = (v.Character.WaitForChild(v.Character, 'Head').Position-game.Players.LocalPlayer.Character.WaitForChild(game.Players.LocalPlayer.Character, 'Head').Position).magnitude
                                if Magnitude < Shortest then
                                   Player = v
                                   Shortest = Magnitude
                                end
                            end
                        end
                    end)
                    end
                end
                local GetClosestPlayer = Player or game.Players.LocalPlayer
                    if InstantKill and not SilentAim then
                        for i=1,25 do oldname(self,...) end
                    elseif SilentAim and not InstantKill then
                        args[1] = GetClosestPlayer.Character.Head
                        args[2] = GetClosestPlayer.Character.Head.Position
                        return oldname(self, unpack(args))
                    elseif SilentAim and InstantKill then
                        args[1] = GetClosestPlayer.Character.Head
                        args[2] = GetClosestPlayer.Character.Head.Position
                        return oldname(self, unpack(args))
                    end
                end
        elseif tostring(method) == "FindPartOnRayWithIgnoreList" and WallBang then
            table.insert(args[2], game.Workspace.Map)
            return oldname(self,unpack(args))
        end
        return oldname(self,...)
    end)
    
    
    for i,v in pairs(getgc()) do
        if type(v) == 'function' and debug.getinfo(v).name == 'firebullet' then
            func = v
            env = getfenv(v)
            break
        end
    end
    while wait() do
        if enable then
            debug.setupvalue(func,3,ammo)
            env.recoil = rec
            env.currentspread = spred
            env.spreadmodifier = spred
            env.mode = mode
        end
    end
end

function robeats()

    local rb = library.new("Robeats")
    local cheats = rb.WindowTab('Cheats')

    local auto = cheats.SideTab("Autoplayer")
    local other = cheats.SideTab("Other")

    local autosettings = auto.Section("Settings")
    local othercheats = other.Section("Cheats")

    
    local AutoPlayer = false
    local Rainbow = false
    
        local miss,perfect, great, okay = 0,0,0,0
        local function calculate(Miss,Okay,Great,Perfect)
            local CheckPerfectPercentage = math.random(Perfect, 100)
            local CheckGreatPercentage = math.random(Great, 100)
            local CheckOkayPercentage = math.random(Okay, 100)
            local CheckMissPercentage = math.random(Miss, 100)
    
        if Perfect ~= 0 and CheckPerfectPercentage == Perfect then
            NoteType = 3
        elseif Great ~= 0 and CheckGreatPercentage == Great then
            NoteType = 2
        elseif Okay ~= 0 and CheckOkayPercentage == Okay then
            NoteType = 1
        elseif Miss ~= 0 and CheckMissPercentage == Miss then
            NoteType = 0
        end
        return NoteType
        end
        
        local getupvals = (getupvals) or (debug.getupvalues)
local EventTable, GameTable do
  for a,b in pairs(getgc(true)) do
    if typeof(b) == "table" then
      if rawget(b, "es_fn_get") then
        EsFnGet = b.es_fn_get
        function b:es_fn_get(Argument_1, Argument_2)
          return Argument_1[getupvals(EsFnGet)[2]:get(Argument_2)]
        end
        EventTable = b
      end
      if rawget(b, "get_game") then
        GameTable = b
      end
    end
  end
end

function RobeatsAutoPlayer()

  if GameTable:get_game() and GameTable:get_game():get_local_tracksystem() and not GameTable:is_game_finished() then
    for a = 1, EventTable:es_fn_get(GameTable:get_game():get_local_tracksystem(), EventTable.ES_FN_GET_NOTES)():count() do
      local Note = EventTable:es_fn_get(GameTable:get_game():get_local_tracksystem(), EventTable.ES_FN_GET_NOTES)():get(a)
      local NoteTrack = Note:get_track_index()
      local HitResult, HitScoreResult, HitTimeResult = EventTable:es_fn_get(Note, EventTable.ES_FN_TEST_HIT)(GameTable:get_game():get_local_game_slot())
      local ReleaseResult, ReleaseScoreResult, ReleaseTimeResult = EventTable:es_fn_get(Note, EventTable.ES_FN_TEST_RELEASE)(GameTable:get_game():get_local_game_slot())
      if HitResult and HitScoreResult == calculate(miss, okay, great, perfect) and not Note:should_remove(GameTable:get_game():get_local_game_slot()) then
        GameTable:get_game():get_local_tracksystem():get_track(NoteTrack):press()
        EventTable:es_fn_get(Note, EventTable.ES_FN_ON_HIT)(GameTable:get_game():get_local_game_slot(), calculate(miss, okay, great, perfect), a, HitTimeResult)
        if not ReleaseTimeResult then
          delay(0.05, function()
            GameTable:get_game():get_local_tracksystem():get_track(NoteTrack):release()
          end)
        end
      end
      if ReleaseResult and ReleaseScoreResult == 3 and not Note:should_remove(GameTable:get_game():get_local_game_slot()) then
        GameTable:get_game():get_local_tracksystem():get_track(NoteTrack):release()
        EventTable:es_fn_get(Note, EventTable.ES_FN_ON_RELEASE)(GameTable:get_game():get_local_game_slot(), 3, a, ReleaseTimeResult)
      end
    end
  end
 end

        
    autosettings.Toggle("Auto Player", function(enabled)
        if enabled then
            AutoPlayer = true
            
            if AutoPlayer then
                game:GetService("RunService"):BindToRenderStep(0, 0, function()
                    if not AutoPlayer then return end
                    RobeatsAutoPlayer()
                end)
            end
        else
            AutoPlayer = false
    
        end
    end)

    autosettings.Slider("Perfect", 0, 100, 0, function(a)
        perfect = a
    end)
    
    autosettings.Slider("Great", 0, 100, 0, function(a)
        great = a
    end)
    
    autosettings.Slider("Okay", 0, 100, 0, function(a)
        okay = a
    end)

    autosettings.Slider("Miss", 0, 100, 0, function(a)
        miss = a
    end)
    
    local timefuncs = {}

    for i, v in next, (getgc(true)) do
        if typeof(v) == "table" and rawget(v, "TimescaleToDeltaTime") then
            table.insert(timefuncs, v)
        end
    end

    othercheats.Slider("Song Speed", 1, 5, 1, function(a)
        for i,v in pairs(timefuncs) do
           v.TimescaleToDeltaTime = function()
                return a * 0.016666666666666666
            end
        end
    end)

    othercheats.Toggle("Rainbow Notes", function(a)
        local RunService = game:GetService("RunService")
        Rainbow = a
        if a then
            for i, v in pairs(getgc(true)) do
                if typeof(v) == "table" and rawget(v, "to_color3") then
                    local t = 5
                    RunService:BindToRenderStep("rainbow", 1, function()
                        if Rainbow then
                            local hue = tick() % t / t
                            local color = Color3.fromHSV(hue, 1, 1)
                            v.to_color3 = function(...) return color end
                        end
                    end)
                end
            end
        end
    end)

    local npcfuncs = {}

    for i, v in pairs(getgc(true)) do
        if typeof(v) == "table" and rawget(v, "create_popup_on_character") and rawget(v, "set_trigger_callback") and rawget(v, "trigger_action") and rawget(v, "cons") and debug.getinfo(debug.getupvalue(v.set_trigger_callback, 1)).name == "" then
            table.insert(npcfuncs, v)
        end
    end

othercheats.Button('NPC Rewards', function()
    for i,v in pairs(npcfuncs) do
        v:trigger_action()
    end
end)

end

function strucid()
    
    local Main = library.new("Strucid")
local Window = Main.WindowTab('Cheats')

local Tab = Window.SideTab("Kill All (Ban Risk)")
local strucid = Tab.Section("Settings")
local thing = Window.SideTab("Gun Mod")
local gunmod = thing.Section("Options")
local Tab2 = Window.SideTab("Other")
local functions = Tab2.Section("Options")

    local FFA = true
    local cc = game:GetService("Workspace").CurrentCamera
    local RunService = game:GetService("RunService")
    local killall = false
    local auto = false
    
    universal(Main)

    strucid.Toggle("Auto Shoot/Aim", function(a)
        auto = a
    end)

    gunmod.Button("Rapid Fire", function()
        debug.getupvalue(getsenv(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.MainLocal).Reload, 3).Debounce = 0
    end)
    
    gunmod.Button("Infinite Ammo", function()
    setreadonly(getrawmetatable(game), false)
    local __namecall = getrawmetatable(game).__namecall
    
    getrawmetatable(game).__namecall = function(...)
      if ({...})[2] == 1 and ({...})[3] == 21 then
        return true
      else
        return __namecall(...)
      end
    end
    
    game:GetService("RunService").Stepped:Connect(function()
      require(game:GetService("ReplicatedStorage").NetworkModule):FireServer("Animate", "Reload", nil, math.huge)
      pcall(function()
        for a,b in pairs(debug.getupvalues(getsenv(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.MainLocal).Reload)) do
          if typeof(b) == "table" and a == 7 then
            for c,d in pairs(b) do
                b[c][2] = math.huge
            end
          end
        end
      end)
    end)
    end)
    
    gunmod.Button("No Recoil", function()
        setreadonly(getrawmetatable(game), false)
        local __namecall = getrawmetatable(game).__namecall
        
        getrawmetatable(game).__namecall = function(...)
          if ({...})[2] == "Recoil" then
            return false
          else
            return __namecall(...)
          end
        end
        
        game:GetService("Players").LocalPlayer:GetMouse().Button1Down:Connect(function()
            pcall(function()
                getsenv(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.MainLocal).CameraRecoil = function() end
            end)
        end)
    end)
    
    gunmod.Button("No Spread", function(a)
        require(game:GetService("ReplicatedStorage").GlobalStuff).ConeOfFire = function(...) return({...})[3] end
    end)

    functions.Button("God Mode", function()
        game.Players.LocalPlayer.Character:WaitForChild'Shield':Remove();
    end)
    
    functions.Button("Pickaxe Aura", function(a)
        aura = a
    end)
    
    functions.Button("No Fall Damage", function(a)
        nofall = a
    end)
    
    functions.Button("Infinite Jump", function(a)
        infjump = a
    end)
    
    local Player = game:GetService'Players'.LocalPlayer;
    local UIS = game:GetService'UserInputService';
    
    function Action(Object, Function) if Object ~= nil then Function(Object); end end
    
    UIS.InputBegan:connect(function(UserInput)
        if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space and infjump then
            Action(Player.Character.Humanoid, function(self)
                if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                    Action(self.Parent.HumanoidRootPart, function(self)
                        self.Velocity = Vector3.new(0, 50, 0);
                    end)
                end
            end)
        end
    end)
    
    local network = require(game:GetService("ReplicatedStorage").NetworkModule);
    local oldFireServer = network.FireServer;
    
    network.FireServer = newcclosure(function(self, remote, ...)
        if remote == "FallDamage" and nofall then
            return
        end
            
        return oldFireServer(self, remote, ...)
    end)
    
    spawn(function()
        local Network = require(game:GetService("ReplicatedStorage").NetworkModule)
        local Client = game:GetService("ReplicatedStorage").Network.ClientToClient
        loadstring([[while wait() do
            for a,b in pairs(game:GetService("Players"):GetPlayers()) do
                pcall(function()
                    if (b.Character.Head.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).Magnitude < 20 and b ~= game:GetService("Players").LocalPlayer and not getsenv(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.MainLocal).SameTeam(b) and aura then
                        Client:Fire("DamageMarker", b.Character, 20)
                        Network:FireServer("MeleeDamage", b.Character.Humanoid, b.Character.Head)
                        wait(0.4)
                    end
                end)
            end
        end]])()
    end)
    
    strucid.Toggle("Loop Kill All", function(a)
        
    killall = a
    
    for i,v in pairs(getsenv(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.MainLocal)) do
        if tostring(i) == "Shoot" then
            shootFunc = v
        end
    end
    
    spawn(function()
        while wait() do
            pcall(function()
                if killall then
                    closest = getsenv(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.MainLocal).GetClosestPlayer()
                    twen = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0.1, Enum.EasingStyle.Quad),{CFrame = closest.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,2)})
                    twen:Play()
                end
            end)
        end
    end)
    end)
    
    RunService.Heartbeat:Connect(function()
        if auto and killall then
            cc.CFrame = CFrame.new(cc.CFrame.p, closest.Character.Head.CFrame.p)
            shootFunc()
        end
    end)
    
    strucid.Toggle("FFA", function(a)
        if a then
            FFA = false
            else
            FFA = true
        end
    end)
end

function counterblox()
    local Main = library.new("Counter Blox")
    local cheats = Main.WindowTab('Cheats')
    local combat = cheats.SideTab("Combat")
    local other = cheats.SideTab('Other')
    local combatoptions = combat.Section("Options")
    local otheroptions = other.Section('Options')
    universal(Main)
    
    local mt = getrawmetatable(game)
local oldnamecall = mt.__namecall
setreadonly(mt,false)

WallBang = false
NoFall = false
InstantKill = false
SilentAim = false
    
    combatoptions.Toggle("InstaKill", function(a)
        InstantKill = a
    end)
    
    combatoptions.Toggle("Wallbang", function(a)
        WallBang = a
    end)
    
    combatoptions.Toggle("Silent Aim", function(a)
        SilentAim = a
    end)
    
    otheroptions.Toggle("Infinite Money", function(a)
        InfiniteMoney = a
        if a then
            oldMoney = game:GetService("Players").LocalPlayer.Cash.Value
            game:GetService("Players").LocalPlayer.Cash.Value = game:GetService("Players").LocalPlayer.Cash.Value + 1
        else
            game:GetService("Players").LocalPlayer.Cash.Value = oldMoney
        end
    end)
    
    game:GetService("Players").LocalPlayer.Cash.Changed:Connect(function()
        wait(0.1)
        if InfiniteMoney then
            game:GetService("Players").LocalPlayer.Cash.Value = 999999999999 
        end
    end)
    
    otheroptions.Toggle("No Fall Damage", function(a)
        NoFall = a
    end)
    
    combatoptions.Button("Kill All", function()
        if game.Players.LocalPlayer.Character:FindFirstChild("Gun") then
            for i,v in pairs(game.Players:GetPlayers()) do 
                if v.Character and v ~= game.Players.LocalPlayer and v.TeamColor ~= game.Players.LocalPlayer.TeamColor then
                    local Gamer = v.Character.Head
                    local Vision = v.Character.Head.CFrame.p
                    local Unverified = "AWP"
                    local Coasts = 4096
                    local Bruh = game.Players.LocalPlayer.Character.Gun
                    local Bum = 15
                    local Wally = false
                    local Aztup = false
                    local Kiriot = Vector3.new(-126.878326, 353.474854, 49.3892708)
                    local Coastified = 16868
                    local Coastification = Vector3.new(0, 0, -1)
                    game.ReplicatedStorage.Events.HitPart:FireServer(Gamer, Vision, Unverified, Coasts, Bruh, Moment, Epic, Bum, Wally, Aztup, Kiriot, Coastified, Coastification)
                end
            end
        end
    end)
    
    combatoptions.Toggle("Loop Kill All", function(a)
        killall = a
    end)
    
    combatoptions.Slider("Delay (Higher = Less Lag)", 1, 10, 5, function(a)
        delay = a
    end)

    mt.__namecall = newcclosure(function(self,...)
        local Method = getnamecallmethod()
        local Args = {...}
        if tostring(Method) == "FireServer" then
            if tostring(self) == "FallDamage" and NoFall then
                return
            end
            if tostring(self) == "HitPart" then
                local Player = nil;
                local Distance = math.huge;
                for i,v in next, game.Players.GetPlayers(game.Players) do
                    if v ~= game.Players.LocalPlayer and v.Team ~= game.Players.LocalPlayer.Team then
                        if v.Character and v.Character.FindFirstChild(v.Character,'Head') and v.Character.FindFirstChild(v.Character, 'HumanoidRootPart') and v.Character.FindFirstChild(v.Character, 'Humanoid') and v.Character.Humanoid.Health ~= 0 then
                            local Magnitude = (v.Character.Head.Position-game.Players.LocalPlayer.Character.Head.Position).magnitude 
                            if Magnitude < Distance then
                                Distance = Magnitude
                                Player = v
                            end
                        end
                    end
                end
                local GetClosestPlayer = Player or game.Players.LocalPlayer
                if InstantKill and not SilentAim then
                    for i=1,10 do
                        oldnamecall(self,...) 
                    end
                end
                if InstantKill and SilentAim then
                    Args[1] = GetClosestPlayer.Character.Head
                    Args[2] = GetClosestPlayer.Character.Head.Position
                    return oldnamecall(self, unpack(Args))
                end
                if not InstantKill and SilentAim then
                    Args[1] = GetClosestPlayer.Character.Head
                    Args[2] = GetClosestPlayer.Character.Head.Position
                    return oldnamecall(self, unpack(Args))
                end
            end
        end
        if tostring(Method) == "FindPartOnRayWithIgnoreList" and (WallBang and not SilentAim) then
            table.insert(Args[2], game.Workspace.Map)
            return oldnamecall(self, unpack(Args))
        end
        if tostring(self) == "Ban" or tostring(self) == "Kick" then
            return
        end
        return oldnamecall(self, ...)
    end)
    
    
spawn(function()
    while wait(delay) do
        if killall then
            if game.Players.LocalPlayer.Character:FindFirstChild("Gun") then
                for i,v in pairs(game.Players:GetPlayers()) do 
                    if v.Character and v ~= game.Players.LocalPlayer and v.TeamColor ~= game.Players.LocalPlayer.TeamColor then
                        local Gamer = v.Character.Head
                        local Vision = v.Character.Head.CFrame.p
                        local Unverified = "AWP"
                        local Coasts = 4096
                        local Bruh = game.Players.LocalPlayer.Character.Gun
                        local Bum = 15
                        local Wally = false
                        local Aztup = false
                        local Kiriot = Vector3.new(-126.878326, 353.474854, 49.3892708)
                        local Coastified = 16868
                        local Coastification = Vector3.new(0, 0, -1)
                        game.ReplicatedStorage.Events.HitPart:FireServer(Gamer, Vision, Unverified, Coasts, Bruh, Moment, Epic, Bum, Wally, Aztup, Kiriot, Coastified, Coastification)
                    end
                end
            end
        end
    end
end)
end

if Game == "Strucid" then
    strucid()
elseif Game == "Bloxburg" then
    bloxburg()
elseif Game == "Dungeon Quest" then
    dungeonquest()
elseif Game == "Jailbreak" then
    jailbreak()
elseif Game == "Sound Space" then
    soundspace()
elseif Game == "Big Paintball" then
    bigpaintball()
elseif Game == "Adventure Up" then
    adventureup()
elseif Game == "Arsenal" then
    arsenal()
elseif Game == "Robeats" then
    robeats()
elseif Game == "Counter Blox" then
    counterblox()
else
    local Main = library.new("Universal Cheats")
    universal(Main)
end
