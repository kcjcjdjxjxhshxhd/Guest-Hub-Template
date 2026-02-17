local Core = loadstring(game:HttpGet("RAW_core"))()
local Systems = loadstring(game:HttpGet("RAW_systems"))()
local Music = loadstring(game:HttpGet("RAW_music"))()
local UI = loadstring(game:HttpGet("RAW_ui"))()

-- load music
Music:LoadDefault()

-- create hub
local hub = UI:CreateWindow("Doors Hub")

local tab = UI:AddTab("Main")
tab.Visible = true

UI:AddButton(tab,"Test",function()
	print("Executor:", Core:GetExecutor())
	print("FPS:", Systems.CurrentFPS)
end)
