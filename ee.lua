local whitelisted = {"E8BFD673-5CE5-"}

local e = false
-- first check if user is whitelisted
for x, c in pairs (whitelisted) do
    if c == game:GetService("RbxAnalyticsService"):GetClientId() then
        e = true
    end
end

if e == false then
    game.Players.LocalPlayer:Kick("User Is Not Whitelisted! DM To Get Whitelisted!")
end 


