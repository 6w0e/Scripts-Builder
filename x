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
	local target = mouse.Target
	
	
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
