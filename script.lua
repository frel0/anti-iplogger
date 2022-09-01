local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {Title = "Anti-IP Logger", Text = "script loaded, youre safe."})

-- giving credits to "Dwuck", i edited the script to send a notification if youre begging logged.
-- script edited by: frel0#0155
local old 
local request = syn.request or http_request or request
old = hookfunction(request, function(...)
    local args = {...}
    if args[1]['Url']:find("ipify")or("checkip")or("ip-api")then
        --sends message
         StarterGui:SetCore("SendNotification", {Title = "Anti-IP Logger", Text = "ip logger script detected, returned nothing"})
         -- returns nothing
        return("fuck u")
    end
    return old(...)
end)
local old2
old2 = hookfunction(game.HttpGet, function(...)
    local args = {...}
    if args[2]:find("ipify")or("checkip")or("ip-api")then
        -- same for the first msgs
                 StarterGui:SetCore("SendNotification", {Title = "Anti-IP Logger", Text = "ip logger script detected, returned nothing"})
                         return("fuck u")
    end
    return old2(...)
end)
