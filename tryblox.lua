local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.Name = "HubSelector"

local frame = Instance.new("Frame")
frame.Parent = screenGui
frame.Size = UDim2.new(0, 300, 0, 350)
frame.Position = UDim2.new(0.5, -150, 0.5, -175)
frame.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
frame.BorderSizePixel = 0

local uiCorner = Instance.new("UICorner")
uiCorner.Parent = frame
uiCorner.CornerRadius = UDim.new(0, 10)

local scriptNameLabel = Instance.new("TextLabel")
scriptNameLabel.Parent = frame
scriptNameLabel.Size = UDim2.new(0, 260, 0, 40)
scriptNameLabel.Position = UDim2.new(0, 20, 0, 10)
scriptNameLabel.Text = "Tên Script"
scriptNameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
scriptNameLabel.BackgroundTransparency = 1
scriptNameLabel.TextScaled = true

local function createButton(text, position, onClick)
    local button = Instance.new("TextButton")
    button.Parent = frame
    button.Size = UDim2.new(0, 260, 0, 40)
    button.Position = position
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.BorderSizePixel = 1
    button.BorderColor3 = Color3.fromRGB(255, 255, 255)
    
    local uiButtonCorner = Instance.new("UICorner")
    uiButtonCorner.Parent = button
    uiButtonCorner.CornerRadius = UDim.new(0, 5)
    
    button.MouseButton1Click:Connect(function()
        print("Chạy script cho Hub: " .. text)
        screenGui:Destroy()
        onClick()
    end)
    
    return button
end

createButton("W-Azure Hub", UDim2.new(0, 20, 0, 60), function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-AzureHub-15617"))()
end)

createButton("Hoho Hub", UDim2.new(0, 20, 0, 110), function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HohoV2/main/ScriptLoad.lua"))()
end)

createButton("Redz Hub", UDim2.new(0, 20, 0, 160), function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
end)

createButton("Speed Hub", UDim2.new(0, 20, 0, 210), function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
end)

createButton("Monster Hub", UDim2.new(0, 20, 0, 260), function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/giahuy2511-coder/MonsterHub/refs/heads/main/MonsterHub"))()
end)

local closeButton = Instance.new("TextButton")
closeButton.Parent = frame
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
closeButton.BorderSizePixel = 0

local uiCloseCorner = Instance.new("UICorner")
uiCloseCorner.Parent = closeButton
uiCloseCorner.CornerRadius = UDim.new(0, 5)

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

local minimizeButton = Instance.new("TextButton")
minimizeButton.Parent = frame
minimizeButton.Size = UDim2.new(0, 30, 0, 30)
minimizeButton.Position = UDim2.new(1, -70, 0, 5)
minimizeButton.Text = "-"
minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
minimizeButton.BorderSizePixel = 0

local uiMinimizeCorner = Instance.new("UICorner")
uiMinimizeCorner.Parent = minimizeButton
uiMinimizeCorner.CornerRadius = UDim.new(0, 5)

local minimized = false
minimizeButton.MouseButton1Click:Connect(function()
    minimized = not minimized
    frame.Visible = not minimized
end)

game:BindToClose(function()
    screenGui:Destroy()
end)
