local whitelisted_list = {"2370110b45240e17b4c281dbcfb32dfe"}

local whitelisted_list_legacy = {"1B983B56-FC26-49B9-B0CB-4CF8FC0B4862", "FE00F4C0-D4DF-40E7-B746-1F2632FCAFE9", "0E3A2024-1355-4A19-86DF-B873B6B4DFDD", "F31DEB5A-4DDE-4FAB-8071-AE90D21A412F", "99A01DAC-1F87-41C8-96D8-D381FD19BE02", "706A3424-F871-436F-9A35-D99AA8A62978", "B4DBE20C-D95A-4616-AA49-27C1EF5D388F", "22EE411D-68D8-4CDF-84F9-1C575137CFBA", "2B61DBAC-D01C-4C26-B623-3BE2AAB3A63C", "B2D5816C-B6CB-44C2-87CD-4AB43CEA55C7", "CB46BB76-D7C7-4FFB-86F5-B061CD60534E", "706A3424-F871-436F-9A35-D99AA8A629678", "881326CE-17A7-43D8-A16B-D43BA714AEB8", "70E63D2E-A8AD-4904-87ED-326A335782D3", "E8BFD673-5CE5-4125-AE25-32C2CD939E34", "6FEA3A1A-B840-474D-A701-86527C89520D", "4DDB6179-F246-487B-A33E-7A84B81CA90C", "A0A89AEF-CFC4-4964-B86E-3B38F8CE5493", "5FF5068D-86C9-44BD-856A-AE2C2419FBA2", "A91D73DA-6501-4A0E-AC69-4E39CE2E13B4", "C8F360D7-874E-4222-B923-97CA735BDE1F", "347970F8-0F3C-44C9-A8DC-8541DD0AB2C9", "2571015A-A917-4EA0-B95F-04027B17F13A", "C4099AE5-3001-4A3F-9BBD-85BAF35BEFEF"}


local http_request = request;

function check_hwid(uselegacy)


    if uselegacy then 

        
        local e = false
        for x, c in pairs(whitelisted_list_legacy) do
            if c == tostring(game:GetService("RbxAnalyticsService"):GetClientId()) then
                e = true
            end
        end

        return true, game:GetService("RbxAnalyticsService"):GetClientId(), "Unknown.", e


    else
        local cool = false 
        local hwid = nil
        local exec = nil
        local whitelisted = false
      
        pcall(function()
            local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
            local decoded = game:GetService('HttpService'):JSONDecode(body)
            hwid = decoded.headers["Flux-Fingerprint"]
            
            
            if hwid then 
                exec = "Fluxus"
                cool = true
            end
        end)
        
        if not cool then
            pcall(function()
                local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
                local decoded = game:GetService('HttpService'):JSONDecode(body)
                hwid = decoded.headers["Electron-Fingerprint"]
                
                
                if hwid then 
                    exec = "Electron"
                    cool = true
                end
                
            end)
        end
        
        if not cool then
            pcall(function()
                local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
                local decoded = game:GetService('HttpService'):JSONDecode(body)
                hwid = decoded.headers["Valyse-Fingerprint"]
                
                
                if hwid then 
                    exec = "Valyse"
                    cool = true
                end
                
            end)
        end
    
    
        
        -- // check if there even is a hwid lol
        if not hwid then 
            return false,nil,false,exec
        else
        
          for x, c in pairs(whitelisted_list) do
              if c == hwid then
                  whitelisted = true
              end
          end
    
        
          return cool,hwid,whitelisted,exec
        
        end
    end
end 


-- // hi curious person :p
