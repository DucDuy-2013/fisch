local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer.PlayerGui
screenGui.Name = "HubSelector"

local frame = Instance.new("Frame")
frame.Parent = screenGui
frame.Size = UDim2.new(0, 300, 0, 400)
frame.Position = UDim2.new(0.5, -150, 0.5, -200)
frame.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
frame.BorderSizePixel = 0

local uiCorner = Instance.new("UICorner")
uiCorner.Parent = frame
uiCorner.CornerRadius = UDim.new(0, 15)

local title = Instance.new("TextLabel")
title.Parent = frame
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 0)
title.Text = "Dksigma Hub"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
title.BorderSizePixel = 0
title.TextScaled = true
title.Font = Enum.Font.SourceSansBold

local titleCorner = Instance.new("UICorner")
titleCorner.Parent = title
titleCorner.CornerRadius = UDim.new(0, 10)

local tabFrame = Instance.new("Frame")
tabFrame.Parent = frame
tabFrame.Size = UDim2.new(0, 300, 0, 40)
tabFrame.Position = UDim2.new(0, 0, 0, 40)
tabFrame.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
tabFrame.BorderSizePixel = 0

local tabFrameCorner = Instance.new("UICorner")
tabFrameCorner.Parent = tabFrame
tabFrameCorner.CornerRadius = UDim.new(0, 10)

local contentFrame = Instance.new("Frame")
contentFrame.Parent = frame
contentFrame.Size = UDim2.new(0, 300, 0, 320)
contentFrame.Position = UDim2.new(0, 0, 0, 80)
contentFrame.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
contentFrame.BorderSizePixel = 0

local contentFrameCorner = Instance.new("UICorner")
contentFrameCorner.Parent = contentFrame
contentFrameCorner.CornerRadius = UDim.new(0, 10)

local toggleButton = Instance.new("ImageButton")
toggleButton.Parent = screenGui
toggleButton.Size = UDim2.new(0, 60, 0, 60)
toggleButton.Position = UDim2.new(0, 10, 0, 10)
toggleButton.Image = "http://www.roblox.com/asset/?id=1108206343" 
toggleButton.BackgroundTransparency = 1

local isVisible = true
toggleButton.MouseButton1Click:Connect(function()
    isVisible = not isVisible
    frame.Visible = isVisible
end)

local dragging = false
local dragInput, mousePos, elementPos

toggleButton.MouseButton1Down:Connect(function(input)
    dragging = true
    dragInput = input
    mousePos = input.Position
    elementPos = toggleButton.Position
end)

toggleButton.MouseMoved:Connect(function(input)
    if dragging then
        local delta = input.Position - mousePos
        toggleButton.Position = UDim2.new(elementPos.X.Scale, elementPos.X.Offset + delta.X, elementPos.Y.Scale, elementPos.Y.Offset + delta.Y)
    end
end)

toggleButton.MouseButton1Up:Connect(function()
    dragging = false
end)

local closeButton = Instance.new("TextButton")
closeButton.Parent = frame
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -40, 0, 10)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeButton.BorderSizePixel = 0
closeButton.TextScaled = true
closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

local function switchTab(tabName)
    for _, child in pairs(contentFrame:GetChildren()) do
        if child:IsA("Frame") then
            child.Visible = false
        end
    end
    local tabContent = contentFrame:FindFirstChild(tabName)
    if tabContent then
        tabContent.Visible = true
    end
end

local tabKeyless = Instance.new("Frame")
tabKeyless.Name = "ScriptKeyless"
tabKeyless.Parent = contentFrame
tabKeyless.Size = UDim2.new(1, 0, 1, 0)
tabKeyless.BackgroundTransparency = 1

local tabNeedKey = Instance.new("Frame")
tabNeedKey.Name = "ScriptNeedKey"
tabNeedKey.Parent = contentFrame
tabNeedKey.Size = UDim2.new(1, 0, 1, 0)
tabNeedKey.BackgroundTransparency = 1
tabNeedKey.Visible = false

local keylessButton = Instance.new("TextButton")
keylessButton.Parent = tabFrame
keylessButton.Size = UDim2.new(0.5, -5, 1, 0)
keylessButton.Position = UDim2.new(0, 0, 0, 0)
keylessButton.Text = "Script Keyless"
keylessButton.TextColor3 = Color3.fromRGB(255, 255, 255)
keylessButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
keylessButton.BorderSizePixel = 0
keylessButton.MouseButton1Click:Connect(function()
    switchTab("ScriptKeyless")
end)

local needKeyButton = Instance.new("TextButton")
needKeyButton.Parent = tabFrame
needKeyButton.Size = UDim2.new(0.5, -5, 1, 0)
needKeyButton.Position = UDim2.new(0.5, 5, 0, 0)
needKeyButton.Text = "Script Need Key"
needKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
needKeyButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
needKeyButton.BorderSizePixel = 0
needKeyButton.MouseButton1Click:Connect(function()
    switchTab("ScriptNeedKey")
end)

local uiLayout = Instance.new("UIListLayout")
uiLayout.Parent = tabFrame
uiLayout.FillDirection = Enum.FillDirection.Horizontal
uiLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
uiLayout.Padding = UDim.new(0, 10)

local function createButton(parent, text, position, onClick)
    local button = Instance.new("TextButton")
    button.Parent = parent
    button.Size = UDim2.new(0, 260, 0, 40)
    button.Position = position
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.BorderSizePixel = 1
    button.BorderColor3 = Color3.fromRGB(255, 255, 255)
    button.MouseButton1Click:Connect(function()
        print("Chạy script cho Hub: " .. text)
        screenGui:Destroy()
        onClick()
    end)
    
    local buttonCorner = Instance.new("UICorner")
    buttonCorner.Parent = button
    buttonCorner.CornerRadius = UDim.new(0, 10)
    
    return button
end

createButton(tabKeyless, "W-Azure Hub", UDim2.new(0, 20, 0, 20), function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-AzureHub-15617"))()
end)

createButton(tabKeyless, "Redz Hub", UDim2.new(0, 20, 0, 70), function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
end)

createButton(tabKeyless, "Speed Hub", UDim2.new(0, 20, 0, 120), function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
end)

createButton(tabKeyless, "Monster Hub", UDim2.new(0, 20, 0, 170), function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/giahuy2511-coder/MonsterHub/refs/heads/main/MonsterHub"))()
end)

createButton(tabNeedKey, "Hoho Hub", UDim2.new(0, 20, 0, 20), function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HohoV2/main/ScriptLoad.lua"))()
end)

createButton(tabNeedKey, "Zenith Hub", UDim2.new(0, 20, 0, 70), function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/ZenithHub/refs/heads/main/Loader"))()
end)

game:BindToClose(function()
    screenGui:Destroy()
end)
