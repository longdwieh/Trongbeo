local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/daucobonhi/UiRedzV5/refs/heads/main/DemoUi.lua"))();

   local Windows = redzlib:MakeWindow({
    Title = "TrongNguyen Hub",
    SubTitle = "Make",
    SaveFolder = "Blox Fruits.lua"
})
Windows:AddMinimizeButton({
  Button = { Image = "rbxassetid://111367887827717", BackgroundTransparency = 0 },
  Corner = { CornerRadius = UDim.new(0, 4) }
})

local Info = Windows:MakeTab({"Discord","Info"})
local Farm = Windows:MakeTab({"Tab Farming","Farm"})
