getgenv().funckey_19dlckx = function() 
	print("ESP For players has loaded!")
	local function ProcessChar(char)
		if char:IsDescendantOf(game.Workspace.Players.Killers) and char:IsA("Model") then
			local hl = Instance.new("Highlight",char)
			hl.FillColor = Color3.new(1,1,1)
			hl.FillTransparency = 0.9
			hl.OutlineColor = Color3.fromRGB(147,147,147)
			hl.OutlineTransparency = 0.6
		end
		if char:IsDescendantOf(game.Workspace.Players.Survivors) and char:IsA("Model") then
			local hl = Instance.new("Highlight",char)
			--hl.FillColor = Color3.fromHSV(0.611111, 1, 1)--Color3.new(0, 0.333333, 1)
			hl.FillTransparency = 0.8
			--hl.OutlineColor = Color3.fromRGB(0, 49, 147)
			hl.OutlineTransparency = 0.5
			task.spawn(function()
				while char and char.Parent and char:FindFirstChild("Humanoid") and hl and hl.Parent do
					local h = 0
					h = char.Humanoid.Health
					hl.FillColor = Color3.fromHSV(h / 255, 1, 1)
					hl.OutlineColor = Color3.fromHSV(h / 255, 1, 0.576471)
					task.wait()
				end
			end)
		end
	end
	game.Workspace.Players.Killers.ChildAdded:Connect(function(desc)
		ProcessChar(desc)
	end)
	game.Workspace.Players.Survivors.ChildAdded:Connect(function(desc)
		ProcessChar(desc)
	end)
	for i,v in pairs(game.Workspace.Players.Survivors:GetChildren()) do
		ProcessChar(v)
	end

	for i,v in pairs(game.Workspace.Players.Killers:GetChildren()) do
		ProcessChar(v)
	end
end
----MOD_TABLESPLIT----
{"Function":"funckey_19dlckx","Description":"Allows you to see EVERY Player. [All Color-Coded.]","Title":"Player ESP","Harmful":true}
