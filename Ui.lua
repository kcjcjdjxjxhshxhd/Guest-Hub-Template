local UI = {}
local Players = game:GetService("Players")

function UI:CreateWindow(title)
	local plr = Players.LocalPlayer

	local gui = Instance.new("ScreenGui", plr.PlayerGui)
	gui.Name = "DoorsHub"

	local main = Instance.new("Frame", gui)
	main.Size = UDim2.fromOffset(520,380)
	main.Position = UDim2.fromScale(0.5,0.5)
	main.AnchorPoint = Vector2.new(0.5,0.5)

	self.Main = main
	self.Tabs = {}

	return main
end

function UI:AddTab(name)
	local tab = Instance.new("Frame", self.Main)
	tab.Size = UDim2.fromScale(1,1)
	tab.Visible = false
	self.Tabs[name] = tab
	return tab
end

function UI:AddButton(tab,text,callback)
	local btn = Instance.new("TextButton", tab)
	btn.Size = UDim2.fromOffset(200,40)
	btn.Text = text
	btn.MouseButton1Click:Connect(callback)
end

return UI
