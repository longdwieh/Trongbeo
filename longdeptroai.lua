-- 🌸 UI Flu Hub cơ bản (chỉ danh mục)
local Flu = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/main/source.lua"))()

-- 🪄 Cửa sổ chính
local Window = Flu:CreateWindow({
    Title = "🌸 Neon Hub 🌸",
    SubTitle = " by Longdeptrai",
    Size = UDim2.new(0, 450, 0, 320),
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl
})

-- 🧭 Danh mục Tabs
local Tabs = {
    Main = Window:AddTab({Title = "Tab Farming", Icon = "Home"}),
    Settings = Window:AddTab({Title = "Tab Local Player", Icon = "settings"}),
    Prehistoric = Window:AddTab({Title = "Tab Prehistoric Event", Icon = "tent"}),
    SeaEvent = Window:AddTab({Title = "Tab Sea Event", Icon = "anchor"}),
    Dragon = Window:AddTab({Title = "Tab Dragon Dojo", Icon = "layers"}),
    Mirage = Window:AddTab({Title = "Tab Race V4", Icon = "flag"}),
    Melee = Window:AddTab({Title = "Tab Get Item", Icon = "loader"}),
    Quests = Window:AddTab({Title = "Tab Farming Order", Icon = "sword"})
}

-- 🪶 Hiển thị tiêu đề nhỏ trong mỗi tab (để test)
Tabs.Main:AddParagraph({Title = "Farming", Content = "Danh mục Farm"})
Tabs.Settings:AddParagraph({Title = "Local Player", Content = "Danh mục người chơi"})
Tabs.Prehistoric:AddParagraph({Title = "Prehistoric Event", Content = "Danh mục sự kiện tiền sử"})
Tabs.SeaEvent:AddParagraph({Title = "Sea Event", Content = "Danh mục biển"})
Tabs.Dragon:AddParagraph({Title = "Dragon Dojo", Content = "Danh mục luyện rồng"})
Tabs.Mirage:AddParagraph({Title = "Race V4", Content = "Tiến hóa chủng tộc"})
Tabs.Melee:AddParagraph({Title = "Get Item", Content = "Danh mục vật phẩm"})
Tabs.Quests:AddParagraph({Title = "Farming Order", Content = "Danh mục nhiệm vụ farm"})

-- 🔔 Thông báo UI
Flu:Notify({Title = "HNC Flu Hub", Content = "✨ UI đã khởi động thành công!"})
