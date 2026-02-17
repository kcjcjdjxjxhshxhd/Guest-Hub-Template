local Systems = {}

local HttpService = game:GetService("HttpService")
local Stats = game:GetService("Stats")
local RunService = game:GetService("RunService")

Systems.StartTime = tick()
Systems.ScriptsExecuted = 0
Systems.LastScript = "None"
Systems.TotalExecuted = 0
Systems.ScriptUsage = {}

-- FPS
Systems.CurrentFPS = 60
task.spawn(function()
	local frames = 0
	local last = tick()
	RunService.RenderStepped:Connect(function()
		frames += 1
		if tick()-last >= 1 then
			Systems.CurrentFPS = frames
			frames = 0
			last = tick()
		end
	end)
end)

function Systems:GetPing()
	local ping = 0
	pcall(function()
		ping = math.floor(Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
	end)
	return ping
end

function Systems:GetSession()
	local t = math.floor(tick() - self.StartTime)
	return math.floor(t/60).."m "..(t%60).."s"
end

return Systems
