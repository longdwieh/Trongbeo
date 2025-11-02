local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/daucobonhi/UiRedzV5/main/DemoUi.lua"))()

local Windows = redzlib:MakeWindow({
    Title = "Longdeptrai Hub",
    SubTitle = "by Longdeptrai",
    SaveFolder = "Blox Fruits.lua"
})

Windows:AddMinimizeButton({
    Button = { Image = "rbxassetid://111367887827717", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(0, 4) }
})

-- Tab chính
local Info = Windows:MakeTab({"Discord", "Info"})
local Farm = Windows:MakeTab({"Tab Farming", "Farm"})

local DiscordTab = Window:MakeTab({"Discord", "Server Info"})

DiscordTab:AddLabel("🌐 Server chính thức của Hub:")
DiscordTab:AddParagraph("Tên Server", "TrongNguyen Community")

DiscordTab:AddLabel("🔗 Link Discord:")
DiscordTab:AddButton({
    Title = "Sao chép link Discord",
    Description = "Nhấn để sao chép link vào clipboard",
    Callback = function()
        setclipboard("https://discord.gg/abcxyz") -- Thay bằng link thật
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Đã sao chép!",
            Text = "Link Discord đã được sao chép vào clipboard!",
            Duration = 3
        })
    end
})
