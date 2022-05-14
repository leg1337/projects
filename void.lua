local Target = "legendary#0001"
local LP = game:GetService [[Players]].LocalPlayer
local CF = game:GetService [[Players]].LocalPlayer.Character.HumanoidRootPart.CFrame
local Hum = game.Players.LocalPlayer.Character.Humanoid:Clone()
local plr = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
game.Players.LocalPlayer.Character.Humanoid:Remove()
Hum.Parent = plr
for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(
            game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
        )
        for i, x in pairs(game.Players:GetPlayers()) do
            if x.Name == Target then
                game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(0, -498.9, 0))
                firetouchinterest(v.Handle, x.Character.Torso, 0)
            end
        end
    end
end
LP.CharacterAdded:wait()
LP.Character:WaitForChild [[HumanoidRootPart]].CFrame = CF
local FF = LP.Character:WaitForChild [[ForceField]]
FF:Destroy()
