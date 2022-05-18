-- credits to Kaid#0001 and idb#0001 (for the PlayerAdded / RGB Issue)

if _G.NametagsRan == true then
    return
end
_G.NametagsRan = true
local plrs = game:GetService("Players")

local UI = game:GetObjects("rbxassetid://7437010836")[1]
if syn then
    syn.protect_gui(UI)
end

local cool = { -- Userid, Title, Color (1 = rainbow, 0 = no rainbow, 2 = pink, 3 = blue)
    {418133103, "legendary", 1},
    {3207813237, "legendary", 1},
    {1239668957, "icon1c", 3},
    {2721124329, "rqmane", 3},
    {1964094116, "wuto UwU", 2},
    {516034734, "dib dob", 2},
    {79685992, "cat girl KAID", 2},
    {495913994, "god father lix", 1},
    {3340301255, "god father lix", 1},
    {2356433704, "god father lix", 1},
    {2412626785, "tim / ages", 3},
    {14130, "oliver the GOAT", 3},
    {3016604171, "Cotra :O", 2},
    {3354104299, "uselessalt / y333d", 3},
    {1414978355, "Anthony (omg)", 1},
    {1769817396, "CHEZBURGER!!!", 2},
    {1184243, "Clau", 3},
    {2371057609, "deluxor", 3},
    {1528610268, "DecayedSPIRITS", 1},
    {3101258999, "Kax", 3},
    {253306, "iRicoooooo :O", 3},
    {3129964272, "Mp3Alt", 3},
    {405922557, "Pew Pew", 3},
    {1700825136, "chris da goat", 3},
    {3198825306, "dexx (real)", 3},
    {41095467, "SSSINICAHHHHH", 3},
    {27057, "DecayedSPIRITS", 1},
    {3218820507, "babi / morguecore", 2},
    {1468447827, "Feens >:)", 3},
    {1353069606, "vss on TOP", 3},
    {2437074178, "horror / systemic owner", 3},
    {553039703, "Jinx", 1},
    {166535553, "Huge Skid", 0},
    {2537734277, "DecayedSPIRITS", 1},
    {68822680, "BBUNGIEEEE", 1},
    {207865772, "legendary", 1},
    {2348564884, "legendary", 1}
}

local function isCool(player)
    local isCool = false
    local tag
    local num

    for i, v in next, cool do
        if player.UserId == v[1] then
            isCool = true
            tag = v[2]
            num = v[3]
        end
    end

    return {isCool, tag, num}
end

local function ApplyTag(player, text, num)
    local tag = UI:Clone()
    tag.Nameplate.Text = text
    if num == 1 then
        coroutine.wrap(function()
            while tag ~= nil do
                wait()
                local color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                tag.Nameplate.TextColor3 = color
            end
        end)()
    end
    if num == 0 then
        tag.Nameplate.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
    if num == 2 then
        tag.Nameplate.TextColor3 = Color3.fromRGB(250, 157, 179)
    end
    if num == 3 then
        tag.Nameplate.TextColor3 = Color3.fromRGB(157, 200, 251)
    end
    tag.Parent = player.Character:WaitForChild("Head")
end

for _,v in next, game.Players:GetPlayers() do
    if isCool(v)[1] then
        ApplyTag(v, isCool(v)[2], isCool(v)[3])

        v.CharacterAdded:Connect(function()
            ApplyTag(v, isCool(v)[2], isCool(v)[3])
        end)
    end
end

game.Players.PlayerAdded:Connect(function(plr)
    if isCool(plr)[1] then
        plr.CharacterAdded:Connect(function()
            ApplyTag(plr, isCool(plr)[2], isCool(plr)[3])
        end)
    end
end)
