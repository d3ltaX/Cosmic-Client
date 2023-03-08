function chatS(text)
    if notifs then
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "[cosmic] "..text;
    Font = Enum.Font.Arcade;
    Color = Color3.fromRGB(105,89,205);
    FontSize = Enum.FontSize.Size96;
    
    })
    end
end
fly = Instance.new("BodyVelocity",game.Players.LocalPlayer.Character.HumanoidRootPart)
rbowtog = false
col = Color3.fromRGB(105,89,205);
-- arraylist
function rainbowtext(t)
    local text = t
local add = 10
wait(1)
local k = 1
while k <= 255 do
text.TextColor3 = Color3.new(k/255,0/255,0/255)
k = k + add
wait()
end
while rbowtog do

k = 1
while k <= 255 do
text.TextColor3 = Color3.new(255/255,k/255,0/255)
k = k + add
wait()
end
k = 1
while k <= 255 do
text.TextColor3 = Color3.new(255/255 - k/255,255/255,0/255)
k = k + add
wait()
end
k = 1
while k <= 255 do
text.TextColor3 = Color3.new(0/255,255/255,k/255)
k = k + add
wait()
end
k = 1
while k <= 255 do
text.TextColor3 = Color3.new(0/255,255/255 - k/255,255/255)
k = k + add
wait()
end
k = 1
while k <= 255 do
text.TextColor3 = Color3.new(k/255,0/255,255/255)
k = k + add
wait()
end
k = 1
while k <= 255 do
text.TextColor3 = Color3.new(255/255,0/255,255/255 - k/255)
k = k + add
wait()
end
while k <= 255 do
text.TextColor3 = Color3.new(255/255 - k/255,0/255,0/255)
k = k + add
wait()
end
if rbowtog then continue else break end
end
end



local ARRAYLIST = Instance.new("ScreenGui")
local title = Instance.new("TextLabel")
local arraylist = Instance.new("TextLabel")
ARRAYLIST.Name = "ARRAYLIST"
ARRAYLIST.Parent = game.CoreGui
title.Name = "title"
title.Parent = ARRAYLIST
title.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
title.BackgroundTransparency = 1.000
title.BorderSizePixel = 0
title.Position = UDim2.new(0, 1510, 0, 63)
title.Size = UDim2.new(0, 400, 0, 76)
title.Font = Enum.Font.Ubuntu
title.Text = "cosmic client"
title.TextColor3 = Color3.fromRGB(121, 94, 255)
title.TextScaled = true
title.TextSize = 14.000
title.TextStrokeColor3 = Color3.fromRGB(38, 30, 81)
title.TextStrokeTransparency = 0.000
title.TextWrapped = true
arraylist.Name = "arraylist"
arraylist.Parent = ARRAYLIST
arraylist.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
arraylist.BackgroundTransparency = 1.000
arraylist.BorderSizePixel = 0
arraylist.Position = UDim2.new(0, 1515, 0, 136)
arraylist.Size = UDim2.new(0, 380, 0, 791)
arraylist.Font = Enum.Font.Ubuntu
arraylist.Text = "ArrayList"
arraylist.TextColor3 = Color3.fromRGB(121, 94, 255)
arraylist.TextSize = 30.000
arraylist.TextStrokeColor3 = Color3.fromRGB(47, 37, 100)
arraylist.TextStrokeTransparency = 0.000
arraylist.TextWrapped = true
arraylist.TextXAlignment = Enum.TextXAlignment.Right
arraylist.TextYAlignment = Enum.TextYAlignment.Top






name = "cosmic client"
notifs = true
espState = false
local plr = game.Players.LocalPlayer
local cam = workspace.CurrentCamera
local wtvp =  cam.worldToViewportPoint
local h = Vector3.new(0,0.5,0)
local l = Vector3.new(0,3,0)


for i,v in pairs(game.Players:GetChildren()) do
    local boxo = Drawing.new("Square")
    boxo.Visible = false
    boxo.Color = Color3.new(0,0,0)
    boxo.Thickness = 3
    boxo.Transparency = 1
    boxo.Filled = false
    local box = Drawing.new("Square")
    box.Visible = false
    box.Color = Color3.new(1,1,1)
    box.Thickness = 1
    box.Transparency = 1
    box.Filled = false
    
    function boxesp()
        game.RunService.RenderStepped:Connect(function()
            if espState == true then
            if v.Character ~= nil and v ~= plr and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v.Character.Humanoid.Health > 0 then 
                local vector, onscreen = cam:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                local rootpart = v.Character.HumanoidRootPart
                local head = v.Character.Head
                local rp, rv = wtvp(cam, rootpart.Position)
                local headpos = wtvp(cam, head.Position+h)
                local legpos = wtvp(cam,rootpart.Position-l)
                if onscreen then
                    boxo.Size = Vector2.new(1000 / rp.Z, headpos.Y - legpos.Y)
                    boxo.Position = Vector2.new(rp.X-boxo.Size.X/2,rp.Y-boxo.Size.Y / 2)
                    boxo.Visible = true
                    box.Size = Vector2.new(1000 / rp.Z, headpos.Y - legpos.Y)
                    box.Position = Vector2.new(rp.X-boxo.Size.X/2,rp.Y-boxo.Size.Y / 2)
                    box.Visible = true
                else
                    box.Visible = false
                    boxo.Visible = false
                end
            else
                box.Visible = false
                boxo.Visible = false
            end
        else
            box.Visible = false
            boxo.Visible = false
        end
        end)
    end
    coroutine.wrap(boxesp)()
end

game.Players.PlayerAdded:Connect(function(v)
    for i,v in pairs(game.Players:GetChildren()) do
        local boxo = Drawing.new("Square")
        boxo.Visible = false
        boxo.Color = Color3.new(0,0,0)
        boxo.Thickness = 3
        boxo.Transparency = 1
        boxo.Filled = false
        local box = Drawing.new("Square")
        box.Visible = false
        box.Color = Color3.new(1,1,1)
        box.Thickness = 1
        box.Transparency = 1
        box.Filled = false
        
        function boxesp()
            game.RunService.RenderStepped:Connect(function()
                if espState == true then
                if v.Character ~= nil and v ~= plr and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v.Character.Humanoid.Health > 0 then 
                    local vector, onscreen = cam:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                    local rootpart = v.Character.HumanoidRootPart
                    local head = v.Character.Head
                    local rp, rv = wtvp(cam, rootpart.Position)
                    local headpos = wtvp(cam, head.Position+h)
                    local legpos = wtvp(cam,rootpart.Position-l)
                    if onscreen then
                        boxo.Size = Vector2.new(1000 / rp.Z, headpos.Y - legpos.Y)
                        boxo.Position = Vector2.new(rp.X-boxo.Size.X/2,rp.Y-boxo.Size.Y / 2)
                        boxo.Visible = true
                        box.Size = Vector2.new(1000 / rp.Z, headpos.Y - legpos.Y)
                        box.Position = Vector2.new(rp.X-boxo.Size.X/2,rp.Y-boxo.Size.Y / 2)
                        box.Visible = true
                    else
                        box.Visible = false
                        boxo.Visible = false
                    end
                else
                    box.Visible = false
                    boxo.Visible = false
                end
            else
                box.Visible = false
                boxo.Visible = false
            end
            end)
        end
        coroutine.wrap(boxesp)()
    end
end)
setreadonly(string, false)
function string.replace(str, old, new)
    return string.gsub(str, old, new)
end
setreadonly(string, true)
local tracerState = false
local Players = game:GetService("Players"):GetChildren()
local localPlayer = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
for i,v in pairs(game.Players:GetChildren()) do
	local Tracer = Drawing.new("Line")
	Tracer.Visible = false
	Tracer.Color = Color3.fromRGB(100,100,200)
	Tracer.Thickness = 1
	Tracer.Transparency = 1

	local function lineesp()
		game:GetService("RunService").RenderStepped:Connect(function()
			if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= localPlayer and v.Character.Humanoid.Health > 0 then
				local Vector, OnScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

				if OnScreen then
					Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
					Tracer.To = Vector2.new(Vector.X, Vector.Y)
					Tracer.Visible = tracerState
				else
					Tracer.Visible = false
				end
			else
				Tracer.Visible = false
			end
		end)
	end
	coroutine.wrap(lineesp)()
end
bhop = false
game.Players.PlayerAdded:Connect(function(v)
	local Tracer = Drawing.new("Line")
	Tracer.Visible = false
	Tracer.Color = Color3.new(1,1,1)
	Tracer.Thickness = 1
	Tracer.Transparency = 1

	local function lineesp()
		game:GetService("RunService").RenderStepped:Connect(function()
			if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= localPlayer and v.Character.Humanoid.Health > 0 then
				local Vector, OnScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

				if OnScreen then
					Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
					Tracer.To = Vector2.new(Vector.X, Vector.Y)

					Tracer.Visible = tracerState
				else
					Tracer.Visible = false
				end
			else
				Tracer.Visible = false
			end
		end)
	end
	coroutine.wrap(lineesp)()
end)
ARRAYLIST.Enabled = false
function chat(text)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(text, "All")
end

chatS("loaded.")

local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local win = lib:Window(name,Color3.fromRGB(105,89,205), Enum.KeyCode.RightShift)
local mov = win:Tab("Movement")
local vis = win:Tab("Visuals")
local comb = win:Tab("Combat")
game.CoreGui.ui.Name = "iceware"

local misc = win:Tab("Misc")
vis:Toggle("Tracers", false, function(t)
    if t then
        tracerState = true
        arraylist.Text = arraylist.Text .."\nTracers"
        chatS("Tracers enabled!")
    else
        tracerState = false
        arraylist.Text = string.replace(arraylist.Text, "\nTracers", "")
      chatS("Tracers disabled!")
    end
end)
goofy = false
misc:Toggle("Spammer", false, function(t)
     if t then
        goofy = true
        arraylist.Text = arraylist.Text .."\nSpammer"
        chatS("Spammer enabled!")
    else
        goofy = false
        arraylist.Text = string.replace(arraylist.Text, "\nSpammer", "")
      chatS("Spammer disabled!")
    end
end)
misc:Toggle("Notifications", true, function(t)
    if t == true then
        notifs = true
    else
        notifs = false
    end
end)
misc:Button("destroy UI (not uninject)", function()
    game.CoreGui.iceware:Destroy()
end)
mov:Toggle("BHop", false, function(t)
     if t then
        arraylist.Text = arraylist.Text .."\nBHop"
        bhop = true
        chatS("BHop enabled!")
    else
        bhop = false
        arraylist.Text = string.replace(arraylist.Text, "\nBHop", "")
      chatS("BHop disabled!")
    end
end)
comb:Toggle("Triggerbot", false, function(t)
if t then
        trig = true
        arraylist.Text = arraylist.Text .."\nTriggerbot"
        chatS("Triggerbot enabled!")
    else
        trig = false
        arraylist.Text = string.replace(arraylist.Text, "\nTriggerbot", "")
      chatS("Triggerbot disabled!")
    end
end)
vis:Toggle("Box ESP",false,function(t)
    if t then 
        espState = true
        arraylist.Text = arraylist.Text .."\nESP"
        chatS("ESP enabled!")
    else
        espState = true
        arraylist.Text = string.replace(arraylist.Text, "\nESP", "")
        chatS("ESP disabled!")
    end
end)
vis:Slider("FOV",70,120,70, function(t)
    fov = t
end)
mult = 0.1
fov = 70
trig = false
local mouse = game.Players.LocalPlayer:GetMouse()
speed = false

function bhopcheck()
    if bhop and game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then 
    
        game.Players.LocalPlayer.Character.Humanoid.Jump = true; 
        wait(0.1); game.Players.LocalPlayer.Character.Humanoid.Jump = false 
    end
end
lebron = false
msgs = {"EZ dubs", "ez", "on top", "Lebron", "if idiot == true then spamchat() end"}
function autogoof()
    if goofy and lebron ~= true then
        lebron = true
        wait(1)
        bruh = msgs[math.random(1,#msgs)]
        chat(bruh.." | cosmic on top")
        lebron = false
    end
end
fly.Velocity = Vector3.new(0,0,0)
flystate = false
fly.Parent = workspace
game.RunService.RenderStepped:Connect(function()
    bhopcheck()
    autogoof()
    workspace.CurrentCamera.FieldOfView = fov
    if flystate then
        fly.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        fly.Velocity  = game.Players.LocalPlayer.Character.Humanoid.MoveDirection * 40
    else
        fly.Velocity = Vector3.new(0,0,0)
        fly.Parent = workspace
    end 
if not rbowtog then
    title.TextColor3 = col
        arraylist.TextColor3 = col
end
    if trig then
    if mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil then
					
						mouse1click()
						mouse1click()
						mouse1click()
						mouse1click()
						mouse1click()
						mouse1click()
						mouse1click()
						mouse1click()
						
				
				end
    end
    if speed then
    game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame += game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").MoveDirection * mult
    end
end)
mov:Toggle("Speed", false, function(t)
    if t then
        speed = true
        arraylist.Text = arraylist.Text .."\nSpeed"
         chatS("Speed enabled!")

       
    else
     speed = false
     arraylist.Text = string.replace(arraylist.Text, "\nSpeed", "")
      
      chatS("Speed disabled!")
    end
end)


vis:Toggle("Arraylist", false, function(t)
    if t then
        ARRAYLIST.Enabled = true
        chatS("Arraylist enabled!")
    else
        ARRAYLIST.Enabled = false
        chatS("Arraylist disabled!")
    end
end)
bruh = coroutine.wrap(rainbowtext)(arraylist)
bruh2 = coroutine.wrap(rainbowtext)(title)
mov:Toggle("Fly",false,function(t)
    if t then 
    flystate = true
    arraylist.Text = arraylist.Text .."\nFly"
    chatS("Fly enabled!")
    else
    flystate = false
    arraylist.Text = string.replace(arraylist.Text, "\nFly", "")
    chatS("Fly disabled!")
    end
end)
