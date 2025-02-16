getgenv().funckey_99xzlcz = function() 
local soundEffects = {
    "rbxassetid://99081289911669",
    "rbxassetid://97100466324703",
    "rbxassetid://111502315377475",
    "rbxassetid://120845231654029",
    "rbxassetid://120845231654029",
    "rbxassetid://134973085112081",
    "rbxassetid://133562999570990",
    "rbxassetid://139061125247165",
    "rbxassetid://74000375845213",
    "rbxassetid://98389337191287",
    "rbxassetid://73762171929471",
    "rbxassetid://98481947447411",
    "rbxassetid://83260878877136",
    "rbxassetid://129979761093198",
    "rbxassetid://77553956755455",
    "rbxassetid://124389575913805",
}
local s = Instance.new("Sound",game:GetService("SoundService"))
s.Volume = 1.3
s.SoundId = "rbxasset://START.mp3"
task.wait(0.1)
if s.IsLoaded then
    s:Play()
    s:Destroy()
local function ScanItem(item)
    if item:IsA("Sound") and table.find(soundEffects,item.SoundId) then
        item.SoundId = "rbxasset://s"..table.find(soundEffects,item.SoundId)..".mp3"
    else
        --print("Invalid sound")
    end
end

game.Workspace.Themes.ChildAdded:Connect(function(ins)
    ScanItem(ins)
end)
for i,v in pairs(game.Workspace.Themes:GetChildren()) do
    ScanItem(v)
end
game.Workspace.Players.Killers.ChildAdded:Connect(function(ins)
    ins.HumanoidRootPart.ChildAdded:Connect(function(inhs)
        ScanItem(inhs)
        inhs.Changed:Connect(function()
        wait()
            ScanItem(inhs)
        end)
    end)
end)
for i,ins in pairs(game.Workspace.Players.Killers:GetChildren()) do
        ins.HumanoidRootPart.ChildAdded:Connect(function(inhs)
        ScanItem(inhs)
        inhs.Changed:Connect(function()
        wait()
            ScanItem(inhs)
        end)
    end)
end
else
s:Destroy()
    warn("The sounds were not installed properly. Check your executor functions, Or ensure they are in DIRECTLY the content folder. If you just installed this, Please wait and try again.")
end
end
task.spawn(function()
local T = Instance.new("Sound",game:GetService("TestService"))
local Unpropers = {}
local Proper = true
for i = 1,15 do
  T.SoundId = "rbxasset://s"..i..".mp3"
task.wait(0.06)
if not T.IsLoaded then
  Proper = false
  table.insert(Unpropers,"s"..i..".mp3")
end
end
if not Proper then
  for i,v in pairs(Unpropers) do
    writefile(v,game:HttpGet("https://github.com/ConeScriptsV2/VCDBForsaken/raw/refs/heads/main/"..v))
    getcustomasset(v)
    task.spawn(function() delfile(v) end)
  end
writefile("START.mp3",game:HttpGet("https://github.com/ConeScriptsV2/VCDBForsaken/raw/refs/heads/main/START.mp3"))
getcustomasset("START.mp3")
task.spawn(function() delfile("START.mp3") end)
end
end)
----MOD_TABLESPLIT----
{"Function":"funckey_99xzlcz","Description":"Blakinator voice lines for coolkidd normal (From Blake)","Title":"Voice Lines","Harmful":false}
