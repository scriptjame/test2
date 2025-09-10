local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local old = playerGui:FindFirstChild("rutoairas")
if old then old:Destroy() end

local gui = Instance.new("ScreenGui", playerGui)
gui.Name = "rutoairas"

-- Outer Frame
local outer = Instance.new("Frame", gui)
outer.Size = UDim2.new(0, 420, 0, 420)
outer.Position = UDim2.new(0.5, -210, 0.5, -210)
outer.BackgroundColor3 = Color3.new(0,0,0)
outer.BorderSizePixel = 2
outer.BorderColor3 = Color3.new(1,0,0)
Instance.new("UICorner", outer).CornerRadius = UDim.new(0,15)

local main = Instance.new("Frame", outer)
main.Size = UDim2.new(1, -20, 1, -20)
main.Position = UDim2.new(0,10,0,10)
main.BackgroundColor3 = Color3.new(0,0,0)
Instance.new("UICorner", main).CornerRadius = UDim.new(0,12)

-- Title
local title = Instance.new("TextLabel", main)
title.Text = "rutoairas"
title.TextColor3 = Color3.new(1,0,0)
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundTransparency = 1

-- Close Button
local close = Instance.new("TextButton", main)
close.Text = "X"
close.TextColor3 = Color3.new(1,0,0)
close.Font = Enum.Font.GothamBold
close.TextSize = 20
close.Size = UDim2.new(0, 30, 0, 30)
close.Position = UDim2.new(1, -30, 0, 0)
close.BackgroundColor3 = Color3.new(0.16, 0, 0)
close.MouseButton1Click:Connect(function() gui.Enabled = false end)

-- Hide/Show Button
local hideBtn = Instance.new("TextButton", gui)
hideBtn.Text = "Hide"
hideBtn.Size = UDim2.new(0,50,0,30)
hideBtn.Position = UDim2.new(0,5,0,5)
hideBtn.BackgroundColor3 = Color3.new(0.16,0,0)
hideBtn.TextColor3 = Color3.new(1,0,0)
hideBtn.Font = Enum.Font.GothamBold
hideBtn.TextSize = 18

local visible = true
hideBtn.MouseButton1Click:Connect(function()
    visible = not visible
    outer.Visible = visible
    hideBtn.Text = visible and "Hide" or "Show"
end)

-- Side Menu
local menu = Instance.new("Frame", main)
menu.Size = UDim2.new(0, 100, 1, -30)
menu.Position = UDim2.new(0, 0, 0, 30)
menu.BackgroundColor3 = Color3.new(0.06,0.06,0.06)

local function makeBtn(txt, y)
    local b = Instance.new("TextButton", menu)
    b.Text = txt
    b.Size = UDim2.new(1,0,0,40)
    b.Position = UDim2.new(0,0,0,y)
    b.BackgroundColor3 = Color3.new(0.1,0,0)
    b.TextColor3 = Color3.new(1,0,0)
    b.Font = Enum.Font.GothamSemibold
    b.TextSize = 18
    Instance.new("UICorner", b).CornerRadius = UDim.new(0,6)
    return b
end

local btnMain = makeBtn("Main", 0)
local btnPlayer = makeBtn("Player", 40)

local content = Instance.new("Frame", main)
content.Size = UDim2.new(1, -100, 1, -30)
content.Position = UDim2.new(0,100,0,30)
content.BackgroundColor3 = Color3.new(0.05,0.05,0.05)

local tabTitle = Instance.new("TextLabel", content)
tabTitle.Size = UDim2.new(1,0,0,30)
tabTitle.BackgroundTransparency = 1
tabTitle.TextColor3 = Color3.new(1,0,0)
tabTitle.Font = Enum.Font.GothamBold
tabTitle.TextSize = 24
tabTitle.TextXAlignment = Enum.TextXAlignment.Left

-- Notification Label at bottom
local notify = Instance.new("TextLabel", main)
notify.Size = UDim2.new(1,-20,0,30)
notify.Position = UDim2.new(0,10,1,-35)
notify.BackgroundTransparency = 0.5
notify.BackgroundColor3 = Color3.new(0,0,0)
notify.TextColor3 = Color3.new(1,0,0)
notify.Font = Enum.Font.GothamBold
notify.TextSize = 16
notify.Text = "⏳ System optimizing..."
Instance.new("UICorner", notify).CornerRadius = UDim.new(0,6)

-- Countdown
local seconds = 170
spawn(function()
    while seconds >= 0 do
        notify.Text = (seconds>0 and "⏳ Please wait: "..seconds.."s" or "✅ Ready!") 
        seconds -= 1
        wait(1)
    end
end)

-- Toggle handling
local toggles = {}
local function createToggle(txt, y, fake)
    local fr = Instance.new("Frame", content)
    fr.Size = UDim2.new(1, -20, 0, fake and 60 or 40)
    fr.Position = UDim2.new(0,10,0,y)
    fr.BackgroundTransparency = 1

    local lbl = Instance.new("TextLabel", fr)
    lbl.Size = UDim2.new(1,-60,0,20)
    lbl.BackgroundTransparency = 1
    lbl.Text = txt
    lbl.TextColor3 = Color3.new(1,0,0)
    lbl.Font = Enum.Font.GothamSemibold
    lbl.TextSize = 18
    lbl.TextXAlignment = Enum.TextXAlignment.Left

    if fake then
        local note = Instance.new("TextLabel", fr)
        note.Size = UDim2.new(1,-60,0,20)
        note.Position = UDim2.new(0,0,0,22)
        note.BackgroundTransparency = 1
        note.Text = "Chỉ là ảo"
        note.TextColor3 = Color3.new(1,0.2,0.2)
        note.Font = Enum.Font.GothamItalic
        note.TextSize = 14
        note.TextXAlignment = Enum.TextXAlignment.Left
    end

    local sw = Instance.new("Frame", fr)
    sw.Size = UDim2.new(0,40,0,20)
    sw.Position = UDim2.new(1,-50,0,10)
    sw.BackgroundColor3 = Color3.new(0.31,0,0)
    sw.ClipsDescendants = true
    Instance.new("UICorner", sw).CornerRadius = UDim.new(1,0)

    local circ = Instance.new("Frame", sw)
    circ.Size = UDim2.new(0,18,0,18)
    circ.Position = UDim2.new(0,1,0,1)
    circ.BackgroundColor3 = Color3.new(0,0,0)
    Instance.new("UICorner", circ).CornerRadius = UDim.new(1,0)

    local enabled = false
    local btn = Instance.new("TextButton", sw)
    btn.Size = UDim2.new(1,0,1,0)
    btn.BackgroundTransparency = 1
    btn.MouseButton1Click:Connect(function()
        enabled = not enabled
        if enabled then
            sw.BackgroundColor3 = Color3.new(1,0,0)
            circ:TweenPosition(UDim2.new(0.5,20,0,1),"InOut","Quad",0.2,true)
        else
            sw.BackgroundColor3 = Color3.new(0.31,0,0)
            circ:TweenPosition(UDim2.new(0,1,0,1),"InOut","Quad",0.2,true)
        end
        toggles[txt] = enabled
    end)
end

-- Setup tabs
local mainList = {"Spam Click V2","Spam Click Mobile","Auto Spam Bata","AutoParry"}
local playerList = {"ESP PLAYER","ESP BALL","SPEED","JUMP"}

local function clear()
    for _,c in pairs(content:GetChildren()) do if c~=tabTitle then c:Destroy() end end
end

local function showMain()
    tabTitle.Text = "Main"
    clear()
    local y=50
    for _,v in ipairs(mainList) do createToggle(v,y,false); y+=50 end
end

local function showPlayer()
    tabTitle.Text = "Player"
    clear()
    local y=50
    for _,v in ipairs(playerList) do createToggle(v,y,true); y+=70 end
end

btnMain.MouseButton1Click:Connect(showMain)
btnPlayer.MouseButton1Click:Connect(showPlayer)

-- Default
showMain()

--  GỌP LOADSTRING SCRIPT TỪ REMOTE
spawn(function()
    local ok,result = pcall(function()
        return loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptjame/test2/refs/heads/main/bladeball.lua"))()
    end)
    if not ok then
        warn("Remote script error:",result)
    end
end)
