local whitelisted = {"E8BFD673-5CE5-4125-AE25-32C2CD939E34", "6FEA3A1A-B840-474D-A701-86527C89520D", "4DDB6179-F246-487B-A33E-7A84B81CA90C", "8729FC61-CCEA-403E-9362-7CB8AC16BE96", "A0A89AEF-CFC4-4964-B86E-3B38F8CE5493", "5FF5068D-86C9-44BD-856A-AE2C2419FBA2"}
-- E8BFD673-5CE5-4125-AE25-32C2CD939E34 rick
-- 4DDB6179-F246-487B-A33E-7A84B81CA90C lemon
-- 6FEA3A1A-B840-474D-A701-86527C89520D curved
-- 8729FC61-CCEA-403E-9362-7CB8AC16BE96 vast
-- A0A89AEF-CFC4-4964-B86E-3B38F8CE5493 jay
-- 5FF5068D-86C9-44BD-856A-AE2C2419FBA2 ages >:(

-- me + curved :D
local e = false
-- first check if user is whitelisted
for x, c in pairs (whitelisted) do
    if c == tostring(game:GetService("RbxAnalyticsService"):GetClientId()) then
        e = true
    end
end

if e == false then
    game.Players.LocalPlayer:Kick("User is not Whitelisted! DM Rick#2615 To get Whitelisted!")
    exit()
end 


