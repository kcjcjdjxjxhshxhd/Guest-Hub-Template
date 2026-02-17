local Dashboard = {}

function Dashboard:GetMostUsed(tbl)
	local best = "None"
	local highest = 0
	for name,count in pairs(tbl) do
		if count > highest then
			best = name
			highest = count
		end
	end
	return best
end

return Dashboard
