getgenv().funckey_29kbaqk = function() 
    print("Auto Insta Generator Completor Ran!")
        game.Players.LocalPlayer.PlayerGui.ChildAdded:Connect(function(ch)
            if ch.Name == "PuzzleUI" then
              for i = 1,5 do
                for i,v in pairs(game.Workspace.Map:GetDescendants()) do
                    if v.Name == "Generator" then
                        task.spawn(function() v.Remotes.RE:FireServer() end)
                    end
                  end
                task.wait(.25 + (math.random(1,4) / 10))
              end
            end
        end)
    end
----MOD_TABLESPLIT----
{"Function":"funckey_29kbaqk","Description":"Immediately comepletes any generator you interact with.","Title":"Instant Generators","Harmful":true}
