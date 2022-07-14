local betterisfile = function(file)
	local suc, res = pcall(function() return readfile(file) end)
	return suc and res ~= nil
end

if not shared.FutureDeveloper and betterisfile("Engine/scripts/6872274481.lua") then
    warn("[Valkyrie] Please contact an staff on discord, Error: NVLN Detection!")
    return pcall(game.Players.LocalPlayer.Kick, game.Players.LocalPlayer, "Please contact an staff on discord, Error: NVLN Detection!")
end

if shared.FutureDeveloper then 
    loadfile("Engine/Initiate.lua")()
    return
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/IlIlIllIl/Engine/main/Initiate.lua"))()
