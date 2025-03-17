loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

local Window = MakeWindow({
    Hub = {
        Title = "DKsigma Roblox Hub",
        Animation = "Super Sigma Boy!!!"
    }
})

MinimizeButton({
    Image = "http://www.roblox.com/asset/?id=8319027695191",
    Size = {60, 60},
    Color = Color3.fromRGB(10, 10, 10),
    Corner = true,
    Stroke = false,
    StrokeColor = Color3.fromRGB(255, 0, 0)
})

local Tab1o = MakeTab({Name = "Script keyless"})
local Tab2o = MakeTab({Name = "Script need key"})

AddButton(Tab1o, {
    Name = "Redz Hub",
    Callback = function()
        local Settings = {
            JoinTeam = "Pirates",
            Translator = true
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))(Settings)
    end
})

AddButton(Tab1o, {
    Name = "W-azure Hub",
    Callback = function()
        local Settings = {
            JoinTeam = "Pirates",
            Translator = true
        }
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-AzureHub-15617"))
    end
})

AddButton(Tab1o, {
    Name = "Speed Hub",
    Callback = function()
        local Settings = {
            JoinTeam = "Pirates",
            Translator = true
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))
    end
})

AddButton(Tab1o, {
    Name = "Monster Hub",
    Callback = function()
        local Settings = {
            JoinTeam = "Pirates",
            Translator = true
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/giahuy2511-coder/MonsterHub/refs/heads/main/MonsterHub"))
    end
})

AddButton(Tab2o, {
    Name = "Hoho Hub",
    Callback = function()
        local Settings = {
            JoinTeam = "Pirates",
            Translator = true
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HohoV2/main/ScriptLoad.lua"))
    end
})

AddButton(Tab2o, {
    Name = "Zenith Hub",
    Callback = function()
        local Settings = {
            JoinTeam = "Pirates",
            Translator = true
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/RaitoHub/main/Script"))()
    end
})
