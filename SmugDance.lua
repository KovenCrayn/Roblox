ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")

Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]

Character = Player.Character
Humanoid = Character.Humanoid

local BODY = {}
for _, c in pairs(Character:GetDescendants()) do
	if c:IsA("BasePart") and c.Name ~= "Handle" then
		if c ~= RootPart and c ~= Torso and c ~= Head and c ~= RightArm and c ~= LeftArm and c ~= RightLeg and c ~= LeftLeg then
			c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		end
		table.insert(BODY,{c,c.Parent,c.Material,c.Color,c.Transparency,c.Size,c.Name})
	elseif c:IsA("JointInstance") then
		table.insert(BODY,{c,c.Parent,nil,nil,nil,nil,nil})
	end
end

function refit()
	Character.Parent = workspace
	for e = 1, #BODY do
		if BODY[e] ~= nil then
			local STUFF = BODY[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			--local SIZE = STUFF[6]
			local NAME = STUFF[7]
			if PART.ClassName == "Part" and PART ~= RootPart then
				PART.Material = MATERIAL
				PART.Transparency = TRANSPARENCY
				PART.Name = NAME
			end
			if PART.Parent ~= PARENT then
				Humanoid:remove()
				PART.Parent = PARENT
				Humanoid = IT("Humanoid",Character)
			end
		end
	end
end

Humanoid.Died:connect(function()
	           refit()
end)

Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local sick = Instance.new("Sound",Torso)

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

local Speed = 0.1
AnimationSpeed=.8
SmoothTime=2

function swait(num)
if num==0 or num==nil then
--if Stagger.Value==false or Stun.Value<=100 then
--Player.PlayerGui.Pacemaker.Heartbeat.Event:wait()
script.Heartbeat.Event:wait()
--end
else
for i=0,num do
--Player.PlayerGui.Pacemaker.Heartbeat.Event:wait()
script.Heartbeat.Event:wait()
--[[if Stagger.Value==true or Stun.Value>=StunT.Value then
break
end]]
end
end
end
script:WaitForChild("Heartbeat")

frame = 1/60
tf = 0
allowframeloss = false --if set to true will fire every frame it possibly can. This will result in multiple events happening at the same time whenever delta returns frame2 or greater.
tossremainder = false --if set to true t will be set to 0 after Fire()-ing.
lastframe = tick()
script.Heartbeat:Fire() --ayy lmao

game:GetService("RunService").Heartbeat:connect(function(s,p) --herp derp
    tf = tf + s
    if tf >= frame then
        if allowframeloss then
            script.Heartbeat:Fire()
            lastframe=tick()
        else
            ----print("FIRED "..math.floor(t/frame).." FRAME(S)","REMAINDER "..(t - frame(math.floor(t/frame))))
            for i=1, math.floor(tf/frame) do
                script.Heartbeat:Fire()
            end
            lastframe=tick()
        end
        if tossremainder then
            tf = 0
        else
            tf = tf - frame * math.floor(tf/frame)
        end
    end
end)

Anim = {  	Properties = {
		Looping = true,
		Priority = Enum.AnimationPriority.Action
	},
	Keyframes = {
		[0] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.Angles(math.rad(-10.657), 0, 0),
					["Left Leg"] = {
						CFrame = CFrame.Angles(math.rad(-5.214), math.rad(-0.859), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.Angles(0, 0, math.rad(169.767)),
					},
					["Left Arm"] = {
						CFrame = CFrame.Angles(0, 0, math.rad(-169.767)),
					},
					["Right Leg"] = {
						CFrame = CFrame.Angles(math.rad(-4.526), math.rad(0.745), math.rad(-9.454)),
					},
				},
			},
		},
		[0.017] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.001, -0.003) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-0.115)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.003, 0.003, 0) * CFrame.Angles(math.rad(-5.271), math.rad(-0.745), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.002, -0.001, -0.001) * CFrame.Angles(math.rad(0.63), math.rad(-0.458), math.rad(169.08)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.003, -0.01, -0.001) * CFrame.Angles(math.rad(-0.573), math.rad(-0.516), math.rad(-169.137)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.001, 0.003, 0.001) * CFrame.Angles(math.rad(-4.526), math.rad(0.516), math.rad(-9.454)),
					},
				},
			},
		},
		[0.033] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.003, -0.014) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-0.516)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.011, 0.012, 0.002) * CFrame.Angles(math.rad(-5.386), math.rad(-0.286), math.rad(9.339)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.008, -0.003, -0.004) * CFrame.Angles(math.rad(2.464), math.rad(-1.948), math.rad(167.132)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.012, -0.039, -0.004) * CFrame.Angles(math.rad(-2.349), math.rad(-2.005), math.rad(-167.189)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.004, 0.013, 0.003) * CFrame.Angles(math.rad(-4.641), math.rad(-0.229), math.rad(-9.454)),
					},
				},
			},
		},
		[0.05] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.006, -0.031) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-1.089)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.024, 0.027, 0.004) * CFrame.Angles(math.rad(-5.615), math.rad(0.458), math.rad(9.225)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.016, -0.005, -0.008) * CFrame.Angles(math.rad(5.386), math.rad(-4.469), math.rad(163.866)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.026, -0.084, -0.006) * CFrame.Angles(math.rad(-5.214), math.rad(-4.641), math.rad(-164.095)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.009, 0.028, 0.006) * CFrame.Angles(math.rad(-4.756), math.rad(-1.432), math.rad(-9.454)),
					},
				},
			},
		},
		[0.067] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.011, -0.056) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-1.948)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.043, 0.047, 0.007) * CFrame.Angles(math.rad(-5.959), math.rad(1.432), math.rad(9.11)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.021, -0.004, -0.011) * CFrame.Angles(math.rad(9.282), math.rad(-8.308), math.rad(159.569)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.044, -0.139, -0.004) * CFrame.Angles(math.rad(-8.938), math.rad(-8.537), math.rad(-159.913)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.016, 0.05, 0.01) * CFrame.Angles(math.rad(-4.927), math.rad(-3.094), math.rad(-9.511)),
					},
				},
			},
		},
		[0.083] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.016, -0.087) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-3.094)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.068, 0.074, 0.01) * CFrame.Angles(math.rad(-6.36), math.rad(2.75), math.rad(8.881)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.018, -0.001, -0.007) * CFrame.Angles(math.rad(13.923), math.rad(-13.694), math.rad(154.355)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.065, -0.196, 0.005) * CFrame.Angles(math.rad(-13.35), math.rad(-13.98), math.rad(-154.928)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.025, 0.078, 0.015) * CFrame.Angles(math.rad(-5.157), math.rad(-5.271), math.rad(-9.568)),
					},
				},
			},
		},
		[0.1] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.024, -0.126) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-4.412)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.098, 0.106, 0.014) * CFrame.Angles(math.rad(-6.875), math.rad(4.354), math.rad(8.709)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.001, 0.007, 0.007) * CFrame.Angles(math.rad(19.022), math.rad(-20.684), math.rad(148.396)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.081, -0.245, 0.024) * CFrame.Angles(math.rad(-18.277), math.rad(-21.028), math.rad(-149.198)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.035, 0.113, 0.019) * CFrame.Angles(math.rad(-5.443), math.rad(-7.964), math.rad(-9.626)),
					},
				},
			},
		},
		[0.117] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.032, -0.171) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-6.016)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.134, 0.144, 0.017) * CFrame.Angles(math.rad(-7.448), math.rad(6.188), math.rad(8.48)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.038, 0.015, 0.042) * CFrame.Angles(math.rad(24.408), math.rad(-29.622), math.rad(141.864)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.083, -0.274, 0.052) * CFrame.Angles(math.rad(-23.377), math.rad(-29.908), math.rad(-142.838)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.048, 0.153, 0.024) * CFrame.Angles(math.rad(-5.787), math.rad(-11.115), math.rad(-9.74)),
					},
				},
			},
		},
		[0.133] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.042, -0.224) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-7.907)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.175, 0.187, 0.02) * CFrame.Angles(math.rad(-8.136), math.rad(8.365), math.rad(8.251)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.105, 0.017, 0.108) * CFrame.Angles(math.rad(29.679), math.rad(-40.451), math.rad(134.702)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.058, -0.272, 0.085) * CFrame.Angles(math.rad(-28.419), math.rad(-40.737), math.rad(-135.963)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.063, 0.2, 0.027) * CFrame.Angles(math.rad(-6.188), math.rad(-14.725), math.rad(-9.912)),
					},
				},
			},
		},
		[0.15] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.052, -0.276) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-9.74)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.217, 0.23, 0.023) * CFrame.Angles(math.rad(-8.824), math.rad(10.542), math.rad(8.021)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.189, 0.002, 0.201) * CFrame.Angles(math.rad(33.919), math.rad(-51.738), math.rad(127.598)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.002, -0.239, 0.108) * CFrame.Angles(math.rad(-32.429), math.rad(-51.967), math.rad(-129.03)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.078, 0.246, 0.028) * CFrame.Angles(math.rad(-6.589), math.rad(-18.335), math.rad(-10.084)),
					},
				},
			},
		},
		[0.167] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.061, -0.321) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-11.345)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.254, 0.267, 0.024) * CFrame.Angles(math.rad(-9.397), math.rad(12.433), math.rad(7.85)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.272, -0.028, 0.302) * CFrame.Angles(math.rad(36.383), math.rad(-61.765), math.rad(120.837)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.086, -0.191, 0.115) * CFrame.Angles(math.rad(-34.721), math.rad(-61.937), math.rad(-122.441)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.091, 0.287, 0.027) * CFrame.Angles(math.rad(-6.99), math.rad(-21.486), math.rad(-10.256)),
					},
				},
			},
		},
		[0.183] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.068, -0.36) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-12.662)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.285, 0.298, 0.024) * CFrame.Angles(math.rad(-9.855), math.rad(14.037), math.rad(7.735)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.344, -0.071, 0.402) * CFrame.Angles(math.rad(36.612), math.rad(-70.359), math.rad(113.618)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.179, -0.141, 0.106) * CFrame.Angles(math.rad(-34.836), math.rad(-70.417), math.rad(-115.279)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.103, 0.321, 0.025) * CFrame.Angles(math.rad(-7.334), math.rad(-24.122), math.rad(-10.485)),
					},
				},
			},
		},
		[0.2] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.074, -0.391) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-13.808)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.311, 0.324, 0.025) * CFrame.Angles(math.rad(-10.256), math.rad(15.355), math.rad(7.678)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.403, -0.117, 0.492) * CFrame.Angles(math.rad(33.289), math.rad(-77.292), math.rad(104.278)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.27, -0.097, 0.086) * CFrame.Angles(math.rad(-31.398), math.rad(-77.292), math.rad(-106.112)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.112, 0.348, 0.023) * CFrame.Angles(math.rad(-7.62), math.rad(-26.299), math.rad(-10.6)),
					},
				},
			},
		},
		[0.217] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.078, -0.416) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-14.668)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.331, 0.343, 0.024) * CFrame.Angles(math.rad(-10.6), math.rad(16.387), math.rad(7.563)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.448, -0.162, 0.566) * CFrame.Angles(math.rad(22.746), math.rad(-82.449), math.rad(89.152)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.35, -0.064, 0.063) * CFrame.Angles(math.rad(-20.97), math.rad(-82.391), math.rad(-91.272)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.12, 0.37, 0.021) * CFrame.Angles(math.rad(-7.85), math.rad(-28.018), math.rad(-10.772)),
					},
				},
			},
		},
		[0.233] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.082, -0.433) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-15.298)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.345, 0.357, 0.024) * CFrame.Angles(math.rad(-10.829), math.rad(17.131), math.rad(7.563)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.479, -0.198, 0.621) * CFrame.Angles(math.rad(-1.833), math.rad(-85.428), math.rad(61.306)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.412, -0.04, 0.042) * CFrame.Angles(math.rad(2.922), math.rad(-85.371), math.rad(-64.229)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.126, 0.385, 0.02) * CFrame.Angles(math.rad(-8.021), math.rad(-29.221), math.rad(-10.886)),
					},
				},
			},
		},
		[0.25] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.084, -0.444) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-15.642)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.354, 0.366, 0.024) * CFrame.Angles(math.rad(-10.943), math.rad(17.533), math.rad(7.506)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.496, -0.221, 0.655) * CFrame.Angles(math.rad(-32.716), math.rad(-86.23), math.rad(28.476)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.451, -0.026, 0.027) * CFrame.Angles(math.rad(32.888), math.rad(-86.173), math.rad(-32.372)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.129, 0.394, 0.018) * CFrame.Angles(math.rad(-8.136), math.rad(-29.908), math.rad(-10.943)),
					},
				},
			},
		},
		[0.267] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.084, -0.447) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-15.756)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.357, 0.368, 0.024) * CFrame.Angles(math.rad(-11.001), math.rad(17.704), math.rad(7.506)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.502, -0.229, 0.666) * CFrame.Angles(math.rad(-44.462), math.rad(-86.173), math.rad(16.1)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.464, -0.022, 0.022) * CFrame.Angles(math.rad(44.462), math.rad(-86.173), math.rad(-20.225)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.13, 0.397, 0.018) * CFrame.Angles(math.rad(-8.193), math.rad(-30.138), math.rad(-10.943)),
					},
				},
			},
		},
		[0.283] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.083, -0.443) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-15.584)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.353, 0.365, 0.024) * CFrame.Angles(math.rad(-10.943), math.rad(17.475), math.rad(7.506)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.495, -0.219, 0.651) * CFrame.Angles(math.rad(-29.164), math.rad(-86.173), math.rad(32.258)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.447, -0.028, 0.029) * CFrame.Angles(math.rad(29.335), math.rad(-86.173), math.rad(-36.096)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.129, 0.393, 0.018) * CFrame.Angles(math.rad(-8.136), math.rad(-29.851), math.rad(-10.943)),
					},
				},
			},
		},
		[0.3] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.081, -0.429) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-15.126)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.342, 0.354, 0.024) * CFrame.Angles(math.rad(-10.772), math.rad(16.902), math.rad(7.563)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.471, -0.189, 0.608) * CFrame.Angles(math.rad(6.875), math.rad(-84.855), math.rad(70.818)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.397, -0.046, 0.048) * CFrame.Angles(math.rad(-5.5), math.rad(-84.74), math.rad(-73.396)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.124, 0.381, 0.02) * CFrame.Angles(math.rad(-7.964), math.rad(-28.877), math.rad(-10.829)),
					},
				},
			},
		},
		[0.317] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.076, -0.406) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-14.324)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.323, 0.336, 0.024) * CFrame.Angles(math.rad(-10.485), math.rad(15.986), math.rad(7.62)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.431, -0.143, 0.537) * CFrame.Angles(math.rad(28.533), math.rad(-80.501), math.rad(96.773)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.318, -0.077, 0.073) * CFrame.Angles(math.rad(-26.643), math.rad(-80.443), math.rad(-98.721)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.117, 0.361, 0.022) * CFrame.Angles(math.rad(-7.735), math.rad(-27.33), math.rad(-10.714)),
					},
				},
			},
		},
		[0.333] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.07, -0.374) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-13.178)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.297, 0.31, 0.025) * CFrame.Angles(math.rad(-10.027), math.rad(14.668), math.rad(7.678)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.371, -0.09, 0.443) * CFrame.Angles(math.rad(35.753), math.rad(-73.51), math.rad(110.008)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.219, -0.121, 0.098) * CFrame.Angles(math.rad(-33.919), math.rad(-73.568), math.rad(-111.784)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.107, 0.333, 0.025) * CFrame.Angles(math.rad(-7.448), math.rad(-25.153), math.rad(-10.542)),
					},
				},
			},
		},
		[0.35] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.063, -0.333) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-11.746)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.263, 0.277, 0.024) * CFrame.Angles(math.rad(-9.511), math.rad(12.949), math.rad(7.85)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.294, -0.039, 0.332) * CFrame.Angles(math.rad(36.669), math.rad(-64.4), math.rad(118.889)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.112, -0.176, 0.113) * CFrame.Angles(math.rad(-35.008), math.rad(-64.515), math.rad(-120.493)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.095, 0.297, 0.027) * CFrame.Angles(math.rad(-7.105), math.rad(-22.288), math.rad(-10.313)),
					},
				},
			},
		},
		[0.367] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.053, -0.283) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-9.969)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.223, 0.236, 0.023) * CFrame.Angles(math.rad(-8.881), math.rad(10.829), math.rad(8.021)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.201, -0.001, 0.215) * CFrame.Angles(math.rad(34.377), math.rad(-53.285), math.rad(126.624)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.013, -0.232, 0.11) * CFrame.Angles(math.rad(-32.888), math.rad(-53.514), math.rad(-128.056)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.08, 0.253, 0.028) * CFrame.Angles(math.rad(-6.646), math.rad(-18.793), math.rad(-10.141)),
					},
				},
			},
		},
		[0.383] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.042, -0.224) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-7.907)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.175, 0.187, 0.02) * CFrame.Angles(math.rad(-8.136), math.rad(8.365), math.rad(8.251)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.105, 0.017, 0.108) * CFrame.Angles(math.rad(29.679), math.rad(-40.451), math.rad(134.702)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.058, -0.272, 0.085) * CFrame.Angles(math.rad(-28.419), math.rad(-40.737), math.rad(-135.963)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.063, 0.2, 0.027) * CFrame.Angles(math.rad(-6.188), math.rad(-14.725), math.rad(-9.912)),
					},
				},
			},
		},
		[0.4] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.031, -0.164) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-5.787)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.128, 0.138, 0.017) * CFrame.Angles(math.rad(-7.391), math.rad(5.901), math.rad(8.537)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.031, 0.014, 0.036) * CFrame.Angles(math.rad(23.606), math.rad(-28.19), math.rad(142.838)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.084, -0.271, 0.048) * CFrame.Angles(math.rad(-22.632), math.rad(-28.533), math.rad(-143.812)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.046, 0.147, 0.023) * CFrame.Angles(math.rad(-5.73), math.rad(-10.6), math.rad(-9.74)),
					},
				},
			},
		},
		[0.417] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.021, -0.114) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-4.011)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.089, 0.096, 0.013) * CFrame.Angles(math.rad(-6.704), math.rad(3.839), math.rad(8.766)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.008, 0.004, 0.001) * CFrame.Angles(math.rad(17.533), math.rad(-18.507), math.rad(150.172)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.077, -0.232, 0.018) * CFrame.Angles(math.rad(-16.845), math.rad(-18.85), math.rad(-150.86)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.032, 0.102, 0.018) * CFrame.Angles(math.rad(-5.329), math.rad(-7.162), math.rad(-9.626)),
					},
				},
			},
		},
		[0.433] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.014, -0.073) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-2.578)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.057, 0.062, 0.009) * CFrame.Angles(math.rad(-6.188), math.rad(2.177), math.rad(8.995)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.021, -0.003, -0.01) * CFrame.Angles(math.rad(11.86), math.rad(-11.173), math.rad(156.704)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.056, -0.172, 0.001) * CFrame.Angles(math.rad(-11.402), math.rad(-11.459), math.rad(-157.162)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.021, 0.066, 0.013) * CFrame.Angles(math.rad(-5.042), math.rad(-4.297), math.rad(-9.511)),
					},
				},
			},
		},
		[0.45] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.008, -0.041) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-1.432)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.032, 0.035, 0.005) * CFrame.Angles(math.rad(-5.73), math.rad(0.802), math.rad(9.167)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.019, -0.005, -0.01) * CFrame.Angles(math.rad(6.933), math.rad(-5.959), math.rad(162.147)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.033, -0.106, -0.005) * CFrame.Angles(math.rad(-6.704), math.rad(-6.131), math.rad(-162.434)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.012, 0.037, 0.008) * CFrame.Angles(math.rad(-4.813), math.rad(-2.063), math.rad(-9.511)),
					},
				},
			},
		},
		[0.467] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.003, -0.018) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-0.63)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.014, 0.016, 0.002) * CFrame.Angles(math.rad(-5.443), math.rad(-0.115), math.rad(9.339)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.01, -0.003, -0.005) * CFrame.Angles(math.rad(3.209), math.rad(-2.521), math.rad(166.33)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.015, -0.05, -0.004) * CFrame.Angles(math.rad(-3.094), math.rad(-2.636), math.rad(-166.444)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.005, 0.016, 0.004) * CFrame.Angles(math.rad(-4.641), math.rad(-0.516), math.rad(-9.454)),
					},
				},
			},
		},
		[0.483] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.001, -0.005) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-0.172)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.004, 0.004, 0.001) * CFrame.Angles(math.rad(-5.271), math.rad(-0.688), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.003, -0.001, -0.002) * CFrame.Angles(math.rad(0.802), math.rad(-0.63), math.rad(168.908)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.004, -0.013, -0.001) * CFrame.Angles(math.rad(-0.802), math.rad(-0.63), math.rad(-168.908)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.001, 0.004, 0.001) * CFrame.Angles(math.rad(-4.526), math.rad(0.458), math.rad(-9.454)),
					},
				},
			},
		},
		[0.5] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.Angles(math.rad(-10.657), 0, 0),
					["Left Leg"] = {
						CFrame = CFrame.Angles(math.rad(-5.214), math.rad(-0.859), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.Angles(0, 0, math.rad(169.767)),
					},
					["Left Arm"] = {
						CFrame = CFrame.Angles(0, 0, math.rad(-169.767)),
					},
					["Right Leg"] = {
						CFrame = CFrame.Angles(math.rad(-4.526), math.rad(0.745), math.rad(-9.454)),
					},
				},
			},
		},
		[0.517] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.001, -0.004) * CFrame.Angles(math.rad(-10.657), 0, math.rad(0.115)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.003, 0.004, 0.001) * CFrame.Angles(math.rad(-5.214), math.rad(-0.63), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.004, -0.01, -0.002) * CFrame.Angles(math.rad(-0.573), math.rad(0.573), math.rad(169.137)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.003, -0.001, -0.001) * CFrame.Angles(math.rad(0.63), math.rad(0.516), math.rad(-169.08)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.001, 0.004, 0) * CFrame.Angles(math.rad(-4.584), math.rad(0.63), math.rad(-9.397)),
					},
				},
			},
		},
		[0.533] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.003, -0.017) * CFrame.Angles(math.rad(-10.657), 0, math.rad(0.401)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.011, 0.017, 0.004) * CFrame.Angles(math.rad(-5.329), math.rad(-0.057), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.015, -0.04, -0.005) * CFrame.Angles(math.rad(-2.235), math.rad(2.235), math.rad(167.189)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.01, -0.004, -0.005) * CFrame.Angles(math.rad(2.406), math.rad(2.12), math.rad(-167.017)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.006, 0.017, 0) * CFrame.Angles(math.rad(-4.87), math.rad(0.172), math.rad(-9.397)),
					},
				},
			},
		},
		[0.55] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.007, -0.037) * CFrame.Angles(math.rad(-10.657), 0, math.rad(0.917)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.024, 0.039, 0.009) * CFrame.Angles(math.rad(-5.5), math.rad(1.031), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.034, -0.086, -0.009) * CFrame.Angles(math.rad(-4.927), math.rad(5.157), math.rad(164.095)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.018, -0.008, -0.01) * CFrame.Angles(math.rad(5.271), math.rad(4.927), math.rad(-163.751)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.014, 0.038, 0.001) * CFrame.Angles(math.rad(-5.271), math.rad(-0.573), math.rad(-9.282)),
					},
				},
			},
		},
		[0.567] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.012, -0.066) * CFrame.Angles(math.rad(-10.657), 0, math.rad(1.604)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.042, 0.069, 0.015) * CFrame.Angles(math.rad(-5.73), math.rad(2.464), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.058, -0.142, -0.01) * CFrame.Angles(math.rad(-8.422), math.rad(9.454), math.rad(159.913)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.025, -0.011, -0.014) * CFrame.Angles(math.rad(9.053), math.rad(9.11), math.rad(-159.34)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.024, 0.068, 0.001) * CFrame.Angles(math.rad(-5.901), math.rad(-1.662), math.rad(-9.225)),
					},
				},
			},
		},
		[0.583] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.02, -0.104) * CFrame.Angles(math.rad(-10.657), 0, math.rad(2.521)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.066, 0.108, 0.023) * CFrame.Angles(math.rad(-6.073), math.rad(4.354), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.085, -0.201, -0.003) * CFrame.Angles(math.rad(-12.548), math.rad(15.298), math.rad(154.87)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.024, -0.012, -0.013) * CFrame.Angles(math.rad(13.465), math.rad(14.897), math.rad(-154.011)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.038, 0.106, 0.001) * CFrame.Angles(math.rad(-6.646), math.rad(-3.037), math.rad(-9.11)),
					},
				},
			},
		},
		[0.6] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.028, -0.149) * CFrame.Angles(math.rad(-10.657), 0, math.rad(3.61)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.095, 0.155, 0.032) * CFrame.Angles(math.rad(-6.474), math.rad(6.646), math.rad(9.511)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.107, -0.252, 0.014) * CFrame.Angles(math.rad(-16.96), math.rad(22.918), math.rad(149.084)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.009, -0.011, 0) * CFrame.Angles(math.rad(18.335), math.rad(22.46), math.rad(-147.88)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.055, 0.152, 0.001) * CFrame.Angles(math.rad(-7.62), math.rad(-4.641), math.rad(-8.995)),
					},
				},
			},
		},
		[0.617] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.038, -0.203) * CFrame.Angles(math.rad(-10.657), 0, math.rad(4.927)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.13, 0.211, 0.041) * CFrame.Angles(math.rad(-6.933), math.rad(9.397), math.rad(9.568)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.115, -0.284, 0.041) * CFrame.Angles(math.rad(-21.429), math.rad(32.372), math.rad(142.609)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.028, -0.011, 0.033) * CFrame.Angles(math.rad(23.205), math.rad(31.914), math.rad(-141.12)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.076, 0.206, 0) * CFrame.Angles(math.rad(-8.709), math.rad(-6.646), math.rad(-8.881)),
					},
				},
			},
		},
		[0.633] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.05, -0.265) * CFrame.Angles(math.rad(-10.657), 0, math.rad(6.474)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.17, 0.276, 0.05) * CFrame.Angles(math.rad(-7.448), math.rad(12.49), math.rad(9.683)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.093, -0.285, 0.073) * CFrame.Angles(math.rad(-25.554), math.rad(43.774), math.rad(135.218)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.092, -0.021, 0.096) * CFrame.Angles(math.rad(27.788), math.rad(43.43), math.rad(-133.442)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.101, 0.268, -0.003) * CFrame.Angles(math.rad(-10.027), math.rad(-8.881), math.rad(-8.824)),
					},
				},
			},
		},
		[0.65] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.062, -0.328) * CFrame.Angles(math.rad(-10.657), 0, math.rad(7.964)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.21, 0.34, 0.058) * CFrame.Angles(math.rad(-8.021), math.rad(15.642), math.rad(9.798)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.032, -0.256, 0.097) * CFrame.Angles(math.rad(-28.132), math.rad(55.52), math.rad(127.311)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.173, -0.049, 0.188) * CFrame.Angles(math.rad(30.882), math.rad(55.29), math.rad(-125.363)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.127, 0.329, -0.006) * CFrame.Angles(math.rad(-11.287), math.rad(-11.173), math.rad(-8.824)),
					},
				},
			},
		},
		[0.667] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.072, -0.381) * CFrame.Angles(math.rad(-10.657), 0, math.rad(9.282)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.246, 0.395, 0.064) * CFrame.Angles(math.rad(-8.48), math.rad(18.335), math.rad(9.912)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.054, -0.213, 0.104) * CFrame.Angles(math.rad(-28.075), math.rad(65.776), math.rad(118.717)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.251, -0.092, 0.289) * CFrame.Angles(math.rad(31.341), math.rad(65.718), math.rad(-116.712)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.15, 0.382, -0.01) * CFrame.Angles(math.rad(-12.433), math.rad(-13.121), math.rad(-8.881)),
					},
				},
			},
		},
		[0.683] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.08, -0.427) * CFrame.Angles(math.rad(-10.657), 0, math.rad(10.371)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.276, 0.442, 0.068) * CFrame.Angles(math.rad(-8.938), math.rad(20.626), math.rad(10.084)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.152, -0.168, 0.094) * CFrame.Angles(math.rad(-23.606), math.rad(74.313), math.rad(107.258)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.318, -0.146, 0.388) * CFrame.Angles(math.rad(27.387), math.rad(74.427), math.rad(-105.31)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.17, 0.426, -0.014) * CFrame.Angles(math.rad(-13.407), math.rad(-14.782), math.rad(-8.938)),
					},
				},
			},
		},
		[0.7] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.087, -0.464) * CFrame.Angles(math.rad(-10.657), 0, math.rad(11.287)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.301, 0.48, 0.071) * CFrame.Angles(math.rad(-9.282), math.rad(22.517), math.rad(10.199)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.247, -0.13, 0.074) * CFrame.Angles(math.rad(-9.167), math.rad(80.787), math.rad(87.204)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.371, -0.202, 0.478) * CFrame.Angles(math.rad(13.235), math.rad(81.074), math.rad(-85.199)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.186, 0.462, -0.017) * CFrame.Angles(math.rad(-14.209), math.rad(-16.157), math.rad(-8.995)),
					},
				},
			},
		},
		[0.717] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.093, -0.493) * CFrame.Angles(math.rad(-10.657), 0, math.rad(11.975)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.32, 0.51, 0.072) * CFrame.Angles(math.rad(-9.568), math.rad(24.007), math.rad(10.313)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.331, -0.1, 0.05) * CFrame.Angles(math.rad(25.955), math.rad(84.053), math.rad(47.727)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.411, -0.254, 0.551) * CFrame.Angles(math.rad(-24.064), math.rad(84.397), math.rad(-43.316)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.199, 0.489, -0.02) * CFrame.Angles(math.rad(-14.84), math.rad(-17.189), math.rad(-9.053)),
					},
				},
			},
		},
		[0.733] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.097, -0.514) * CFrame.Angles(math.rad(-10.657), 0, math.rad(12.49)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.335, 0.531, 0.073) * CFrame.Angles(math.rad(-9.798), math.rad(25.038), math.rad(10.428)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.395, -0.08, 0.028) * CFrame.Angles(math.rad(63.312), math.rad(83.652), math.rad(7.277)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.437, -0.296, 0.605) * CFrame.Angles(math.rad(-63.713), math.rad(83.824), math.rad(-0.401)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.209, 0.509, -0.022) * CFrame.Angles(math.rad(-15.241), math.rad(-17.934), math.rad(-9.11)),
					},
				},
			},
		},
		[0.75] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.099, -0.527) * CFrame.Angles(math.rad(-10.657), 0, math.rad(12.777)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.343, 0.544, 0.074) * CFrame.Angles(math.rad(-9.912), math.rad(25.669), math.rad(10.485)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.436, -0.069, 0.013) * CFrame.Angles(math.rad(79.24), math.rad(82.277), math.rad(-10.542)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.452, -0.323, 0.638) * CFrame.Angles(math.rad(-79.469), math.rad(82.334), math.rad(17.303)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.214, 0.521, -0.024) * CFrame.Angles(math.rad(-15.527), math.rad(-18.392), math.rad(-9.167)),
					},
				},
			},
		},
		[0.767] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.1, -0.531) * CFrame.Angles(math.rad(-10.657), 0, math.rad(12.892)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.346, 0.548, 0.074) * CFrame.Angles(math.rad(-9.969), math.rad(25.84), math.rad(10.485)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.449, -0.065, 0.008) * CFrame.Angles(math.rad(83.193), math.rad(81.704), math.rad(-15.126)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.457, -0.332, 0.649) * CFrame.Angles(math.rad(-83.193), math.rad(81.704), math.rad(21.772)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.216, 0.525, -0.024) * CFrame.Angles(math.rad(-15.642), math.rad(-18.564), math.rad(-9.167)),
					},
				},
			},
		},
		[0.783] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.099, -0.525) * CFrame.Angles(math.rad(-10.657), 0, math.rad(12.777)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.342, 0.542, 0.074) * CFrame.Angles(math.rad(-9.912), math.rad(25.554), math.rad(10.485)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.431, -0.07, 0.015) * CFrame.Angles(math.rad(77.922), math.rad(82.449), math.rad(-8.995)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.451, -0.32, 0.635) * CFrame.Angles(math.rad(-78.151), math.rad(82.506), math.rad(15.814)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.214, 0.519, -0.023) * CFrame.Angles(math.rad(-15.527), math.rad(-18.335), math.rad(-9.167)),
					},
				},
			},
		},
		[0.8] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.096, -0.509) * CFrame.Angles(math.rad(-10.657), 0, math.rad(12.376)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.331, 0.526, 0.073) * CFrame.Angles(math.rad(-9.74), math.rad(24.752), math.rad(10.371)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.379, -0.085, 0.034) * CFrame.Angles(math.rad(54.889), math.rad(83.996), math.rad(16.444)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.431, -0.285, 0.592) * CFrame.Angles(math.rad(-55.061), math.rad(84.225), math.rad(-9.798)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.206, 0.504, -0.022) * CFrame.Angles(math.rad(-15.126), math.rad(-17.762), math.rad(-9.11)),
					},
				},
			},
		},
		[0.817] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.091, -0.482) * CFrame.Angles(math.rad(-10.657), 0, math.rad(11.746)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.313, 0.498, 0.072) * CFrame.Angles(math.rad(-9.454), math.rad(23.377), math.rad(10.256)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.297, -0.112, 0.061) * CFrame.Angles(math.rad(8.079), math.rad(83.136), math.rad(67.323)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.396, -0.233, 0.522) * CFrame.Angles(math.rad(-4.756), math.rad(83.48), math.rad(-64.4)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.194, 0.478, -0.019) * CFrame.Angles(math.rad(-14.553), math.rad(-16.788), math.rad(-9.053)),
					},
				},
			},
		},
		[0.833] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.084, -0.444) * CFrame.Angles(math.rad(-10.657), 0, math.rad(10.772)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.287, 0.459, 0.069) * CFrame.Angles(math.rad(-9.11), math.rad(21.486), math.rad(10.141)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.193, -0.151, 0.087) * CFrame.Angles(math.rad(-19.251), math.rad(77.407), math.rad(100.268)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.343, -0.17, 0.428) * CFrame.Angles(math.rad(23.205), math.rad(77.578), math.rad(-98.434)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.177, 0.442, -0.015) * CFrame.Angles(math.rad(-13.751), math.rad(-15.413), math.rad(-8.938)),
					},
				},
			},
		},
		[0.85] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.074, -0.395) * CFrame.Angles(math.rad(-10.657), 0, math.rad(9.626)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.255, 0.41, 0.065) * CFrame.Angles(math.rad(-8.652), math.rad(19.022), math.rad(9.969)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.081, -0.2, 0.102) * CFrame.Angles(math.rad(-27.387), math.rad(68.411), math.rad(115.852)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.271, -0.107, 0.318) * CFrame.Angles(math.rad(30.768), math.rad(68.411), math.rad(-113.847)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.156, 0.395, -0.011) * CFrame.Angles(math.rad(-12.72), math.rad(-13.636), math.rad(-8.881)),
					},
				},
			},
		},
		[0.867] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.063, -0.336) * CFrame.Angles(math.rad(-10.657), 0, math.rad(8.136)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.216, 0.348, 0.059) * CFrame.Angles(math.rad(-8.079), math.rad(16.043), math.rad(9.798)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.021, -0.251, 0.099) * CFrame.Angles(math.rad(-28.304), math.rad(57.067), math.rad(126.165)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.185, -0.054, 0.202) * CFrame.Angles(math.rad(31.112), math.rad(56.837), math.rad(-124.16)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.13, 0.337, -0.007) * CFrame.Angles(math.rad(-11.459), math.rad(-11.459), math.rad(-8.824)),
					},
				},
			},
		},
		[0.883] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.05, -0.265) * CFrame.Angles(math.rad(-10.657), 0, math.rad(6.474)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.17, 0.276, 0.05) * CFrame.Angles(math.rad(-7.448), math.rad(12.49), math.rad(9.683)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.093, -0.285, 0.073) * CFrame.Angles(math.rad(-25.554), math.rad(43.774), math.rad(135.218)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.092, -0.021, 0.096) * CFrame.Angles(math.rad(27.788), math.rad(43.43), math.rad(-133.442)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.101, 0.268, -0.003) * CFrame.Angles(math.rad(-10.027), math.rad(-8.881), math.rad(-8.824)),
					},
				},
			},
		},
		[0.9] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.037, -0.195) * CFrame.Angles(math.rad(-10.657), 0, math.rad(4.756)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.124, 0.203, 0.04) * CFrame.Angles(math.rad(-6.818), math.rad(8.938), math.rad(9.568)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.116, -0.281, 0.036) * CFrame.Angles(math.rad(-20.798), math.rad(30.94), math.rad(143.526)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.021, -0.011, 0.026) * CFrame.Angles(math.rad(22.517), math.rad(30.481), math.rad(-142.094)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.073, 0.198, 0) * CFrame.Angles(math.rad(-8.537), math.rad(-6.303), math.rad(-8.881)),
					},
				},
			},
		},
		[0.917] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.026, -0.135) * CFrame.Angles(math.rad(-10.657), 0, math.rad(3.266)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.086, 0.141, 0.029) * CFrame.Angles(math.rad(-6.36), math.rad(5.959), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.102, -0.239, 0.008) * CFrame.Angles(math.rad(-15.699), math.rad(20.569), math.rad(150.802)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.015, -0.012, -0.005) * CFrame.Angles(math.rad(16.902), math.rad(20.111), math.rad(-149.714)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.05, 0.138, 0.001) * CFrame.Angles(math.rad(-7.334), math.rad(-4.183), math.rad(-8.995)),
					},
				},
			},
		},
		[0.933] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.016, -0.087) * CFrame.Angles(math.rad(-10.657), 0, math.rad(2.12)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.055, 0.09, 0.02) * CFrame.Angles(math.rad(-5.901), math.rad(3.495), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.073, -0.176, -0.007) * CFrame.Angles(math.rad(-10.714), math.rad(12.605), math.rad(157.105)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.026, -0.012, -0.014) * CFrame.Angles(math.rad(11.516), math.rad(12.204), math.rad(-156.417)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.032, 0.089, 0.001) * CFrame.Angles(math.rad(-6.303), math.rad(-2.406), math.rad(-9.167)),
					},
				},
			},
		},
		[0.95] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.009, -0.049) * CFrame.Angles(math.rad(-10.657), 0, math.rad(1.203)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.031, 0.051, 0.011) * CFrame.Angles(math.rad(-5.615), math.rad(1.604), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.044, -0.109, -0.01) * CFrame.Angles(math.rad(-6.36), math.rad(6.818), math.rad(162.434)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.022, -0.01, -0.012) * CFrame.Angles(math.rad(6.818), math.rad(6.532), math.rad(-161.975)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.018, 0.05, 0.001) * CFrame.Angles(math.rad(-5.558), math.rad(-1.031), math.rad(-9.282)),
					},
				},
			},
		},
		[0.967] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.004, -0.022) * CFrame.Angles(math.rad(-10.657), 0, math.rad(0.516)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.014, 0.023, 0.005) * CFrame.Angles(math.rad(-5.386), math.rad(0.229), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.02, -0.052, -0.007) * CFrame.Angles(math.rad(-2.922), math.rad(2.922), math.rad(166.387)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.012, -0.006, -0.007) * CFrame.Angles(math.rad(3.151), math.rad(2.807), math.rad(-166.215)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.008, 0.022, 0.001) * CFrame.Angles(math.rad(-4.985), math.rad(-0.057), math.rad(-9.339)),
					},
				},
			},
		},
		[0.983] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.001, -0.005) * CFrame.Angles(math.rad(-10.657), 0, math.rad(0.115)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.003, 0.006, 0.001) * CFrame.Angles(math.rad(-5.271), math.rad(-0.573), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.005, -0.013, -0.002) * CFrame.Angles(math.rad(-0.745), math.rad(0.688), math.rad(168.908)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.003, -0.002, -0.002) * CFrame.Angles(math.rad(0.802), math.rad(0.688), math.rad(-168.851)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.002, 0.006, 0) * CFrame.Angles(math.rad(-4.641), math.rad(0.573), math.rad(-9.397)),
					},
				},
			},
		},
		[1] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.Angles(math.rad(-10.657), 0, 0),
					["Left Leg"] = {
						CFrame = CFrame.Angles(math.rad(-5.214), math.rad(-0.859), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.Angles(0, 0, math.rad(169.767)),
					},
					["Left Arm"] = {
						CFrame = CFrame.Angles(0, 0, math.rad(-169.767)),
					},
					["Right Leg"] = {
						CFrame = CFrame.Angles(math.rad(-4.526), math.rad(0.745), math.rad(-9.454)),
					},
				},
			},
		},
		[1.017] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.001, -0.004) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-0.115)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.003, 0.003, 0.001) * CFrame.Angles(math.rad(-5.271), math.rad(-0.688), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.003, -0.001, -0.001) * CFrame.Angles(math.rad(0.688), math.rad(-0.516), math.rad(169.023)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.003, -0.011, -0.001) * CFrame.Angles(math.rad(-0.688), math.rad(-0.573), math.rad(-169.023)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.001, 0.004, 0.001) * CFrame.Angles(math.rad(-4.526), math.rad(0.458), math.rad(-9.454)),
					},
				},
			},
		},
		[1.033] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.003, -0.016) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-0.573)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.012, 0.014, 0.002) * CFrame.Angles(math.rad(-5.443), math.rad(-0.229), math.rad(9.339)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.009, -0.003, -0.005) * CFrame.Angles(math.rad(2.807), math.rad(-2.177), math.rad(166.731)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.013, -0.044, -0.004) * CFrame.Angles(math.rad(-2.693), math.rad(-2.292), math.rad(-166.845)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.005, 0.014, 0.003) * CFrame.Angles(math.rad(-4.641), math.rad(-0.344), math.rad(-9.454)),
					},
				},
			},
		},
		[1.05] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.007, -0.036) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-1.261)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.028, 0.03, 0.004) * CFrame.Angles(math.rad(-5.672), math.rad(0.63), math.rad(9.225)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.017, -0.005, -0.009) * CFrame.Angles(math.rad(6.131), math.rad(-5.157), math.rad(163.121)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.029, -0.094, -0.006) * CFrame.Angles(math.rad(-5.844), math.rad(-5.271), math.rad(-163.35)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.01, 0.032, 0.007) * CFrame.Angles(math.rad(-4.756), math.rad(-1.719), math.rad(-9.454)),
					},
				},
			},
		},
		[1.067] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.012, -0.064) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-2.235)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.049, 0.054, 0.008) * CFrame.Angles(math.rad(-6.073), math.rad(1.776), math.rad(9.053)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.021, -0.004, -0.011) * CFrame.Angles(math.rad(10.485), math.rad(-9.626), math.rad(158.251)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.05, -0.154, -0.002) * CFrame.Angles(math.rad(-10.027), math.rad(-9.855), math.rad(-158.652)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.018, 0.057, 0.011) * CFrame.Angles(math.rad(-4.985), math.rad(-3.667), math.rad(-9.511)),
					},
				},
			},
		},
		[1.083] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.019, -0.099) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-3.495)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.077, 0.084, 0.011) * CFrame.Angles(math.rad(-6.532), math.rad(3.266), math.rad(8.824)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.014, 0.001, -0.004) * CFrame.Angles(math.rad(15.584), math.rad(-15.814), math.rad(152.464)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.071, -0.213, 0.011) * CFrame.Angles(math.rad(-14.954), math.rad(-16.1), math.rad(-153.094)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.028, 0.089, 0.016) * CFrame.Angles(math.rad(-5.214), math.rad(-6.131), math.rad(-9.568)),
					},
				},
			},
		},
		[1.1] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.027, -0.143) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-5.042)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.112, 0.121, 0.015) * CFrame.Angles(math.rad(-7.105), math.rad(5.042), math.rad(8.594)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.012, 0.01, 0.018) * CFrame.Angles(math.rad(21.142), math.rad(-24.007), math.rad(145.875)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.084, -0.259, 0.034) * CFrame.Angles(math.rad(-20.283), math.rad(-24.351), math.rad(-146.734)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.04, 0.128, 0.021) * CFrame.Angles(math.rad(-5.558), math.rad(-9.167), math.rad(-9.683)),
					},
				},
			},
		},
		[1.117] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.037, -0.195) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-6.875)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.153, 0.164, 0.019) * CFrame.Angles(math.rad(-7.792), math.rad(7.219), math.rad(8.365)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.065, 0.017, 0.068) * CFrame.Angles(math.rad(26.872), math.rad(-34.435), math.rad(138.598)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.076, -0.277, 0.067) * CFrame.Angles(math.rad(-25.783), math.rad(-34.721), math.rad(-139.744)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.055, 0.174, 0.025) * CFrame.Angles(math.rad(-5.959), math.rad(-12.72), math.rad(-9.798)),
					},
				},
			},
		},
		[1.133] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.048, -0.252) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-8.881)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.198, 0.211, 0.022) * CFrame.Angles(math.rad(-8.48), math.rad(9.568), math.rad(8.136)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.149, 0.011, 0.155) * CFrame.Angles(math.rad(32.143), math.rad(-46.639), math.rad(130.806)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.03, -0.257, 0.099) * CFrame.Angles(math.rad(-30.768), math.rad(-46.868), math.rad(-132.181)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.071, 0.226, 0.027) * CFrame.Angles(math.rad(-6.417), math.rad(-16.73), math.rad(-10.027)),
					},
				},
			},
		},
		[1.15] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.057, -0.304) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-10.714)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.24, 0.253, 0.024) * CFrame.Angles(math.rad(-9.167), math.rad(11.746), math.rad(7.907)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.24, -0.014, 0.261) * CFrame.Angles(math.rad(35.581), math.rad(-57.926), math.rad(123.53)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.05, -0.211, 0.114) * CFrame.Angles(math.rad(-34.034), math.rad(-58.098), math.rad(-125.077)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.086, 0.271, 0.027) * CFrame.Angles(math.rad(-6.818), math.rad(-20.283), math.rad(-10.199)),
					},
				},
			},
		},
		[1.167] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.066, -0.348) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-12.261)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.275, 0.289, 0.024) * CFrame.Angles(math.rad(-9.74), math.rad(13.579), math.rad(7.792)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.322, -0.056, 0.37) * CFrame.Angles(math.rad(36.841), math.rad(-67.666), math.rad(116.139)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.147, -0.157, 0.11) * CFrame.Angles(math.rad(-35.065), math.rad(-67.781), math.rad(-117.8)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.099, 0.31, 0.026) * CFrame.Angles(math.rad(-7.219), math.rad(-23.319), math.rad(-10.428)),
					},
				},
			},
		},
		[1.183] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.072, -0.384) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-13.522)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.305, 0.318, 0.025) * CFrame.Angles(math.rad(-10.199), math.rad(15.011), math.rad(7.678)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.389, -0.105, 0.47) * CFrame.Angles(math.rad(34.664), math.rad(-75.63), math.rad(107.143)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.247, -0.108, 0.092) * CFrame.Angles(math.rad(-32.773), math.rad(-75.63), math.rad(-108.919)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.11, 0.341, 0.024) * CFrame.Angles(math.rad(-7.563), math.rad(-25.783), math.rad(-10.6)),
					},
				},
			},
		},
		[1.2] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.077, -0.411) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-14.496)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.327, 0.34, 0.024) * CFrame.Angles(math.rad(-10.542), math.rad(16.215), math.rad(7.62)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.44, -0.153, 0.553) * CFrame.Angles(math.rad(25.726), math.rad(-81.589), math.rad(92.991)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.336, -0.07, 0.068) * CFrame.Angles(math.rad(-23.892), math.rad(-81.532), math.rad(-94.996)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.119, 0.366, 0.022) * CFrame.Angles(math.rad(-7.792), math.rad(-27.674), math.rad(-10.714)),
					},
				},
			},
		},
		[1.217] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.081, -0.431) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-15.183)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.344, 0.356, 0.024) * CFrame.Angles(math.rad(-10.772), math.rad(17.017), math.rad(7.563)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.475, -0.194, 0.615) * CFrame.Angles(math.rad(2.349), math.rad(-85.199), math.rad(65.89)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.405, -0.043, 0.045) * CFrame.Angles(math.rad(-1.146), math.rad(-85.142), math.rad(-68.64)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.125, 0.383, 0.02) * CFrame.Angles(math.rad(-8.021), math.rad(-29.049), math.rad(-10.829)),
					},
				},
			},
		},
		[1.233] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.083, -0.443) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-15.642)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.354, 0.365, 0.024) * CFrame.Angles(math.rad(-10.943), math.rad(17.533), math.rad(7.506)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.496, -0.22, 0.653) * CFrame.Angles(math.rad(-31.112), math.rad(-86.23), math.rad(30.195)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.449, -0.027, 0.028) * CFrame.Angles(math.rad(31.283), math.rad(-86.173), math.rad(-34.091)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.129, 0.394, 0.018) * CFrame.Angles(math.rad(-8.136), math.rad(-29.908), math.rad(-10.943)),
					},
				},
			},
		},
		[1.25] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.084, -0.447) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-15.756)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.357, 0.368, 0.024) * CFrame.Angles(math.rad(-11.001), math.rad(17.704), math.rad(7.506)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.502, -0.229, 0.666) * CFrame.Angles(math.rad(-44.462), math.rad(-86.173), math.rad(16.1)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.464, -0.022, 0.022) * CFrame.Angles(math.rad(44.462), math.rad(-86.173), math.rad(-20.225)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.13, 0.397, 0.018) * CFrame.Angles(math.rad(-8.193), math.rad(-30.138), math.rad(-10.943)),
					},
				},
			},
		},
		[1.267] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.083, -0.443) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-15.584)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.353, 0.365, 0.024) * CFrame.Angles(math.rad(-10.943), math.rad(17.475), math.rad(7.506)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.495, -0.219, 0.651) * CFrame.Angles(math.rad(-29.164), math.rad(-86.173), math.rad(32.258)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.447, -0.028, 0.029) * CFrame.Angles(math.rad(29.335), math.rad(-86.173), math.rad(-36.096)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.129, 0.393, 0.018) * CFrame.Angles(math.rad(-8.136), math.rad(-29.851), math.rad(-10.943)),
					},
				},
			},
		},
		[1.283] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.081, -0.429) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-15.126)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.342, 0.354, 0.024) * CFrame.Angles(math.rad(-10.772), math.rad(16.902), math.rad(7.563)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.471, -0.189, 0.608) * CFrame.Angles(math.rad(6.875), math.rad(-84.855), math.rad(70.818)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.397, -0.046, 0.048) * CFrame.Angles(math.rad(-5.5), math.rad(-84.74), math.rad(-73.396)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.124, 0.381, 0.02) * CFrame.Angles(math.rad(-7.964), math.rad(-28.877), math.rad(-10.829)),
					},
				},
			},
		},
		[1.3] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.076, -0.406) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-14.324)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.323, 0.336, 0.024) * CFrame.Angles(math.rad(-10.485), math.rad(15.986), math.rad(7.62)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.431, -0.143, 0.537) * CFrame.Angles(math.rad(28.533), math.rad(-80.501), math.rad(96.773)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.318, -0.077, 0.073) * CFrame.Angles(math.rad(-26.643), math.rad(-80.443), math.rad(-98.721)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.117, 0.361, 0.022) * CFrame.Angles(math.rad(-7.735), math.rad(-27.33), math.rad(-10.714)),
					},
				},
			},
		},
		[1.317] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.07, -0.374) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-13.178)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.297, 0.31, 0.025) * CFrame.Angles(math.rad(-10.027), math.rad(14.668), math.rad(7.678)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.371, -0.09, 0.443) * CFrame.Angles(math.rad(35.753), math.rad(-73.51), math.rad(110.008)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.219, -0.121, 0.098) * CFrame.Angles(math.rad(-33.919), math.rad(-73.568), math.rad(-111.784)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.107, 0.333, 0.025) * CFrame.Angles(math.rad(-7.448), math.rad(-25.153), math.rad(-10.542)),
					},
				},
			},
		},
		[1.333] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.063, -0.333) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-11.746)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.263, 0.277, 0.024) * CFrame.Angles(math.rad(-9.511), math.rad(12.949), math.rad(7.85)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.294, -0.039, 0.332) * CFrame.Angles(math.rad(36.669), math.rad(-64.4), math.rad(118.889)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.112, -0.176, 0.113) * CFrame.Angles(math.rad(-35.008), math.rad(-64.515), math.rad(-120.493)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.095, 0.297, 0.027) * CFrame.Angles(math.rad(-7.105), math.rad(-22.288), math.rad(-10.313)),
					},
				},
			},
		},
		[1.35] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.053, -0.283) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-9.969)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.223, 0.236, 0.023) * CFrame.Angles(math.rad(-8.881), math.rad(10.829), math.rad(8.021)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.201, -0.001, 0.215) * CFrame.Angles(math.rad(34.377), math.rad(-53.285), math.rad(126.624)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.013, -0.232, 0.11) * CFrame.Angles(math.rad(-32.888), math.rad(-53.514), math.rad(-128.056)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.08, 0.253, 0.028) * CFrame.Angles(math.rad(-6.646), math.rad(-18.793), math.rad(-10.141)),
					},
				},
			},
		},
		[1.367] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.042, -0.224) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-7.907)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.175, 0.187, 0.02) * CFrame.Angles(math.rad(-8.136), math.rad(8.365), math.rad(8.251)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.105, 0.017, 0.108) * CFrame.Angles(math.rad(29.679), math.rad(-40.451), math.rad(134.702)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.058, -0.272, 0.085) * CFrame.Angles(math.rad(-28.419), math.rad(-40.737), math.rad(-135.963)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.063, 0.2, 0.027) * CFrame.Angles(math.rad(-6.188), math.rad(-14.725), math.rad(-9.912)),
					},
				},
			},
		},
		[1.383] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.031, -0.164) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-5.787)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.128, 0.138, 0.017) * CFrame.Angles(math.rad(-7.391), math.rad(5.901), math.rad(8.537)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.031, 0.014, 0.036) * CFrame.Angles(math.rad(23.606), math.rad(-28.19), math.rad(142.838)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.084, -0.271, 0.048) * CFrame.Angles(math.rad(-22.632), math.rad(-28.533), math.rad(-143.812)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.046, 0.147, 0.023) * CFrame.Angles(math.rad(-5.73), math.rad(-10.6), math.rad(-9.74)),
					},
				},
			},
		},
		[1.4] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.021, -0.114) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-4.011)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.089, 0.096, 0.013) * CFrame.Angles(math.rad(-6.704), math.rad(3.839), math.rad(8.766)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.008, 0.004, 0.001) * CFrame.Angles(math.rad(17.533), math.rad(-18.507), math.rad(150.172)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.077, -0.232, 0.018) * CFrame.Angles(math.rad(-16.845), math.rad(-18.85), math.rad(-150.86)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.032, 0.102, 0.018) * CFrame.Angles(math.rad(-5.329), math.rad(-7.162), math.rad(-9.626)),
					},
				},
			},
		},
		[1.417] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.014, -0.073) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-2.578)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.057, 0.062, 0.009) * CFrame.Angles(math.rad(-6.188), math.rad(2.177), math.rad(8.995)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.021, -0.003, -0.01) * CFrame.Angles(math.rad(11.86), math.rad(-11.173), math.rad(156.704)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.056, -0.172, 0.001) * CFrame.Angles(math.rad(-11.402), math.rad(-11.459), math.rad(-157.162)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.021, 0.066, 0.013) * CFrame.Angles(math.rad(-5.042), math.rad(-4.297), math.rad(-9.511)),
					},
				},
			},
		},
		[1.433] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.008, -0.041) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-1.432)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.032, 0.035, 0.005) * CFrame.Angles(math.rad(-5.73), math.rad(0.802), math.rad(9.167)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.019, -0.005, -0.01) * CFrame.Angles(math.rad(6.933), math.rad(-5.959), math.rad(162.147)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.033, -0.106, -0.005) * CFrame.Angles(math.rad(-6.704), math.rad(-6.131), math.rad(-162.434)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.012, 0.037, 0.008) * CFrame.Angles(math.rad(-4.813), math.rad(-2.063), math.rad(-9.511)),
					},
				},
			},
		},
		[1.45] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.003, -0.018) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-0.63)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.014, 0.016, 0.002) * CFrame.Angles(math.rad(-5.443), math.rad(-0.115), math.rad(9.339)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.01, -0.003, -0.005) * CFrame.Angles(math.rad(3.209), math.rad(-2.521), math.rad(166.33)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.015, -0.05, -0.004) * CFrame.Angles(math.rad(-3.094), math.rad(-2.636), math.rad(-166.444)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.005, 0.016, 0.004) * CFrame.Angles(math.rad(-4.641), math.rad(-0.516), math.rad(-9.454)),
					},
				},
			},
		},
		[1.467] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.001, -0.005) * CFrame.Angles(math.rad(-10.657), 0, math.rad(-0.172)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.004, 0.004, 0.001) * CFrame.Angles(math.rad(-5.271), math.rad(-0.688), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.003, -0.001, -0.002) * CFrame.Angles(math.rad(0.802), math.rad(-0.63), math.rad(168.908)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.004, -0.013, -0.001) * CFrame.Angles(math.rad(-0.802), math.rad(-0.63), math.rad(-168.908)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.001, 0.004, 0.001) * CFrame.Angles(math.rad(-4.526), math.rad(0.458), math.rad(-9.454)),
					},
				},
			},
		},
		[1.483] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.Angles(math.rad(-10.657), 0, 0),
					["Left Leg"] = {
						CFrame = CFrame.Angles(math.rad(-5.214), math.rad(-0.859), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.Angles(0, 0, math.rad(169.767)),
					},
					["Left Arm"] = {
						CFrame = CFrame.Angles(0, 0, math.rad(-169.767)),
					},
					["Right Leg"] = {
						CFrame = CFrame.Angles(math.rad(-4.526), math.rad(0.745), math.rad(-9.454)),
					},
				},
			},
		},
		[1.5] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.001, -0.004) * CFrame.Angles(math.rad(-10.657), 0, math.rad(0.115)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.003, 0.004, 0.001) * CFrame.Angles(math.rad(-5.214), math.rad(-0.63), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.004, -0.01, -0.002) * CFrame.Angles(math.rad(-0.573), math.rad(0.573), math.rad(169.137)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.003, -0.001, -0.001) * CFrame.Angles(math.rad(0.63), math.rad(0.516), math.rad(-169.08)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.001, 0.004, 0) * CFrame.Angles(math.rad(-4.584), math.rad(0.63), math.rad(-9.397)),
					},
				},
			},
		},
		[1.517] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.003, -0.017) * CFrame.Angles(math.rad(-10.657), 0, math.rad(0.401)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.011, 0.017, 0.004) * CFrame.Angles(math.rad(-5.329), math.rad(-0.057), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.015, -0.04, -0.005) * CFrame.Angles(math.rad(-2.235), math.rad(2.235), math.rad(167.189)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.01, -0.004, -0.005) * CFrame.Angles(math.rad(2.406), math.rad(2.12), math.rad(-167.017)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.006, 0.017, 0) * CFrame.Angles(math.rad(-4.87), math.rad(0.172), math.rad(-9.397)),
					},
				},
			},
		},
		[1.533] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.007, -0.037) * CFrame.Angles(math.rad(-10.657), 0, math.rad(0.917)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.024, 0.039, 0.009) * CFrame.Angles(math.rad(-5.5), math.rad(1.031), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.034, -0.086, -0.009) * CFrame.Angles(math.rad(-4.927), math.rad(5.157), math.rad(164.095)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.018, -0.008, -0.01) * CFrame.Angles(math.rad(5.271), math.rad(4.927), math.rad(-163.751)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.014, 0.038, 0.001) * CFrame.Angles(math.rad(-5.271), math.rad(-0.573), math.rad(-9.282)),
					},
				},
			},
		},
		[1.55] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.012, -0.066) * CFrame.Angles(math.rad(-10.657), 0, math.rad(1.604)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.042, 0.069, 0.015) * CFrame.Angles(math.rad(-5.73), math.rad(2.464), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.058, -0.142, -0.01) * CFrame.Angles(math.rad(-8.422), math.rad(9.454), math.rad(159.913)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.025, -0.011, -0.014) * CFrame.Angles(math.rad(9.053), math.rad(9.11), math.rad(-159.34)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.024, 0.068, 0.001) * CFrame.Angles(math.rad(-5.901), math.rad(-1.662), math.rad(-9.225)),
					},
				},
			},
		},
		[1.567] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.02, -0.104) * CFrame.Angles(math.rad(-10.657), 0, math.rad(2.521)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.066, 0.108, 0.023) * CFrame.Angles(math.rad(-6.073), math.rad(4.354), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.085, -0.201, -0.003) * CFrame.Angles(math.rad(-12.548), math.rad(15.298), math.rad(154.87)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.024, -0.012, -0.013) * CFrame.Angles(math.rad(13.465), math.rad(14.897), math.rad(-154.011)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.038, 0.106, 0.001) * CFrame.Angles(math.rad(-6.646), math.rad(-3.037), math.rad(-9.11)),
					},
				},
			},
		},
		[1.583] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.028, -0.149) * CFrame.Angles(math.rad(-10.657), 0, math.rad(3.61)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.095, 0.155, 0.032) * CFrame.Angles(math.rad(-6.474), math.rad(6.646), math.rad(9.511)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.107, -0.252, 0.014) * CFrame.Angles(math.rad(-16.96), math.rad(22.918), math.rad(149.084)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.009, -0.011, 0) * CFrame.Angles(math.rad(18.335), math.rad(22.46), math.rad(-147.88)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.055, 0.152, 0.001) * CFrame.Angles(math.rad(-7.62), math.rad(-4.641), math.rad(-8.995)),
					},
				},
			},
		},
		[1.6] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.038, -0.203) * CFrame.Angles(math.rad(-10.657), 0, math.rad(4.927)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.13, 0.211, 0.041) * CFrame.Angles(math.rad(-6.933), math.rad(9.397), math.rad(9.568)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.115, -0.284, 0.041) * CFrame.Angles(math.rad(-21.429), math.rad(32.372), math.rad(142.609)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.028, -0.011, 0.033) * CFrame.Angles(math.rad(23.205), math.rad(31.914), math.rad(-141.12)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.076, 0.206, 0) * CFrame.Angles(math.rad(-8.709), math.rad(-6.646), math.rad(-8.881)),
					},
				},
			},
		},
		[1.617] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.05, -0.265) * CFrame.Angles(math.rad(-10.657), 0, math.rad(6.474)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.17, 0.276, 0.05) * CFrame.Angles(math.rad(-7.448), math.rad(12.49), math.rad(9.683)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.093, -0.285, 0.073) * CFrame.Angles(math.rad(-25.554), math.rad(43.774), math.rad(135.218)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.092, -0.021, 0.096) * CFrame.Angles(math.rad(27.788), math.rad(43.43), math.rad(-133.442)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.101, 0.268, -0.003) * CFrame.Angles(math.rad(-10.027), math.rad(-8.881), math.rad(-8.824)),
					},
				},
			},
		},
		[1.633] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.062, -0.328) * CFrame.Angles(math.rad(-10.657), 0, math.rad(7.964)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.21, 0.34, 0.058) * CFrame.Angles(math.rad(-8.021), math.rad(15.642), math.rad(9.798)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.032, -0.256, 0.097) * CFrame.Angles(math.rad(-28.132), math.rad(55.52), math.rad(127.311)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.173, -0.049, 0.188) * CFrame.Angles(math.rad(30.882), math.rad(55.29), math.rad(-125.363)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.127, 0.329, -0.006) * CFrame.Angles(math.rad(-11.287), math.rad(-11.173), math.rad(-8.824)),
					},
				},
			},
		},
		[1.65] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.072, -0.381) * CFrame.Angles(math.rad(-10.657), 0, math.rad(9.282)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.246, 0.395, 0.064) * CFrame.Angles(math.rad(-8.48), math.rad(18.335), math.rad(9.912)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.054, -0.213, 0.104) * CFrame.Angles(math.rad(-28.075), math.rad(65.776), math.rad(118.717)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.251, -0.092, 0.289) * CFrame.Angles(math.rad(31.341), math.rad(65.718), math.rad(-116.712)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.15, 0.382, -0.01) * CFrame.Angles(math.rad(-12.433), math.rad(-13.121), math.rad(-8.881)),
					},
				},
			},
		},
		[1.667] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.08, -0.427) * CFrame.Angles(math.rad(-10.657), 0, math.rad(10.371)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.276, 0.442, 0.068) * CFrame.Angles(math.rad(-8.938), math.rad(20.626), math.rad(10.084)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.152, -0.168, 0.094) * CFrame.Angles(math.rad(-23.606), math.rad(74.313), math.rad(107.258)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.318, -0.146, 0.388) * CFrame.Angles(math.rad(27.387), math.rad(74.427), math.rad(-105.31)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.17, 0.426, -0.014) * CFrame.Angles(math.rad(-13.407), math.rad(-14.782), math.rad(-8.938)),
					},
				},
			},
		},
		[1.683] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.087, -0.464) * CFrame.Angles(math.rad(-10.657), 0, math.rad(11.287)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.301, 0.48, 0.071) * CFrame.Angles(math.rad(-9.282), math.rad(22.517), math.rad(10.199)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.247, -0.13, 0.074) * CFrame.Angles(math.rad(-9.167), math.rad(80.787), math.rad(87.204)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.371, -0.202, 0.478) * CFrame.Angles(math.rad(13.235), math.rad(81.074), math.rad(-85.199)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.186, 0.462, -0.017) * CFrame.Angles(math.rad(-14.209), math.rad(-16.157), math.rad(-8.995)),
					},
				},
			},
		},
		[1.7] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.093, -0.493) * CFrame.Angles(math.rad(-10.657), 0, math.rad(11.975)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.32, 0.51, 0.072) * CFrame.Angles(math.rad(-9.568), math.rad(24.007), math.rad(10.313)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.331, -0.1, 0.05) * CFrame.Angles(math.rad(25.955), math.rad(84.053), math.rad(47.727)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.411, -0.254, 0.551) * CFrame.Angles(math.rad(-24.064), math.rad(84.397), math.rad(-43.316)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.199, 0.489, -0.02) * CFrame.Angles(math.rad(-14.84), math.rad(-17.189), math.rad(-9.053)),
					},
				},
			},
		},
		[1.717] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.097, -0.514) * CFrame.Angles(math.rad(-10.657), 0, math.rad(12.49)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.335, 0.531, 0.073) * CFrame.Angles(math.rad(-9.798), math.rad(25.038), math.rad(10.428)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.395, -0.08, 0.028) * CFrame.Angles(math.rad(63.312), math.rad(83.652), math.rad(7.277)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.437, -0.296, 0.605) * CFrame.Angles(math.rad(-63.713), math.rad(83.824), math.rad(-0.401)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.209, 0.509, -0.022) * CFrame.Angles(math.rad(-15.241), math.rad(-17.934), math.rad(-9.11)),
					},
				},
			},
		},
		[1.733] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.099, -0.527) * CFrame.Angles(math.rad(-10.657), 0, math.rad(12.777)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.343, 0.544, 0.074) * CFrame.Angles(math.rad(-9.912), math.rad(25.669), math.rad(10.485)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.436, -0.069, 0.013) * CFrame.Angles(math.rad(79.24), math.rad(82.277), math.rad(-10.542)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.452, -0.323, 0.638) * CFrame.Angles(math.rad(-79.469), math.rad(82.334), math.rad(17.303)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.214, 0.521, -0.024) * CFrame.Angles(math.rad(-15.527), math.rad(-18.392), math.rad(-9.167)),
					},
				},
			},
		},
		[1.75] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.1, -0.531) * CFrame.Angles(math.rad(-10.657), 0, math.rad(12.892)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.346, 0.548, 0.074) * CFrame.Angles(math.rad(-9.969), math.rad(25.84), math.rad(10.485)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.449, -0.065, 0.008) * CFrame.Angles(math.rad(83.193), math.rad(81.704), math.rad(-15.126)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.457, -0.332, 0.649) * CFrame.Angles(math.rad(-83.193), math.rad(81.704), math.rad(21.772)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.216, 0.525, -0.024) * CFrame.Angles(math.rad(-15.642), math.rad(-18.564), math.rad(-9.167)),
					},
				},
			},
		},
		[1.767] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.099, -0.526) * CFrame.Angles(math.rad(-10.657), 0, math.rad(12.777)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.343, 0.543, 0.074) * CFrame.Angles(math.rad(-9.912), math.rad(25.611), math.rad(10.485)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.434, -0.069, 0.014) * CFrame.Angles(math.rad(78.667), math.rad(82.334), math.rad(-9.855)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.452, -0.321, 0.637) * CFrame.Angles(math.rad(-78.896), math.rad(82.391), math.rad(16.673)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.214, 0.52, -0.024) * CFrame.Angles(math.rad(-15.527), math.rad(-18.392), math.rad(-9.167)),
					},
				},
			},
		},
		[1.783] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.096, -0.512) * CFrame.Angles(math.rad(-10.657), 0, math.rad(12.433)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.333, 0.529, 0.073) * CFrame.Angles(math.rad(-9.74), math.rad(24.924), math.rad(10.428)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.388, -0.082, 0.031) * CFrame.Angles(math.rad(59.645), math.rad(83.824), math.rad(11.287)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.435, -0.291, 0.599) * CFrame.Angles(math.rad(-59.989), math.rad(84.053), math.rad(-4.469)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.208, 0.507, -0.022) * CFrame.Angles(math.rad(-15.241), math.rad(-17.876), math.rad(-9.11)),
					},
				},
			},
		},
		[1.8] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.092, -0.488) * CFrame.Angles(math.rad(-10.657), 0, math.rad(11.86)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.317, 0.505, 0.072) * CFrame.Angles(math.rad(-9.511), math.rad(23.72), math.rad(10.313)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.315, -0.105, 0.055) * CFrame.Angles(math.rad(17.246), math.rad(83.709), math.rad(57.181)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.404, -0.245, 0.538) * CFrame.Angles(math.rad(-14.61), math.rad(84.11), math.rad(-53.572)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.197, 0.484, -0.02) * CFrame.Angles(math.rad(-14.725), math.rad(-17.017), math.rad(-9.053)),
					},
				},
			},
		},
		[1.817] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.086, -0.455) * CFrame.Angles(math.rad(-10.657), 0, math.rad(11.058)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.295, 0.471, 0.07) * CFrame.Angles(math.rad(-9.225), math.rad(22.059), math.rad(10.199)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.222, -0.139, 0.08) * CFrame.Angles(math.rad(-14.61), math.rad(79.297), math.rad(93.965)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.359, -0.187, 0.455) * CFrame.Angles(math.rad(18.678), math.rad(79.527), math.rad(-92.074)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.182, 0.453, -0.016) * CFrame.Angles(math.rad(-13.98), math.rad(-15.814), math.rad(-8.995)),
					},
				},
			},
		},
		[1.833] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.078, -0.413) * CFrame.Angles(math.rad(-10.657), 0, math.rad(10.027)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.266, 0.427, 0.067) * CFrame.Angles(math.rad(-8.766), math.rad(19.939), math.rad(10.027)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.119, -0.183, 0.099) * CFrame.Angles(math.rad(-25.84), math.rad(71.677), math.rad(111.612)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.297, -0.127, 0.356) * CFrame.Angles(math.rad(29.393), math.rad(71.734), math.rad(-109.664)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.163, 0.412, -0.013) * CFrame.Angles(math.rad(-13.121), math.rad(-14.267), math.rad(-8.938)),
					},
				},
			},
		},
		[1.85] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.068, -0.361) * CFrame.Angles(math.rad(-10.657), 0, math.rad(8.766)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.232, 0.374, 0.062) * CFrame.Angles(math.rad(-8.308), math.rad(17.303), math.rad(9.855)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(0.017, -0.231, 0.103) * CFrame.Angles(math.rad(-28.476), math.rad(61.879), math.rad(122.326)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.221, -0.073, 0.248) * CFrame.Angles(math.rad(31.513), math.rad(61.708), math.rad(-120.321)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.141, 0.362, -0.009) * CFrame.Angles(math.rad(-11.975), math.rad(-12.376), math.rad(-8.824)),
					},
				},
			},
		},
		[1.867] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.056, -0.3) * CFrame.Angles(math.rad(-10.657), 0, math.rad(7.277)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.192, 0.311, 0.055) * CFrame.Angles(math.rad(-7.735), math.rad(14.209), math.rad(9.74)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.065, -0.273, 0.088) * CFrame.Angles(math.rad(-27.215), math.rad(50.191), math.rad(130.978)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.135, -0.034, 0.143) * CFrame.Angles(math.rad(29.679), math.rad(49.905), math.rad(-129.087)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.115, 0.302, -0.005) * CFrame.Angles(math.rad(-10.714), math.rad(-10.141), math.rad(-8.824)),
					},
				},
			},
		},
		[1.883] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.044, -0.231) * CFrame.Angles(math.rad(-10.657), 0, math.rad(5.615)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.148, 0.24, 0.046) * CFrame.Angles(math.rad(-7.162), math.rad(10.772), math.rad(9.568)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.11, -0.289, 0.056) * CFrame.Angles(math.rad(-23.434), math.rad(37.471), math.rad(139.286)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.055, -0.014, 0.058) * CFrame.Angles(math.rad(25.439), math.rad(37.07), math.rad(-137.682)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.088, 0.234, -0.001) * CFrame.Angles(math.rad(-9.282), math.rad(-7.678), math.rad(-8.881)),
					},
				},
			},
		},
		[1.9] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.032, -0.17) * CFrame.Angles(math.rad(-10.657), 0, math.rad(4.125)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.108, 0.177, 0.035) * CFrame.Angles(math.rad(-6.646), math.rad(7.678), math.rad(9.511)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.113, -0.268, 0.024) * CFrame.Angles(math.rad(-18.793), math.rad(26.471), math.rad(146.563)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(-0.003, -0.011, 0.01) * CFrame.Angles(math.rad(20.283), math.rad(26.012), math.rad(-145.245)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.063, 0.173, 0) * CFrame.Angles(math.rad(-8.021), math.rad(-5.443), math.rad(-8.938)),
					},
				},
			},
		},
		[1.917] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.022, -0.118) * CFrame.Angles(math.rad(-10.657), 0, math.rad(2.865)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.075, 0.123, 0.026) * CFrame.Angles(math.rad(-6.188), math.rad(5.099), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.093, -0.22, 0.001) * CFrame.Angles(math.rad(-13.98), math.rad(17.647), math.rad(152.98)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.021, -0.012, -0.01) * CFrame.Angles(math.rad(15.069), math.rad(17.189), math.rad(-152.063)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.044, 0.12, 0.001) * CFrame.Angles(math.rad(-6.99), math.rad(-3.552), math.rad(-9.053)),
					},
				},
			},
		},
		[1.933] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.014, -0.075) * CFrame.Angles(math.rad(-10.657), 0, math.rad(1.833)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.048, 0.079, 0.017) * CFrame.Angles(math.rad(-5.844), math.rad(2.922), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.065, -0.158, -0.009) * CFrame.Angles(math.rad(-9.454), math.rad(10.829), math.rad(158.652)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.026, -0.012, -0.014) * CFrame.Angles(math.rad(10.199), math.rad(10.485), math.rad(-158.022)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.028, 0.077, 0.001) * CFrame.Angles(math.rad(-6.073), math.rad(-2.005), math.rad(-9.167)),
					},
				},
			},
		},
		[1.95] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.008, -0.042) * CFrame.Angles(math.rad(-10.657), 0, math.rad(1.031)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.027, 0.044, 0.01) * CFrame.Angles(math.rad(-5.558), math.rad(1.261), math.rad(9.454)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.038, -0.097, -0.01) * CFrame.Angles(math.rad(-5.558), math.rad(5.901), math.rad(163.293)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.02, -0.009, -0.011) * CFrame.Angles(math.rad(5.959), math.rad(5.672), math.rad(-162.949)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.015, 0.044, 0.001) * CFrame.Angles(math.rad(-5.386), math.rad(-0.802), math.rad(-9.282)),
					},
				},
			},
		},
		[1.967] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.004, -0.019) * CFrame.Angles(math.rad(-10.657), 0, math.rad(0.458)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.012, 0.02, 0.005) * CFrame.Angles(math.rad(-5.386), math.rad(0.057), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.017, -0.045, -0.006) * CFrame.Angles(math.rad(-2.578), math.rad(2.521), math.rad(166.845)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.011, -0.005, -0.006) * CFrame.Angles(math.rad(2.75), math.rad(2.406), math.rad(-166.673)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.007, 0.019, 0) * CFrame.Angles(math.rad(-4.927), math.rad(0.057), math.rad(-9.339)),
					},
				},
			},
		},
		[1.983] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.new(0, -0.001, -0.005) * CFrame.Angles(math.rad(-10.657), 0, math.rad(0.115)),
					["Left Leg"] = {
						CFrame = CFrame.new(-0.003, 0.005, 0.001) * CFrame.Angles(math.rad(-5.214), math.rad(-0.63), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.new(-0.004, -0.012, -0.002) * CFrame.Angles(math.rad(-0.63), math.rad(0.63), math.rad(169.023)),
					},
					["Left Arm"] = {
						CFrame = CFrame.new(0.003, -0.001, -0.002) * CFrame.Angles(math.rad(0.688), math.rad(0.573), math.rad(-168.965)),
					},
					["Right Leg"] = {
						CFrame = CFrame.new(0.002, 0.005, 0) * CFrame.Angles(math.rad(-4.641), math.rad(0.573), math.rad(-9.397)),
					},
				},
			},
		},
		[2] = {
			["HumanoidRootPart"] = {
				["Torso"] = {
					CFrame = CFrame.Angles(math.rad(-10.657), 0, 0),
					["Left Leg"] = {
						CFrame = CFrame.Angles(math.rad(-5.214), math.rad(-0.859), math.rad(9.397)),
					},
					["Right Arm"] = {
						CFrame = CFrame.Angles(0, 0, math.rad(169.767)),
					},
					["Left Arm"] = {
						CFrame = CFrame.Angles(0, 0, math.rad(-169.767)),
					},
					["Right Leg"] = {
						CFrame = CFrame.Angles(math.rad(-4.526), math.rad(0.745), math.rad(-9.454)),
					},
				},
			},
		},
	}
}

local number=0

LastTimeSetTotal=0
local savec0 = {}


GetAnimCF = function(limb,Time)
	
local GA = nil
	coroutine.resume(coroutine.create(function()

if limb == "Torso" then
GA = Anim.Keyframes[Time]["HumanoidRootPart"]["Torso"].CFrame
else
GA = Anim.Keyframes[Time]["HumanoidRootPart"]["Torso"][""..limb].CFrame

end
end))
return GA
end



local model = nil
if owner ~= nil then 
model = owner.Character
else
model = game:GetService("Players").localPlayer.Character
end
function GatherAllInstances(Parent)
	local Instances = {}
	local function GatherInstances(Parent)
		for i, v in pairs(Parent:GetChildren()) do
			GatherInstances(v)
			table.insert(Instances, v)
		end
	end
	GatherInstances(Parent)
	return Instances
end




for i, v in pairs(GatherAllInstances(model)) do
if v:IsA("BasePart") then 
for i, v2 in pairs(GatherAllInstances(model)) do
	if v2:IsA("Motor6D") and  v2.Part1.Name == v.Name then 

local saveCF = v2.C0
table.insert(savec0,{v2.Name,saveCF})

end
end
end end




RunAnim = function(Time)





	
local speed = Time-LastTimeSetTotal

speed = speed*AnimationSpeed
LastTimeSetTotal = Time	
	
	
	
	local doing = true
	
	coroutine.resume(coroutine.create(function()
for i, v in pairs(GatherAllInstances(model)) do
if v:IsA("BasePart") then 
for i, v2 in pairs(GatherAllInstances(model)) do
	if v2:IsA("Motor6D") and  v2.Part1.Name == v.Name then 

local GotAnim = GetAnimCF(v.Name,Time)
local saveCF = nil
	 for i,v3 in pairs(savec0) do 
		if v2.name == v3[1] then
			saveCF = v3[2]
		end
	end


if GotAnim ~= nil and saveCF ~= nil then
	
	
	coroutine.resume(coroutine.create(function()
while doing == true do
	swait()
	v2.C0 = v2.C0:lerp(saveCF*GotAnim,SmoothTime *speed)
end

end))


end

	end

end
end end


end))
wait(speed)
doing = false
end
while true do
RunAnim(0)	
RunAnim(0.1)	
RunAnim(0.2)
RunAnim(0.3)
RunAnim(0.4)
RunAnim(0.5)
RunAnim(0.6)
RunAnim(0.7)
RunAnim(0.8)
RunAnim(0.9)
RunAnim(1)

LastTimeSetTotal = .1
	Humanoid.MaxHealth = "inf"
	Humanoid.Health = "inf"
 	sick.SoundId = "rbxassetid://"
	sick.Looped = true
	sick.Pitch = 1
	sick.Volume = 10
	sick:Resume()
	sick.Parent = Torso
         refit()
end
