if game:GetService("RunService"):IsClient() then error("Script must be server-side in order to work; use h/ and not hl/") end
local Player,game,owner = owner,game
local RealPlayer = Player
do
	print("FE Compatibility code by Mokiros")
	local rp = RealPlayer
	script.Parent = rp.Character

	--RemoteEvent for communicating
	local Event = Instance.new("RemoteEvent")
	Event.Name = "UserInput_Event"

	--Fake event to make stuff like Mouse.KeyDown work
	local function fakeEvent()
		local t = {_fakeEvent=true,Functions={},Connect=function(self,f)table.insert(self.Functions,f) end}
		t.connect = t.Connect
		return t
	end

	--Creating fake input objects with fake variables
	local m = {Target=nil,Hit=CFrame.new(),KeyUp=fakeEvent(),KeyDown=fakeEvent(),Button1Up=fakeEvent(),Button1Down=fakeEvent()}
	local UIS = {InputBegan=fakeEvent(),InputEnded=fakeEvent()}
	local CAS = {Actions={},BindAction=function(self,name,fun,touch,...)
		CAS.Actions[name] = fun and {Name=name,Function=fun,Keys={...}} or nil
	end}
	--Merged 2 functions into one by checking amount of arguments
	CAS.UnbindAction = CAS.BindAction

	--This function will trigger the events that have been :Connect()'ed
	local function te(self,ev,...)
		local t = m[ev]
		if t and t._fakeEvent then
			for _,f in pairs(t.Functions) do
				f(...)
			end
		end
	end
	m.TrigEvent = te
	UIS.TrigEvent = te

	Event.OnServerEvent:Connect(function(plr,io)
		if plr~=rp then return end
		m.Target = io.Target
		m.Hit = io.Hit
		if not io.isMouse then
			local b = io.UserInputState == Enum.UserInputState.Begin
			if io.UserInputType == Enum.UserInputType.MouseButton1 then
				return m:TrigEvent(b and "Button1Down" or "Button1Up")
			end
			for _,t in pairs(CAS.Actions) do
				for _,k in pairs(t.Keys) do
					if k==io.KeyCode then
						t.Function(t.Name,io.UserInputState,io)
					end
				end
			end
			m:TrigEvent(b and "KeyDown" or "KeyUp",io.KeyCode.Name:lower())
			UIS:TrigEvent(b and "InputBegan" or "InputEnded",io,false)
		end
	end)
	Event.Parent = NLS([==[
    local Player = game:GetService("Players").LocalPlayer
    local Event = script:WaitForChild("UserInput_Event")
 
    local Mouse = Player:GetMouse()
    local UIS = game:GetService("UserInputService")
    local input = function(io,a)
        if a then return end
        --Since InputObject is a client-side instance, we create and pass table instead
        Event:FireServer({KeyCode=io.KeyCode,UserInputType=io.UserInputType,UserInputState=io.UserInputState,Hit=Mouse.Hit,Target=Mouse.Target})
    end
    UIS.InputBegan:Connect(input)
    UIS.InputEnded:Connect(input)
 
    local h,t
    --Give the server mouse data 30 times every second, but only if the values changed
    --If player is not moving their mouse, client won't fire events
    while wait(1/30) do
        if h~=Mouse.Hit or t~=Mouse.Target then
            h,t=Mouse.Hit,Mouse.Target
            Event:FireServer({isMouse=true,Target=t,Hit=h})
        end
    end]==],Player.Character)

	----Sandboxed game object that allows the usage of client-side methods and services
	--Real game object
	local _rg = game

	--Metatable for fake service
	local fsmt = {
		__index = function(self,k)
			local s = rawget(self,"_RealService")
			if s then return s[k] end
		end,
		__newindex = function(self,k,v)
			local s = rawget(self,"_RealService")
			if s then s[k]=v end
		end,
		__call = function(self,...)
			local s = rawget(self,"_RealService")
			if s then return s(...) end
		end
	}
	local function FakeService(t,RealService)
		t._RealService = typeof(RealService)=="string" and _rg:GetService(RealService) or RealService
		return setmetatable(t,fsmt)
	end

	--Fake game object
	local g = {
		GetService = function(self,s)
			return self[s]
		end,
		Players = FakeService({
			LocalPlayer = FakeService({GetMouse=function(self)return m end},Player)
		},"Players"),
		UserInputService = FakeService(UIS,"UserInputService"),
		ContextActionService = FakeService(CAS,"ContextActionService"),
	}
	rawset(g.Players,"localPlayer",g.Players.LocalPlayer)
	g.service = g.GetService

	g.RunService = FakeService({
		RenderStepped = _rg:GetService("RunService").Heartbeat,
		BindToRenderStep = function(self,name,_,fun)
			self._btrs[name] = self.Heartbeat:Connect(fun)
		end,
		UnbindFromRenderStep = function(self,name)
			self._btrs[name]:Disconnect()
		end,
	},"RunService")

	setmetatable(g,{
		__index=function(self,s)
			return _rg:GetService(s) or typeof(_rg[s])=="function"
				and function(_,...)return _rg[s](_rg,...)end or _rg[s]
		end,
		__newindex = fsmt.__newindex,
		__call = fsmt.__call
	})
	--Changing owner to fake player object to support owner:GetMouse()
	game,owner = g,g.Players.LocalPlayer
end


local Glock18 = Instance.new("Tool")
Glock18.Name = "Glock 18"
Glock18.WorldPivot = CFrame.new(24, -0.9590103030204773, 20.5, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Glock18.GripPos = Vector3.new(-0.5, -0.10000000149011612, 0)
Glock18.Grip = CFrame.new(-0.5, -0.10000000149011612, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Glock18.GripForward = Vector3.new(1, -0, -0)
Glock18.GripRight = Vector3.new(0, 0, 1)

local Handle = Instance.new("MeshPart")
Handle.Name = "Handle"
Handle.Color = Color3.fromRGB(17, 17, 17)
Handle.Material = Enum.Material.SmoothPlastic
Handle.Size = Vector3.new(1.0233103036880493, 0.6410248279571533, 0.16409620642662048)
Handle.CFrame = CFrame.new(0, 0.2705124020576477, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Handle.Parent = Glock18

local LocalScript = Instance.new("LocalScript")
LocalScript.Parent = Handle

local Sound = Instance.new("Sound")
Sound.Volume = 10
Sound.SoundId = "rbxassetid://5707271097"
Sound.Parent = Handle

local DistortionSoundEffect = Instance.new("DistortionSoundEffect")
DistortionSoundEffect.Level = 0.99
DistortionSoundEffect.Parent = Sound

local Script = Instance.new("Script")
Script.Parent = Handle

local Damage = Instance.new("RemoteEvent")
Damage.Name = "Damage"
Damage.Parent = Handle

Glock18.Parent = game:GetService("Players").LocalPlayer.Backpack
active = false


mouse = game.Players.LocalPlayer:GetMouse()
Glock18.Activated:connect(function()
	local RayCast = Ray.new(Handle.Position, mouse.Hit.Position)
	local Part, Position = workspace:FindPartOnRay(RayCast, game.Players.LocalPlayer.Character, false, true)
	if Part then
		local Hum = Part.Parent:FindFirstChild("Humanoid")
		if Hum then
			Hum.Health = -9999999999
		end
	end
	local Laser = Instance.new("Part", workspace)
	Laser.CanCollide = false
	Laser.Anchored = true
	local Dist = (Handle.Position-mouse.Hit.Position)
	Laser.CFrame = CFrame.new(Handle.Position,Position)*CFrame.new(0,0,-Dist/2)
	local target = mouse.Target
	game.Debris:addItem(Laser, 0.4)

	if target~=nil and active == false then
		if target.Parent:FindFirstChild('Humanoid') then
			target.Parent:FindFirstChildOfClass("Humanoid").Health = nil


		end
		active = true
		Sound:Play()
		part(mouse.Hit)

		task.spawn(function()
			Glock18.GripUp = Vector3.new(0.197, 0.98, 0)
			wait(0.2)
			Glock18.GripUp = Vector3.new(0, 1, 0)
		end)
		active = false
	elseif active==false then
		active = true
		Sound:Play()
		task.spawn(function()
			Glock18.GripUp = Vector3.new(0.197, 0.98, 0)
			wait(0.2)
			Glock18.GripUp = Vector3.new(0, 1, 0)
		end)
		active = false
	end
end)

function part(pos)
	local p = Instance.new("Part",workspace)
	p.Size = Vector3.new(.1,.1,.1)
	p.CFrame = pos
	p.CanCollide = false
	p.Anchored = true
	p.Shape = "Ball"
	p.Color = Color3.new(0,0,0)
end
