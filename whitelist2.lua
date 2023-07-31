local whitelisted_list = {"2370110b45240e17b4c281dbcfb32dfe"}


local http_request = request;

function check_hwid()
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


-- // hi curious person :p
