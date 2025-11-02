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
-- Tạo Tab
local Info = Windows:MakeTab("Info")
local Farm = Windows:MakeTab("Farming")
local DiscordTab = Windows:MakeTab("Discord Info")

-- Nội dung trong tab Discord
DiscordTab:AddLabel("🌐 Server chính thức của Hub:")
DiscordTab:AddParagraph("Tên Server", "TrongNguyen Community")

DiscordTab:AddLabel("🔗 Link Discord:")
DiscordTab:AddButton({
    Title = "Sao chép link Discord",
    Description = "Nhấn để sao chép link vào clipboard",
    Callback = function()
        setclipboard("https://discord.gg/abcxyz") -- Thay link thật của bạn

        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "✅ Đã sao chép!",
            Text = "Link Discord đã được sao chép vào clipboard!",
            Duration = 3
        })
    end
})
