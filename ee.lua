local whitelisted = {"eee", "6FEA3A1A-B840-474D-A701-86527C89520D"}
-- E8BFD673-5CE5-4125-AE25-32C2CD939E34

-- me + curved :D
local e = false
-- first check if user is whitelisted
for x, c in pairs (whitelisted) do
    if c == tostring(game:GetService("RbxAnalyticsService"):GetClientId()) then
        e = true
    end
end

if e == false then
    game.Players.LocalPlayer:Kick("User Is Not Whitelisted! DM Rick#2615 To Get Whitelisted!")
    exit()
end 


