local whitelisted = {"E8BFD673-5CE5-4125-AE25-32C2CD939E34", "E8BFD673-5CE5-4125-AE25-32C2CD939E34"}

-- Rick, Curved


local e = false
-- first check if user is whitelisted
for x, c in pairs (whitelisted) do
    if c == game:GetService("RbxAnalyticsService"):GetClientId() then
        e = true
    end
end

if e == false then
    game.Players.LocalPlayer:Kick("User Is Not Whitelisted! DM Rick#2615 To Get Whitelisted!")
end 


