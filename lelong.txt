local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local VirtualInputManager = game:GetService("VirtualInputManager")
local TweenService = game:GetService("TweenService")
local CollectionService = game:GetService("CollectionService")
local TeleportService = game:GetService("TeleportService")

local LocalPlayer = Players.LocalPlayer
local player = LocalPlayer
local plr = LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Parent = UI
Main.BackgroundColor3 = Color3.fromRGB(120, 20, 20)
Main.BackgroundTransparency = 0
Main.Position = UDim2.new(0.5, -425, 0.5, -260)
Main.Size = UDim2.new(0, 850, 0, 520)

local UICornerMain = Instance.new("UICorner", Main)
UICornerMain.CornerRadius = UDim.new(0, 0) -- hình chữ nhật

-- 🧱 Sidebar (thanh danh mục bên trái)
local Sidebar = Instance.new("Frame")
Sidebar.Name = "Sidebar"
Sidebar.Parent = Main
Sidebar.BackgroundColor3 = Color3.fromRGB(15, 25, 20)
Sidebar.Size = UDim2.new(0, 180, 1, 0)
Sidebar.Position = UDim2.new(0, 0, 0, 0)

-- Đổ bóng nhẹ cho Sidebar
local SidebarStroke = Instance.new("UIStroke", Sidebar)
SidebarStroke.Thickness = 2
SidebarStroke.Color = Color3.fromRGB(0, 255, 150)

-- Bo góc nhẹ
local SidebarCorner = Instance.new("UICorner", Sidebar)
SidebarCorner.CornerRadius = UDim.new(0, 0)

-- 🧩 Tạo hàm tạo nút danh mục
local function createCategory(name, order)
    local btn = Instance.new("TextButton")
    btn.Parent = Sidebar
    btn.Text = name
    btn.Font = Enum.Font.GothamBold
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = 16
    btn.BackgroundColor3 = Color3.fromRGB(25, 40, 30)
    btn.Size = UDim2.new(1, 0, 0, 40)
    btn.Position = UDim2.new(0, 0, 0, (order - 1) * 45)
    btn.BorderSizePixel = 0

    -- Hiệu ứng hover
    btn.MouseEnter:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(40, 70, 50)
    end)
    btn.MouseLeave:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(25, 40, 30)
    end)

    return btn
end

-- 🧭 Các danh mục
local HomeBtn = createCategory("🏠  Home", 1)
local FarmingBtn = createCategory("🚜  Farming", 2)
local PlayerBtn = createCategory("🧍  Player", 3)
local MiscBtn = createCategory("⚙️  Misc", 4)
local SettingsBtn = createCategory("🔧  Settings", 5)

-- 🪟 ContentFrame (vùng hiển thị bên phải)
local ContentFrame = Instance.new("Frame")
ContentFrame.Name = "ContentFrame"
ContentFrame.Parent = Main
ContentFrame.BackgroundColor3 = Color3.fromRGB(25, 35, 30)
ContentFrame.Position = UDim2.new(0, 180, 0, 0)
ContentFrame.Size = UDim2.new(1, -180, 1, 0)

local UIStrokeContent = Instance.new("UIStroke", ContentFrame)
UIStrokeContent.Thickness = 1
UIStrokeContent.Color = Color3.fromRGB(0, 255, 120)

local Label = Instance.new("TextLabel", ContentFrame)
Label.Size = UDim2.new(1, 0, 0, 50)
Label.Text = "Farming"
Label.Font = Enum.Font.GothamBold
Label.TextSize = 30
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1
Label.Position = UDim2.new(0, 20, 0, 20)

-- 🧠 Khi click vào từng danh mục
HomeBtn.MouseButton1Click:Connect(function()
	Label.Text = "Home"
	ContentFrame.BackgroundColor3 = Color3.fromRGB(25, 35, 30)
end)

FarmingBtn.MouseButton1Click:Connect(function()
	Label.Text = "Farming"
	ContentFrame.BackgroundColor3 = Color3.fromRGB(30, 50, 40)
end)

PlayerBtn.MouseButton1Click:Connect(function()
	Label.Text = "Player"
	ContentFrame.BackgroundColor3 = Color3.fromRGB(35, 40, 60)
end)

MiscBtn.MouseButton1Click:Connect(function()
	Label.Text = "Misc"
	ContentFrame.BackgroundColor3 = Color3.fromRGB(40, 50, 70)
end)

SettingsBtn.MouseButton1Click:Connect(function()
	Label.Text = "Settings"
	ContentFrame.BackgroundColor3 = Color3.fromRGB(50, 40, 40)
end)
