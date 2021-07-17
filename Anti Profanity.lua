if syn then
	local OldCall = nil
	OldCall = hookmetamethod(game, "__namecall", function(self, ...) -- synapse function
		local Method = string.lower(getnamecallmethod())
		local Args = {...}
		if Settings.Filter and Method == "fireserver" and self.IsA(self, "RemoteEvent") and tostring(self) == "SayMessageRequest" and Args[2] == "All" then
			for i = 1, #Settings.OffensiveWords do
				if string.match(Args[1]:lower(), Settings.OffensiveWords[i]) then
					Args[1] = string.gsub(Args[1]:lower(), Settings.OffensiveWords[i], Settings.CensorWord)
					Args[2] = "All"
				end
			end
			return OldCall(self, unpack(Args))
		end
		return OldCall(self, ...)
	end)
elseif not syn then
	local mt = getrawmetatable(game)
	local OldCall = nil
	OldCall = hookfunction(mt.__namecall, function(...) -- other exploits
		local Method = string.lower(getnamecallmethod())
		local self = ...
		local Args = {select(2, ...)}
		if Settings.Filter and Method == "fireserver" and self.IsA(self, "RemoteEvent") and tostring(self) == "SayMessageRequest" and Args[2] == "All" then
			for i = 1, #Settings.OffensiveWords do
				if string.match(Args[1]:lower(), Settings.OffensiveWords[i]) then
					Args[1] = string.gsub(Args[1]:lower(), Settings.OffensiveWords[i], Settings.CensorWord)
					Args[2] = "All"
				end
			end
			return OldCall(self, unpack(Args))
		end
		return OldCall(...)
	end)
end
