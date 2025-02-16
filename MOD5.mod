getgenv().funckey_azx911l = function() 
local img = Instance.new("ImageLabel",game:GetService("Players").LocalPlayer.PlayerGui.MainUI.StatusContainer)
img.Name = "Speed_CS"
img.BackgroundTransparency = 1
img.Image = "rbxassetid://19001782411"
img.Size = UDim2.new(1,0,0.05,40)
local txt = Instance.new("TextLabel",img)
txt.BackgroundTransparency = 1
txt.Size = UDim2.new(0.5,0,0.5,0)
txt.Text = "Speed III"
txt.TextColor3 = Color3.new(1,1,1)
txt.Position = UDim2.new(0.175,0,0.5,0)
txt.TextScaled = true
txt.Font = game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Version.Font
txt.AnchorPoint = Vector2.new(0, 0.5)
local time = Instance.new("TextLabel",img)
time.BackgroundTransparency = 1
time.Size = UDim2.new(0.2,0,0.5,0)
time.Text = "00:03"
time.Position = UDim2.new(0.95,0,0.5,0)
time.TextColor3 = Color3.new(1,1,1)
time.TextScaled = true
time.AnchorPoint = Vector2.new(1, 0.5)
time.Font = game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Version.Font--Font.new("rbxasset://fonts/families/AccanthisADFStd.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
local SpeedMultiplier = Instance.new("NumberValue",game.Players.LocalPlayer.Character.SpeedMultipliers)
SpeedMultiplier.Value = 1
task.spawn(function()
    local fovm = Instance.new("NumberValue")
    fovm.Value = 1
    fovm.Parent = game.Players.LocalPlayer.Character.FOVMultipliers
    while SpeedMultiplier and SpeedMultiplier.Parent do
        fovm.Value = math.max(1,SpeedMultiplier.Value / 1.1)
        task.wait()
    end
    fovm:Destroy()
end)
game:GetService("TweenService"):Create(SpeedMultiplier,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Value = 1.27}):Play()
--game:GetService("UserInputService"):Connect(function(key,fotb)
--    if key.KeyCode == Enum.KeyCode.LeftShift and not fotb then
--        game:GetService("TweenService"):Create(SpeedMultiplier,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0),{Value = 3}):Play()
--    end
--end)
task.wait(1)
time.Text = "00:02"
task.wait(1)
time.Text = "00:01"
task.wait(1)
time.Text = "00:00"
task.wait(1)
game:GetService("TweenService"):Create(SpeedMultiplier,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Value = 1}):Play()
task.spawn(function()
    task.wait(1)
    SpeedMultiplier:Destroy()
end)
img:Destroy()
end
----MOD_TABLESPLIT----
{"Function":"funckey_azx911l","Description":"Gives you a speedboost for 3 seconds.","Title":"Speedboost Effect [3s]","Harmful":true}
