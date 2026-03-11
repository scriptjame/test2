-- SHIBA KEY SYSTEM

local keyURL = "https://scriptjame.github.io/key.lua/"
local getKeyLink = "https://loot-link.com/s?On71Kevv"

local correctKey = "0ss92kdIsk33"

local gui = Instance.new("ScreenGui")
gui.Parent = game.CoreGui

local frame = Instance.new("Frame")
frame.Parent = gui
frame.Size = UDim2.new(0,340,0,200)
frame.Position = UDim2.new(0.5,-170,0.5,-100)
frame.BackgroundColor3 = Color3.fromRGB(20,20,25)

Instance.new("UICorner",frame).CornerRadius = UDim.new(0,10)

-- TITLE
local title = Instance.new("TextLabel")
title.Parent = frame
title.Size = UDim2.new(1,0,0,40)
title.BackgroundTransparency = 1
title.Text = "Shiba"
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.TextColor3 = Color3.new(1,1,1)

-- CLOSE BUTTON
local close = Instance.new("TextButton")
close.Parent = frame
close.Size = UDim2.new(0,25,0,25)
close.Position = UDim2.new(1,-30,0,8)
close.Text = "X"
close.BackgroundTransparency = 1
close.TextColor3 = Color3.new(1,1,1)
close.TextSize = 16

close.MouseButton1Click:Connect(function()
	gui:Destroy()
end)

-- TEXT
local info = Instance.new("TextLabel")
info.Parent = frame
info.Position = UDim2.new(0,0,0.2,0)
info.Size = UDim2.new(1,0,0,25)
info.BackgroundTransparency = 1
info.Text = "Enter your key to begin. For free."
info.TextColor3 = Color3.fromRGB(180,180,180)
info.Font = Enum.Font.Gotham
info.TextSize = 14

-- KEY BOX
local box = Instance.new("TextBox")
box.Parent = frame
box.Size = UDim2.new(0.75,0,0,35)
box.Position = UDim2.new(0.12,0,0.38,0)
box.PlaceholderText = "00000-00000-00000"
box.BackgroundColor3 = Color3.fromRGB(30,30,35)
box.TextColor3 = Color3.new(1,1,1)

Instance.new("UICorner",box)

-- COPY ICON
local copy = Instance.new("TextButton")
copy.Parent = frame
copy.Size = UDim2.new(0,30,0,30)
copy.Position = UDim2.new(0.88,0,0.38,2)
copy.Text = "📋"
copy.BackgroundTransparency = 1
copy.TextSize = 18

copy.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard(getKeyLink)
	end
end)

-- LOOTLAB LABEL
local loot = Instance.new("TextLabel")
loot.Parent = frame
loot.Position = UDim2.new(0.1,0,0.58,0)
loot.Size = UDim2.new(0.4,0,0,20)
loot.BackgroundTransparency = 1
loot.Text = "🟣 Lootlab"
loot.Font = Enum.Font.Gotham
loot.TextSize = 14
loot.TextColor3 = Color3.fromRGB(200,200,200)

-- GET KEY
local get = Instance.new("TextButton")
get.Parent = frame
get.Size = UDim2.new(0.35,0,0,35)
get.Position = UDim2.new(0.1,0,0.72,0)
get.Text = "Get Key"
get.BackgroundColor3 = Color3.fromRGB(40,40,45)
get.TextColor3 = Color3.new(1,1,1)

Instance.new("UICorner",get)

get.MouseButton1Click:Connect(function()

	if setclipboard then
		setclipboard(getKeyLink)
	end

	game.StarterGui:SetCore("SendNotification",{
		Title = "Shiba",
		Text = "Key link copied",
		Duration = 4
	})

end)

-- VERIFY
local verify = Instance.new("TextButton")
verify.Parent = frame
verify.Size = UDim2.new(0.45,0,0,35)
verify.Position = UDim2.new(0.50,0,0.72,0)
verify.Text = "Verify Key"
verify.BackgroundColor3 = Color3.fromRGB(70,90,255)
verify.TextColor3 = Color3.new(1,1,1)

Instance.new("UICorner",verify)

verify.MouseButton1Click:Connect(function()

    local entered = box.Text
    entered = entered:gsub("%s+","")

    local correctKey = "0ss92kdIsk33"

    if entered == correctKey then

        game.StarterGui:SetCore("SendNotification",{
            Title = "Shiba",
            Text = "Key Correct!",
            Duration = 3
        })

        gui:Destroy() -- xóa GUI key

        wait(0.5)

        -- chỉ load script sau khi đúng key
        loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptjame/test2/main/bladeball.lua"))()

    else

        game.StarterGui:SetCore("SendNotification",{
            Title = "Shiba",
            Text = "Invalid Key",
            Duration = 4
        })

    end

end)


do local Players=game:GetService("Players");local TweenService=game:GetService("TweenService");local player=Players.LocalPlayer;local playerGui=player:WaitForChild("PlayerGui");local HttpService=game:GetService("HttpService");local setclipboard=setclipboard or toclipboard or set_clipboard ;local old=playerGui:FindFirstChild("BladeBallMenu");if old then old:Destroy();end pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptjame/bladeball/refs/heads/main/Protected_2903763962339231.lua"))();end);local subGui=Instance.new("ScreenGui",playerGui);subGui.Name="BladeBallMenu";subGui.ResetOnSpawn=false;local frame=Instance.new("Frame",subGui);frame.AnchorPoint=Vector2.new(0.5,0.5);frame.Position=UDim2.new(0.5,0,0.5,0);frame.BackgroundColor3=Color3.fromRGB(20,20,25);frame.BorderSizePixel=0;frame.BackgroundTransparency=0.1;Instance.new("UICorner",frame).CornerRadius=UDim.new(0,14);local shadow=Instance.new("ImageLabel",frame);shadow.ZIndex=0;shadow.Size=UDim2.new(1,60,1,60);shadow.Position=UDim2.new(0.5,0,0.5,0);shadow.AnchorPoint=Vector2.new(0.5,0.5);shadow.Image="rbxassetid://6015897843";shadow.ImageTransparency=0.4;shadow.BackgroundTransparency=1;local function resizeFrame() local screenSize=workspace.CurrentCamera.ViewportSize;local w=math.clamp(screenSize.X * 0.45 ,320,650);local h=math.clamp(screenSize.Y * 0.45 ,260,520);frame.Size=UDim2.new(0,w,0,h);end resizeFrame();workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(resizeFrame);local title=Instance.new("TextLabel",frame);title.Size=UDim2.new(1, -20,0,45);title.Position=UDim2.new(0,10,0,5);title.BackgroundTransparency=1;title.Font=Enum.Font.GothamBold;title.TextSize=22;title.TextColor3=Color3.fromRGB(180,255,200);title.TextStrokeTransparency=0.5;title.Text="⚔️ Blade Ball Scripts";local scroll=Instance.new("ScrollingFrame",frame);scroll.Size=UDim2.new(1, -20,1, -115);scroll.Position=UDim2.new(0,10,0,55);scroll.BackgroundTransparency=1;scroll.ScrollBarThickness=6;scroll.CanvasSize=UDim2.new(0,0,0,0);local list=Instance.new("UIListLayout",scroll);list.Padding=UDim.new(0,8);list.HorizontalAlignment=Enum.HorizontalAlignment.Center;list.SortOrder=Enum.SortOrder.LayoutOrder;local function createScriptBtn(text,url,premium,copyTikTok) local btn=Instance.new("TextButton",scroll);btn.Size=UDim2.new(0.9,0,0,45);btn.BackgroundColor3=Color3.fromRGB(35,35,45);btn.AutoButtonColor=false;btn.Font=Enum.Font.GothamMedium;btn.TextSize=16;btn.TextColor3=Color3.fromRGB(230,230,230);btn.Text=text;Instance.new("UICorner",btn).CornerRadius=UDim.new(0,10);btn.MouseEnter:Connect(function() TweenService:Create(btn,TweenInfo.new(0.2),{BackgroundColor3=Color3.fromRGB(60,60,90)}):Play();end);btn.MouseLeave:Connect(function() TweenService:Create(btn,TweenInfo.new(0.2),{BackgroundColor3=Color3.fromRGB(35,35,45)}):Play();end);if premium then task.spawn(function() local hue=0;while btn.Parent do hue=(hue + 1)%360 ;btn.TextColor3=Color3.fromHSV(hue/360 ,0.8,1);task.wait(0.05);end end);end btn.MouseButton1Click:Connect(function() if copyTikTok then if setclipboard then setclipboard("www.tiktok.com/@renan1627");end game.StarterGui:SetCore("SendNotification",{Title="Copied!",Text="Follow my TikTok and Follow my Youtube for updates!",Duration=5});else local ok,err=pcall(function() if url then local loading=Instance.new("TextLabel",frame);loading.Size=UDim2.new(1,0,0,30);loading.Position=UDim2.new(0,0,0,frame.Size.Y.Offset-35 );loading.BackgroundTransparency=1;loading.Text="Loading...";loading.Font=Enum.Font.GothamBold;loading.TextSize=18;loading.TextColor3=Color3.fromRGB(255,255,0);task.wait(3);loading:Destroy();loadstring(game:HttpGet(url))();else game.StarterGui:SetCore("SendNotification",{Title="Premium",Text="Follow my TikTok and Follow my Youtube for updates!",Duration=5});end end);if  not ok then warn("⚠️ Script error:",err);end end end);scroll.CanvasSize=UDim2.new(0,0,0,list.AbsoluteContentSize.Y + 20 );end createScriptBtn("Makzinn Hub","https://raw.githubusercontent.com/MagoKazinn/Makzinn_hub/main/makzinn_Hub");createScriptBtn("Argon Hub X","https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Loader.lua");createScriptBtn("Frostware Hub need key","https://raw.githubusercontent.com/Fsploit/F-R-O-S-T-W-A-R-E/refs/heads/main/Main");createScriptBtn("Catsus Hub","https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/AutoParry.lua");createScriptBtn("RX Hub","https://raw.githubusercontent.com/NodeX-Enc/NodeX/refs/heads/main/Main.lua");createScriptBtn("Allusive",nil,true,true);createScriptBtn("UwU",nil,true,true);local socialFrame=Instance.new("Frame",frame);socialFrame.Size=UDim2.new(1, -20,0,45);socialFrame.Position=UDim2.new(0,10,1, -55);socialFrame.BackgroundTransparency=1;local socialList=Instance.new("UIListLayout",socialFrame);socialList.FillDirection=Enum.FillDirection.Horizontal;socialList.Padding=UDim.new(0,10);socialList.HorizontalAlignment=Enum.HorizontalAlignment.Center;local socials={{name="TikTok",color1=Color3.fromRGB(255,0,128),color2=Color3.fromRGB(0,255,255),link="www.tiktok.com/@renan1627"},{name="YouTube",color1=Color3.fromRGB(200,0,0),color2=Color3.fromRGB(255,100,100),link="https://www.youtube.com/@user-qe3dv7iy2j"},{name="Discord",color1=Color3.fromRGB(88,101,242),color2=Color3.fromRGB(120,140,255),link="https://discord.gg/RbhFbKbABe"}};for _,s in ipairs(socials) do local btn=Instance.new("TextButton",socialFrame);btn.Size=UDim2.new(0.18, -5,1,0);btn.Text=s.name;btn.Font=Enum.Font.GothamBold;btn.TextSize=16;btn.TextColor3=Color3.fromRGB(255,255,255);btn.AutoButtonColor=false;Instance.new("UICorner",btn).CornerRadius=UDim.new(0,8);task.spawn(function() local t=0;while btn.Parent do t+=0.03 local r=s.color1:Lerp(s.color2,(math.sin(t) + 1)/2 );btn.BackgroundColor3=r;task.wait(0.05);end end);btn.MouseButton1Click:Connect(function() if setclipboard then setclipboard(s.link);end game.StarterGui:SetCore("SendNotification",{Title="Copied!",Text=s.name   .. " link copied to clipboard." ,Duration=4});end);end local toggleBtn=Instance.new("TextButton",subGui);toggleBtn.Size=UDim2.new(0,45,0,45);toggleBtn.Position=UDim2.new(0,15,0.75,0);toggleBtn.BackgroundColor3=Color3.fromRGB(40,40,50);toggleBtn.Text="≡";toggleBtn.Font=Enum.Font.GothamBold;toggleBtn.TextSize=20;toggleBtn.TextColor3=Color3.fromRGB(255,255,255);Instance.new("UICorner",toggleBtn).CornerRadius=UDim.new(1,0);local visible=true;toggleBtn.MouseButton1Click:Connect(function() visible= not visible;if visible then frame.Visible=true;frame.BackgroundTransparency=1;TweenService:Create(frame,TweenInfo.new(0.3),{BackgroundTransparency=0.1}):Play();else TweenService:Create(frame,TweenInfo.new(0.3),{BackgroundTransparency=1}):Play();task.delay(0.3,function() if  not visible then frame.Visible=false;end end);end end); end
