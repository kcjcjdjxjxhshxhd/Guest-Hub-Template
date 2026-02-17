local Music = {}

function Music:GitAud(url,name)
	writefile(name..".mp3", game:HttpGet(url))
	return (getcustomasset or getsynasset)(name..".mp3")
end

function Music:Play(url,name)
	local s = Instance.new("Sound")
	s.SoundId = self:GitAud(url,name)
	s.Parent = workspace
	s.Looped = true
	s.Volume = 1
	return s
end

function Music:LoadDefault()
	self.Doors = self:Play("DOORS_URL","doors")
	self.Meta = self:Play("META_URL","meta")
	self.Forsaken = self:Play("FORSAKEN_URL","fors")
end

return Music
