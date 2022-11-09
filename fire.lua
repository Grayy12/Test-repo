local function teleport(location: CFrame)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = location
end

 local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

for i, v in pairs(game:GetService("Workspace").map.titans:GetChildren()) do
   local nape = v:FindFirstChild("Nape")
   if nape then
      
       teleport(nape.CFrame)
       task.wait(.2)
       workspace.GameScript.DamageTitan:FireServer(235.8388967514038,nape,26.631786346435547,"bakuretsu la~ la~ la~ explosion")
      end
end

teleport(oldpos)
