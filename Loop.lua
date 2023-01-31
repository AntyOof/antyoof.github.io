local Screens = {}
local Stop = script.Parent.StopPai
local Value = script.Parent.Pais
local Split = Value.Value:split(",")
local max = #Split
local n3xt = 1
local TweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(2.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
local tweenAsap = TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
local Chinese = ""
local English = ""

for i,v in pairs(script.Parent:GetDescendants()) do
	if v.Name == "LEDscreen" then
		Screens[#Screens+1] = v.SurfaceGui.Screen.Front
		Screens[#Screens+1] = v.SurfaceGui.Screen.Second
		Screens[#Screens+1] = v.SurfaceGui.Screen.Third
		Screens[#Screens+1] = v.SurfaceGui.Screen.Number
		Screens[#Screens+1] = v.SurfaceGui.Screen.Bus
	end
end
for i,v in pairs(Screens) do
	if v.Name == "Front" then
		TweenService:Create(v, tweenAsap, {Position = UDim2.new(0, 348, 0, 0)}):Play()
		v.Position = UDim2.new(0, 348, 0, 0)
	end
	if v.Name == "Second" then
		TweenService:Create(v, tweenAsap, {Position = UDim2.new(0, 348, 0, 0)}):Play()
		v.Position = UDim2.new(0, 348, 0, 0)
	end
	if v.Name == "Third" then
		TweenService:Create(v, tweenAsap, {Position = UDim2.new(0, 348, 0, 0)}):Play()
		v.Position = UDim2.new(0, 348, 0, 0)
	end
	if v.Name == "Number" then
		TweenService:Create(v, tweenAsap, {Position = UDim2.new(0, 348, 0, 0)}):Play()
		v.Position = UDim2.new(0, 348, 0, 0)
	end
	if v.Name == "Bus" then
		TweenService:Create(v, tweenAsap, {Position = UDim2.new(0, 348, 0, 0)}):Play()
		v.Position = UDim2.new(0, 348, 0, 0)
	end
end

if script.Parent.Notification.Value == 0 then
	while script.Parent.Notification.Value == 0 do
		for i,v in pairs(Screens) do
			if v.Name == "Number" then
				v.Text = script.Parent.NS.Value.."."
				v.Position = UDim2.new(0, 348, 0, 0)
				TweenService:Create(v, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(0, -348, 0, 0)}):Play()
			end
		end
		wait(0.833)
		for a = 1, max, 2 do
			n3xt = a + 1
			if n3xt > max then
				for i,v in pairs(Screens) do
					if v.Name == "Front" then
						v.Image = Split[a]
						v.Position = UDim2.new(0, 348, 0, 0)
						TweenService:Create(v, tweenInfo, {Position = UDim2.new(0, 0, 0, 0)}):Play()
					end
				end
				wait(2.5)
				for i,v in pairs(Screens) do
					if v.Name == "Front" then
						TweenService:Create(v, tweenInfo, {Position = UDim2.new(0, -348, 0, 0)}):Play()
					end
				end
			else
				for i,v in pairs(Screens) do
					if v.Name == "Front" then
						v.Image = Split[a]
						v.Position = UDim2.new(0, 348, 0, 0)
						TweenService:Create(v, tweenInfo, {Position = UDim2.new(0, 0, 0, 0)}):Play()
					end
				end
				wait(2.5)
				for i,v in pairs(Screens) do
					if v.Name == "Front" then
						TweenService:Create(v, tweenInfo, {Position = UDim2.new(0, -348, 0, 0)}):Play()
					end
				end
				for i,v in pairs(Screens) do
					if v.Name == "Second" then
						v.Image = Split[n3xt]
						v.Position = UDim2.new(0, 348, 0, 0)
						TweenService:Create(v, tweenInfo, {Position = UDim2.new(0, 0, 0, 0)}):Play()
					end
				end
				wait(2.5)
				for i,v in pairs(Screens) do
					if v.Name == "Second" then
						TweenService:Create(v, tweenInfo, {Position = UDim2.new(0, -348, 0, 0)}):Play()
					end
				end
			end
		end
		if Stop.Value == "" then
			for i,v in pairs(Screens) do
				if v.Name == "Third" then
					v.Image = Split[1]
					v.Position = UDim2.new(0, 348, 0, 0)
					TweenService:Create(v, tweenInfo, {Position = UDim2.new(0, 0, 0, 0)}):Play()
				end
			end
			wait(10.5)
			for i,v in pairs(Screens) do
				if v.Name == "Third" then
					v.Image = Split[1]
					TweenService:Create(v, tweenInfo, {Position = UDim2.new(0, -348, 0, 0)}):Play()
				end
			end
		else
			for i,v in pairs(Screens) do
				if v.Name == "Bus" then
					v.Position = UDim2.new(0, 348, 0, 0)
					TweenService:Create(v, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(0, -348, 0, 0)}):Play()
				end
			end
			wait(0.833)
			for i,v in pairs(Screens) do
				if v.Name == "Third" then
					v.Image = Stop.Value
					v.Position = UDim2.new(0, 348, 0, 0)
					TweenService:Create(v, tweenInfo, {Position = UDim2.new(0, 0, 0, 0)}):Play()
				end
			end
			wait(10.5)
			for i,v in pairs(Screens) do
				if v.Name == "Third" then
					TweenService:Create(v, tweenInfo, {Position = UDim2.new(0, -348, 0, 0)}):Play()
				end
			end
		end
	end
end
