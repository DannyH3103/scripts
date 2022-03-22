-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local TextButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui

ScrollingFrame.Parent = ScreenGui
ScrollingFrame.Active = true
ScrollingFrame.AnchorPoint = Vector2.new(1, 0.5)
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Position = UDim2.new(1, 0, 0.498363495, 0)
ScrollingFrame.ScrollBarImageColor3 = Color3.new(0, 0, 0)
ScrollingFrame.Size = UDim2.new(0, 242, 0, 472)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 25, 0)

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

TextButton.Size = UDim2.new(0, 229, 0, 17)
TextButton.TextScaled = true

for _,place in pairs(game:GetService("AssetService"):GetGamePlacesAsync():GetCurrentPage()) do
	local newbutton = TextButton:Clone()
	newbutton.MouseButton1Down:Connect(function()game:GetService("TeleportService"):Teleport(place.PlaceId)end)
	newbutton.Text = place.Name
	newbutton.Parent = ScrollingFrame
end
