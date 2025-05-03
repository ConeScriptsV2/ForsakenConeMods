getgenv().funckey_zx9bn76 = function() 
	local ev
	local disabled = false
	print("Launched Anti-Slow!")
	local function xd(ch)
		if ch.Value < 1 and not disabled then
			ch:Destroy()
		end
	end
	ev = game.Players.LocalPlayer.Character.SpeedMultipliers.ChildAdded:Connect(xd)
	local function hfghj(prop)
		if prop == "Parent" and game.Players.LocalPlayer.Character.Parent == workspace.Players.Killers then
			ev:Disconnect()
			disabled = true
			local function Callback(answer)
				ev = game.Players.LocalPlayer.Character.SpeedMultipliers.ChildAdded:Connect(xd)
				disabled = false
				game:GetService("StarterGui"):SetCore("SendNotification",{
					Title = "Anti Slow", -- Required
					Text = "Re-enabled. Have fun LOL!", -- Required
					Icon = "rbxassetid://15808071731", -- Optional
				})
			end

			local Bindable = Instance.new("BindableFunction")
			Bindable.OnInvoke = Callback

			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = "Anti Slow", -- Required
				Text = "Disabled due to you being killer!", -- Required
				Icon = "rbxassetid://15808071731", -- Optional
				Button1 = "Launch Anyway",
				Callback = Bindable
			})
		end
	end
	game.Players.LocalPlayer.Character.Changed:Connect(hfghj)
	game.Players.LocalPlayer.CharacterAdded:Connect(function(ch)
		game.Players.LocalPlayer.Character.Changed:Connect(hfghj)
		ch:WaitForChild("SpeedMultipliers",10)
		ev:Disconnect()
		if ch.Parent.Name == "Killer" then
			local function Callback(answer)
				ev = ch.SpeedMultipliers.ChildAdded:Connect(xd)
				game:GetService("StarterGui"):SetCore("SendNotification",{
					Title = "Anti Slow", -- Required
					Text = "Re-enabled. Have fun LOL!", -- Required
					Icon = "rbxassetid://15808071731", -- Optional
				})
			end

			local Bindable = Instance.new("BindableFunction")
			Bindable.OnInvoke = Callback

			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = "Anti Slow", -- Required
				Text = "Disabled due to you being killer!", -- Required
				Icon = "rbxassetid://15808071731", -- Optional
				Button1 = "Launch Anyway",
				Callback = Bindable
			})
		else
			ev = ch.SpeedMultipliers.ChildAdded:Connect(xd)
		end
	end)
end
----MOD_TABLESPLIT----
{"Function":"funckey_zx9bn76","Description":"Stops things such as 1x's Slash or falling or other things bringing you to a comeplete stop.","Title":"Anti Slowness","Harmful":true}
