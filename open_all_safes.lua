--by sirelKilla (v3rm)
local pgui = game:GetService("Players").LocalPlayer.PlayerGui
local amountLbl = pgui.SidebarGui.Container.ContainerButtons.ContainerSafes.ContainerCount.Count
local safeBtns = pgui.SafesGui.ContainerSafes.Container.ContainerSidebar.ContainerBuy.ContainerButtons.ContainerButtons
getupvalues = getupvalues or debug.getupvalues
setupvalue = setupvalue or debug.setupvalue
getreg = getreg or debug.getregistry
islclosure = islclosure or is_l_closure
local function doOpenAllBtn()
	if safeBtns:FindFirstChild("OpenAll")==nil and safeBtns.Use.Visible and getupvalues and setupvalue and getreg then
		local reg = getreg()
		local openSafeFunc,m_safes = (function()
			for i=1,#reg do
				local f = reg[i]
				if type(f)=="function" and (is_protected_closure==nil or is_protected_closure(f)==false) and (islclosure==nil or islclosure(f)) then
					local upvalues = getupvalues(f)
					local k1,v1 = next(upvalues)
					if k1 then
						local k2,v2 = next(upvalues,k1)
						if k2 and next(upvalues,k2)==nil and type(v1)=="table" and type(v2)=="table" and (v1.FireServer or v2.FireServer) and (v1.ListSafes or v2.ListSafes) then
							return f,((v1.FireServer==nil) and v1) or v2
						end
					end
				end
			end
		end)()
		assert(openSafeFunc and m_safes,"failed to find remote vars")
		local safesArray = {}
		local function refreshSafesArray()
			safesArray = {}
			for i=1,#m_safes.ListSafes do
				safesArray[i] = m_safes.ListSafes[i]
			end
			return safesArray
		end
		local function skipSlider()
			for i=1,#reg do
				local f = reg[i]
				if type(f)=="function" and (is_protected_closure==nil or is_protected_closure(f)==false) and (islclosure==nil or islclosure(f)) then
					local upvalues = getupvalues(f)
					local k1,v1 = next(upvalues)
					if v1==0.12 and next(upvalues,k1)==nil then
						setupvalue(f,k1,10000)
						break
					end
				end
			end
		end

		local openingSafes=false
		local function openAllSafes()
			if openingSafes then return end
			openingSafes=true
			refreshSafesArray()
			if #safesArray>0 then
				pgui.SafesGui.ContainerSafes.Visible = false
				local visibleconn1 = pgui.SafesGui.ContainerSafes:GetPropertyChangedSignal("Visible"):Connect(function()
					pgui.SafesGui.ContainerSafes.Visible = false
				end)
				local visibleconn2 = pgui.SafesGui.ContainerSlider:GetPropertyChangedSignal("Visible"):Connect(function()
					if pgui.SafesGui.ContainerSlider.Visible then
						pgui.SafesGui.ContainerSlider.Visible=false
						wait()
						skipSlider()
					end
				end)
				
				for i=1,#safesArray do
					m_safes.SelectedSafe = table.remove(safesArray,1)
					openSafeFunc()
					wait(0.5)
				end
				
				wait(0.5)
				visibleconn1:Disconnect()
				visibleconn2:Disconnect()
			end
			openingSafes=false
		end
		
		local new = safeBtns.Buy:Clone()
		new.Visible = not safeBtns.Buy.Visible
		new.Name = "OpenAll"
		new.TextLabel.Text = (tonumber(amountLbl.Text)>100 and "Open 100") or "Open All"
		safeBtns.Buy:GetPropertyChangedSignal("Visible"):Connect(function()
			new.Visible = not safeBtns.Buy.Visible
		end)
		new.MouseButton1Down:Connect(openAllSafes)
		new.Parent = safeBtns
	end
end
safeBtns.Use:GetPropertyChangedSignal("Visible"):Connect(doOpenAllBtn)
amountLbl:GetPropertyChangedSignal("Text"):Connect(function()
	if safeBtns:FindFirstChild("OpenAll") then
		safeBtns.OpenAll.TextLabel.Text = (tonumber(amountLbl.Text)>100 and "Open 100") or "Open All"
	end
end)
doOpenAllBtn()
