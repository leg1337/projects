-- \\ void by legendary#0001 | 830527702854402068

-- \\ credits to i_db for the resize


local t = "swat" -- insert target

local ps = game:GetService('Players')

local touch = firetouchinterest

local cf = ps.LocalPlayer.Character.HumanoidRootPart.CFrame or chr.HumanoidRootPart.CFrame

local lp = ps.LocalPlayer or game.Players.LocalPlayer

local chr = lp.Character

local hum = chr.Humanoid:Clone()
    
local function delete()
    
chr.LeftFoot:WaitForChild'OriginalSize':Destroy()

chr.LeftLowerLeg:WaitForChild'OriginalSize':Destroy()
            
chr.LeftUpperLeg:WaitForChild'OriginalSize':Destroy()
        
end
        
chr.LeftLowerLeg.LeftKneeRigAttachment.OriginalPosition:Destroy()
        
chr.LeftUpperLeg.LeftKneeRigAttachment.OriginalPosition:Destroy()
        
chr.LeftLowerLeg:WaitForChild'LeftKneeRigAttachment':Destroy()

chr.LeftUpperLeg:WaitForChild'LeftKneeRigAttachment':Destroy()
        
for i,v in next, chr.Humanoid:GetChildren() do
    if v:IsA'NumberValue' then
        delete()
    v:Destroy()
    end
end

for _, v in next, ps:GetPlayers() do
    if v.Name:lower():sub(1, #t) == t:lower() or v.DisplayName:lower():sub(1, #t) == t then
        
        workspace.FallenPartsDestroyHeight = 0 / 0
        
        chr.Humanoid:Remove()
        
        hum.Parent = chr
        
        for i,x in pairs(lp.Backpack:GetChildren()) do
    
        if x:IsA('Tool') then
        
        chr.Humanoid:EquipTool(lp.Backpack:FindFirstChildOfClass('Tool'))
        
        ps.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new( 0, -499, 0))
    
        touch(x.Handle, v.Character.Head, 0)
        
        workspace.FallenPartsDestroyHeight = -506
        
            end
        end
    end
end

lp.CharacterAdded:Wait()

repeat task.wait() until chr

lp.Character:WaitForChild'HumanoidRootPart'.CFrame = cf
