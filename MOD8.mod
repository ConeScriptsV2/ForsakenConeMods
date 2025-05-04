getgenv().funckey_5c9z711 = function()
	if readfile and writefile and delfile then
	local function ReturnIsLoaded(id)
		local s = Instance.new("Sound",game.Workspace)
		s.SoundId = "rbxasset://"..id
		wait()
		local l = s.IsLoaded
		s:Destroy()
		return l
	end
	local success = true
	local soundsloaded = false
	if ReturnIsLoaded("gnarpytalk.mp3") and ReturnIsLoaded("gnarpystun.mp3") and ReturnIsLoaded("gnarpylms.mp3") then
		soundsloaded = true
		local s,e = pcall(function()
			local mdl = game:GetObjects("rbxassetid://15896293684")[1]
			game.Workspace.Players.Killers.ChildAdded:Connect(function(char)
				if char:GetAttribute("SkinName") == "" and char.Name == "Jason" then
					print("Is default jason! Waiting for mask...")
					char:WaitForChild("Mask",30)
					print("Ran Reskin.")
					task.spawn(function()
						char.Mask.Transparency = 1
						char["Body Colors"]:Destroy()
						mdl["Body Colors"]:Clone().Parent = char
						for i,v in pairs(mdl:GetChildren()) do
							if v:IsA("Accessory") then
								local cl = v:Clone()
								cl.Parent = char
								local clp1 = cl.Handle.AccessoryWeld.Part1
								for i,v1 in pairs(char:GetChildren()) do
									if clp1.Name == v1.Name then
										cl.Handle.AccessoryWeld.Part1 = v1
										break
									end
								end
							end
						end

						for i,v in pairs(char:GetChildren()) do
							if v.Name == "CharacterMesh" then
								v:Destroy()
							end
						end
						char.Shirt:Destroy()
						char.Pants:Destroy()
						mdl.Shirt:Clone().Parent = char
						mdl.Pants:Clone().Parent = char
						char.DescendantAdded:Connect(function(ch)
							if ch:IsA("Sound") and ch.SoundId == "rbxassetid://136281175461752" then
								print("found it lol")
								ch.SoundId = "rbxasset://gnarpystun.mp3"
								ch.PlaybackSpeed = 1
								ch.Volume = 1
							elseif ch:IsA("Sound") and ch.SoundId == "rbxassetid://112390922764994" then
								print("found it lol")
								ch.SoundId = "rbxasset://gnarpytalk.mp3"
								ch.PlaybackSpeed = 1
								ch.Volume = 1
							end
						end)
					end)
				end
			end)
			game.Workspace.Themes.ChildAdded:Connect(function(snd)
				local chars = game.Workspace.Players.Killers:GetChildren()
				for i,char in pairs(chars) do
					if snd.Name == "LastSurvivor" and char and char.Parent and char:GetAttribute("SkinName") == "" and char.Name == "Jason" then
						snd.SoundId = "rbxasset://gnarpylms.mp3"
					end
				end
			end)
		end)
	else
		success = false
	end
	
	local gnarp_pics = {"rbxassetid://15258606925","rbxassetid://15808975005","rbxassetid://131772550376339","rbxassetid://18320125246","rbxassetid://17073418803","rbxassetid://15791275961","rbxassetid://120875604470189"}
	
	if success then
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = "Gnarpy Skin", -- Required
		Text = "Default jason is now gnarpy!", -- Required
		Icon = gnarp_pics[math.random(1,#gnarp_pics)], -- Optional
		Button1 = "Yay!",
	})


	--print("re")
	game.Players.LocalPlayer.PlayerGui:WaitForChild("KillerIntroUI",9e9)
game:GetService("Players").LocalPlayer.PlayerGui.KillerIntroUI.KillerDisplayBackground:WaitForChild("Displays",10):WaitForChild("Display",15):WaitForChild("KillerName",20).Text = "Gnarpy"
	--print('dhgfg')
	game.Players.LocalPlayer.PlayerGui.KillerIntroUI.ChildAdded:Connect(function(ch)
		if game.Workspace.Players.Killers:FindFirstChild("Jason") and game.Workspace.Players.Killers.Jason:GetAttribute("SkinName") == "" then
			game:GetService("Players").LocalPlayer.PlayerGui.KillerIntroUI.KillerDisplayBackground:WaitForChild("Displays",10):WaitForChild("Display",15):WaitForChild("KillerName",20).Text = "Gnarpy"
		end
		end)
		
	else
		if not soundsloaded then
				local ev = Instance.new("BindableFunction")
			ev.OnInvoke = function(callback)
				if callback == "Yes" then
					writefile("gnarpystun.mp3",game:HttpGet("https://github.com/ConeScriptsV2/ForsakenConeMods/raw/refs/heads/main/gnarpystun.mp3"))
					writefile("gnarpylms.mp3",game:HttpGet("https://github.com/ConeScriptsV2/ForsakenConeMods/raw/refs/heads/main/gnarpylms.mp3"))
					writefile("gnarpytalk.mp3",game:HttpGet("https://github.com/ConeScriptsV2/ForsakenConeMods/raw/refs/heads/main/gnarpytalk.mp3"))
					getcustomasset("gnarpystun.mp3")
					getcustomasset("gnarpylms.mp3")
					getcustomasset("gnarpytalk.mp3")
					delfile("gnarpystun.mp3")
					delfile("gnarpylms.mp3")
					delfile("gnarpytalk.mp3")
					game:GetService("StarterGui"):SetCore("SendNotification",{
						Title = "Initialized!", -- Required
						Text = "Please re-execute. (If it still doesnt work, restart roblox.)", -- Required
						Icon = gnarp_pics[math.random(1,#gnarp_pics)], -- Optional
					})
				end
			end
			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = "Sounds Missing", -- Required
				Text = "Looks like the sounds are missing. Download?", -- Required
				Icon = gnarp_pics[math.random(1,#gnarp_pics)], -- Optional
				Button1 = "Yes",
				Button2 = "No",
				Callback = ev
			})
		end
		end
	else
		local gnarp_pics = {"rbxassetid://15258606925","rbxassetid://15808975005","rbxassetid://131772550376339","rbxassetid://18320125246","rbxassetid://17073418803","rbxassetid://15791275961","rbxassetid://120875604470189"}
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Yikes", -- Required
			Text = "Your executor does not support standard file requirements.", -- Required
			Icon = gnarp_pics[math.random(1,#gnarp_pics)], -- Optional
		})
	end
end
----MOD_TABLESPLIT----
{"Function":"funckey_5c9z711","Description":"Replaces Jasons default skin with gnarpy!","Title":"Gnarpy Skin","Harmful":false}
