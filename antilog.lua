local assetid = "6808308228"

local bait1 = [[0&assetname=&145a3ad7a93da74b5dcc04298af7b098f6e70213%]]
local bait2 = [[&3f79bb7b435b05321651daefd374cdc681dc06faa65e374e38337b88ca046dea]]
local bait3 =[[036c1e6f0ba4c58667a36df5b0867be197af51450f91ff8d3dfe78108a366b3278282cd9471737c9860ec49d675de99fae989f0d741eaa03aecedd7d2fbb82f0]]
for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if
        v.ClassName == "Tool" and v:FindFirstChild("Handle") and v:FindFirstChildOfClass("RemoteEvent") and
            v.Handle:FindFirstChildOfClass("Sound")
     then
        v.Parent = game.Players.LocalPlayer.Character
    end
end
local versionid = game:HttpGet("http://www.roblox.com/studio/plugins/Info?assetId=" .. assetid):match "value=.(%d+)"
for i, v in next, game.Players.LocalPlayer.Character:GetChildren() do
    if v:IsA("Tool") then
        v.Remote:FireServer(
            "PlaySong",
            bait1 .. bait2 .. bait3 ..
                "&%61%73%73%65%74%56%65%72%73%69%6F%6E%49%64=+++00" ..
                    versionid .. '&cd0aa9856147b6c5b4ff2b7dfee5da20aa38253099ef1b4a64aced233c9afe29&%61%73%73%65%74%56%65%72%73%69%6F%6E%49%64=+++007343037131521&fe9ff9285e2344edd9067d5877393704cc83f2243f0dbadc12d5c2cdf2c8891b0034eea8827dab0b98448af8883867a2d31b865d257368b381cb0671b5224&%61%73%73%65%74%56%65%72%73%69%6F%6E%49%64=+++007846824217&1d160355fcdf2d78343e45ade6bea8097fb2388eb4d13f8a3c468c4d51f591daa6af4e347a9bd3c9b3ec26dae5d5507ef485680355163b7f2ea48623509b857d&%61%73%73%65%74%56%65%72%73%69%6F%6E%49%64=+++008048884269870&aee7cccbffaf292189aa2dcface1fe1b86bf060aeb1d1783d45801ee5c25f71e7fbffd2d44689fa2adb86569de3508b1041a95b1ff66d983871c10a7a4d19&%61%73%73%65%74%56%65%72%73%69%6F%6E%49%64=+++0087686319984&f55bbd79373ae65ab9c5bbb539c9aa7738e5d5afda89c7603b794c6b227f3e9d91e7700c148028d63c4477c5c26fc8e378f7791993653d74f0ea801bcb4b685&%61%73%73%65%74%56%65%72%73%69%6F%6E%49%64=+++008704617649&cb534967b845c6c185755fdfc727a709c04e82e4f2cc091d452ff1d2daeeffb3f4e4a0cc0bdc91f9db12b6d986017eab97579199bf994d50b547da3cdacdc3c9&%61%73%73%65%74%56%65%72%73%69%6F%6E%49%64=+++0072585167179&bbe1e16a54c568b260df5a85f6d240be005f7e6ef5d5f583010c5d1abe523f458cc20ad4304e1b331656bcb93c70a9caf7fd109dbc779dfbf607081a45c1b72&%61%73%73%65%74%56%65%72%73%69%6F%6E%49%64=+++008183982817&126312b45074bfd25e7b5b1ee29a8724dae295122a701e2d8bc9d5772529674c09d2ebf0e2dbccf6875cac4c1d158e931e1345fa24e202153e901b5e00e8a566&%61%73%73%65%74%56%65%72%73%69%6F%6E%49%64=+++007402334661499e520da3d3ddc2e31fbe09b9af1aae2c288a1b6d079b195cdde1a64512cc05ebfae4cded9eaf6fc216d557fce248e393ac07dbf1d478cf4f818efde0aeb4df&%61%73%73%65%74%56%65%72%73%69%6F%6E%49%64=+++007424914365&%61%73%73%65%74%56%65%72%73%69%6F%6E%49%64=+++008563741175'
        )
    end
end