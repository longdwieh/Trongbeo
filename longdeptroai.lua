local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/daucobonhi/UiRedzV5/refs/heads/main/DemoUi.lua"))();

   local Windows = redzlib:MakeWindow({
    Title = "TrongNguyen Hub",
    SubTitle = "Make",
    SaveFolder = "Blox Fruits.lua"
})
Windows:AddMinimizeButton({
  Button = { Image = "rbxassetid://131151731604309", BackgroundTransparency = 0 },
  Corner = { CornerRadius = UDim.new(0, 6) }
})

local Tabs = {
Main = Window:AddTab({Title = "Tab Farming", Icon = "Home"}),
Settings = Window:AddTab({Title = "Tab Local player", Icon = "setting"}),
Prehistoric = Window:AddTab({Title = "Tab Prehistoric Event", Icon = "tent"}),
SeaEvent = Window:AddTab({Title = "Tab Sea Event", Icon = "anchor"}),
Dragon = Window:AddTab({Title = "Tab Dragon Dojo", Icon = "layers"}),
Mirage = Window:AddTab({Title = "Tab Race V4", Icon = "flag"}),
Melee = Window:AddTab({Title = "Tab Get Item", Icon = "loader"}),
Quests = Window:AddTab({Title = Tab Farming Oder", Icon = "sword"}),
