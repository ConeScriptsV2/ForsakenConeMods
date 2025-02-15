getgenv().funckey_ak105ff = function() 
    print("Hitbox Extender Ran!")
        game.Workspace.Hitboxes.ChildAdded:Connect(function(p)
            if p:IsA("BasePart") and string.find(p.Name,game.Players.LocalPlayer.Name) then
                p.Size = Vector3.new(p.Size.X * 3,p.Size.Y * 3,p.Size.Z * 3)
            end
        end)
    end
----MOD_TABLESPLIT----
{"Function":"funckey_ak105ff","Description":"Extends your hitbox to hit stuff easier.","Title":"Hitbox Extender","Harmful":true}
