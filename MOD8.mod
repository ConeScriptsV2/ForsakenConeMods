getgenv().funckey_51acm78 = function() 
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
	
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = "Gnarpy Skin", -- Required
		Text = "Default jason is now gnarpy!", -- Required
		Icon = "rbxassetid://15258606925", -- Optional
		Button1 = "Yay!",
	})
	
	
end
----MOD_TABLESPLIT----
{"Function":"funckey_51acm78","Description":"Replaces Jasons default skin with gnarpy!","Title":"Gnarpy Skin","Harmful":false}
