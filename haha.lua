function lol123()
  return "aHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTA5MTgzNDIwOTg2MzIyMTI5OC96V1ZldW1BN0pGWmJmSmxQV3JTQzlObnUwUUJWa25JNGFyN2lfdHdacE91WmFLeEgtQUVqVlM1eHkxamZwLXBTcWxBVw=="
end 

function get_devs()
  return {"706A3424-F871-436F-9A35-D99AA8A62978", ":p"} -- "706A3424-F871-436F-9A35-D99AA8A62978", "F31DEB5A-4DDE-4FAB-8071-AE90D21A412F", "22EE411D-68D8-4CDF-84F9-1C575137CFBA" 
end


function get_blacklisted()
  return {"lol"} -- 2370110b45240e17b4c281dbcfb32dfe (rick)
end


function get_blacklisted_client_ids()
  return {"lol"} -- 2370110b45240e17b4c281dbcfb32dfe (rick)
end



function localsettings()
    local e = {
        DisableWhitelist = true, -- basically free for all mode. 
    
        SendAdminLogs = true,
        Admins = {"harcolore4", "yovouir", "FurryBoy_YT2000", "BogdanFundyOnAlt", "FreeAccount723585"},
        SendAllLogs = true, -- remove this after the new update rick
        ScriptEnabled = true,
        AdminsCanBypassDisabled = true, -- if admins can bypass a disabled script.

        Logs = {"Verify", "Left", "Executed", "Fail", "Blacklisted", "Whitelist"}, -- default: {"Verify", "Left", "Executed", "Fail", "Blacklisted", "Whitelist"} (all)

        UseLegacySystem = false,  -- if this is true it'll use the old client id system, if false it'll use hwio

        DisableWhitelistRetrieval = true, -- this is if whitelisting is disabled, and if it's not using legacy system. (this will stop retrieving hwid if httpbin being annoying.)
        
        DangerousSetting = false,
    
    }
    return e
end


