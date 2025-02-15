getgenv().funckey_19dlckx = function() 
	print("ESP For players has loaded!")
	local function ProcessChar(char)
		if char:IsDescendantOf(game.Workspace.Players.Killers) and char:IsA("Model") then
			local hl = Instance.new("Highlight",char)
			hl.FillColor = Color3.new(1,0,0)
			hl.FillTransparency = 0.9
			hl.OutlineColor = Color3.fromRGB(147,0,0)
			hl.OutlineTransparency = 0.6
		end
		if char:IsDescendantOf(game.Workspace.Players.Survivors) and char:IsA("Model") then
			local hl = Instance.new("Highlight",char)
			hl.FillColor = Color3.new(0, 0.333333, 1)
			hl.FillTransparency = 0.8
			hl.OutlineColor = Color3.fromRGB(0, 49, 147)
			hl.OutlineTransparency = 0.5
		end
	end
	game.Workspace.Players.DescendantAdded:Connect(function(desc)
		ProcessChar(desc)
	end)
end
----MOD_TABLESPLIT----
{"Function":"funckey_19dlckx","Description":"Allows you to see EVERY Player. [All Color-Coded.]","Title":"Player ESP","Harmful":true}
