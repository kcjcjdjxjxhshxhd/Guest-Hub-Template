-- SERVICES
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local Core = {}

-- EXECUTOR DETECT
function Core:GetExecutor()
	if identifyexecutor then
		return identifyexecutor()
	end
	if getexecutorname then
		return getexecutorname()
	end
	if syn then return "Synapse X" end
	if fluxus then return "Fluxus" end
	if KRNL_LOADED then return "KRNL" end
	if delta or (getgenv and getgenv().Delta) then return "Delta" end
	if HIDDEN_HYDROGEN then return "Hydrogen" end
	if arceus then return "Arceus X" end
	return "Unknown"
end

-- TIER SYSTEM
Core.OWNER_IDS = {7993539897,3055482734}
Core.ADMIN_IDS = {111111111,222222222}

function Core:GetTier(plr)
	for _,id in pairs(self.OWNER_IDS) do
		if plr.UserId == id then return "Owner" end
	end
	for _,id in pairs(self.ADMIN_IDS) do
		if plr.UserId == id then return "Admin" end
	end
	return "Member"
end

return Core
