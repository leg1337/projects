-- credits to Kaid#0001

if _G.NametagsRan == true then
    return
end
_G.NametagsRan = true
local plrs = game:GetService("Players")

local UI = game:GetObjects("rbxassetid://7437010836")[1]
if syn then
    syn.protect_gui(UI)
end

local color = Color3.fromHSV(tick() % 5 / 5, 1, 1)

local rainbow_text = coroutine.wrap(function(tag)
    while tag ~= nil do
        wait()
        tag.TextColor3 = color
    end
end)

local cool = { -- Userid, Title, Color (1 = rainbow, 0 = no rainbow, 2 = pink, 3 = blue)
    {418133103, "legendary", 1},
    {3207813237, "legendary", 1}
}

for i,v in pairs(plrs:GetChildren()) do
    for i,a in pairs(cool) do
        if v.UserId == a[1] then
            local tag = UI:Clone()
            tag.Nameplate.Text = a[2]
            if a[3] == 1 then
                rainbow_text(tag.Nameplate)
            end
            if a[3] == 0 then
                tag.Nameplate.TextColor3 = Color3.fromRGB(255, 255, 255)
            end
            if a[3] == 2 then
                tag.Nameplate.TextColor3 = Color3.fromRGB(250, 157, 179)
            end
            if a[3] == 3 then
                tag.Nameplate.TextColor3 = Color3.fromRGB(157, 200, 251)
            end
            tag.Parent = v.Character.Head
        end
    end
end

plrs.PlayerAdded:Connect(function(plr)
    for i,a in pairs(cool) do
        if v.UserId == a[1] then
            local tag = UI:Clone()
            tag.Nameplate.Text = a[2]
            if a[3] == 1 then
                rainbow_text(tag.Nameplate)
            end
            if a[3] == 0 then
                tag.Nameplate.TextColor3 = Color3.fromRGB(255, 255, 255)
            end
            if a[3] == 2 then
                tag.Nameplate.TextColor3 = Color3.fromRGB(241, 166, 245)
            end
            if a[3] == 3 then
                tag.Nameplate.TextColor3 = Color3.fromRGB(157, 200, 251)
            end
            tag.Parent = v.Character.Head
        end
    end
end)

local rainbow = coroutine.wrap(function()
    while wait() do
        color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
    end
end)

rainbow()
