local GMonly = false;  --.xp works opens for GM

local xp1 = "xp 1"
local xp2 = "xp 2"
local xp3 = "xp 3"
local xp4 = "xp 4"
local xp5 = "xp 5"
local xp6 = "xp 6"
local xp7 = "xp 7"
local xp8 = "xp 8"
local xp9 = "xp 9"
local xp10 = "xp 10"
local xpq = "xp ?"

local function getPlayerCharacterGUID(player)
    query = CharDBQuery(string.format("SELECT guid FROM characters WHERE name='%s'", player:GetName()))

    if query then 
      local row = query:GetRow()

      return tonumber(row["guid"])
    end

    return nil
  end
  
 local function SKULY(eventid, delay, repeats, player)
 local mingmrank = 3
 local PUID = getPlayerCharacterGUID(player)
if (GMonly and player:GetGMRank() < mingmrank) then
	WorldDBExecute(string.format("DELETE FROM world.custom_xp WHERE CharID = %i", PUID))
	WorldDBExecute(string.format("INSERT INTO world.custom_xp VALUES (%i, %i)", PUID, 1))
	else
    player:SendBroadcastMessage("|cff3399FF You can change your XP by typing |cff00cc00 .xp 1-10 |cff3399FF in chat.")
	player:SendBroadcastMessage("|cff3399FF You can check your curent XP rate by typing |cff00cc00 .xp ? |cff3399FF in chat.")
	end
end

local function OnLogin(event, player)
	player:RegisterEvent(SKULY, 10000, 1, player)
	
end 
  
  


local function SetRate(event, player, msg, lang, type)
local PUID = getPlayerCharacterGUID(player)
local Q = WorldDBQuery(string.format("SELECT * FROM world.custom_xp WHERE CharID=%i", PUID))
local mingmrank = 3

		if (GMonly and player:GetGMRank() < mingmrank) then
		WorldDBExecute(string.format("DELETE FROM world.custom_xp WHERE CharID = %i", PUID))
		WorldDBExecute(string.format("INSERT INTO world.custom_xp VALUES (%i, %i)", PUID, 1))
		player:SendBroadcastMessage("|cff5af304Only a GM can use this command.|r")
		return false
		else
		if msg == xp1 then

WorldDBExecute(string.format("DELETE FROM world.custom_xp WHERE CharID = %i", PUID))
WorldDBExecute(string.format("INSERT INTO world.custom_xp VALUES (%i, %i)", PUID, 1))
player:SendBroadcastMessage("|cff5af304You changed your XP rate to 1x|r")
return false
end

if msg == xp2 then
WorldDBExecute(string.format("DELETE FROM world.custom_xp WHERE CharID = %i", PUID))
WorldDBExecute(string.format("INSERT INTO world.custom_xp VALUES (%i, %i)", PUID, 2))
player:SendBroadcastMessage("|cff5af304You changed your XP rate to 2x|r")
return false
end

if msg == xp3 then
WorldDBExecute(string.format("DELETE FROM world.custom_xp WHERE CharID = %i", PUID))
WorldDBExecute(string.format("INSERT INTO world.custom_xp VALUES (%i, %i)", PUID, 3))
player:SendBroadcastMessage("|cff5af304You changed your XP rate to 3x|r")
return false
end

if msg == xp4 then
WorldDBExecute(string.format("DELETE FROM world.custom_xp WHERE CharID = %i", PUID))
WorldDBExecute(string.format("INSERT INTO world.custom_xp VALUES (%i, %i)", PUID, 4))
player:SendBroadcastMessage("|cff5af304You changed your XP rate to 4x|r")
return false
end

if msg == xp5 then
WorldDBExecute(string.format("DELETE FROM world.custom_xp WHERE CharID = %i", PUID))
WorldDBExecute(string.format("INSERT INTO world.custom_xp VALUES (%i, %i)", PUID, 5))
player:SendBroadcastMessage("|cff5af304You changed your XP rate to 5x|r")
return false
end

if msg == xp6 then
WorldDBExecute(string.format("DELETE FROM world.custom_xp WHERE CharID = %i", PUID))
WorldDBExecute(string.format("INSERT INTO world.custom_xp VALUES (%i, %i)", PUID, 6))
player:SendBroadcastMessage("|cff5af304You changed your XP rate to 6x|r")
return false
end

if msg == xp7 then
WorldDBExecute(string.format("DELETE FROM world.custom_xp WHERE CharID = %i", PUID))
WorldDBExecute(string.format("INSERT INTO world.custom_xp VALUES (%i, %i)", PUID, 7))
player:SendBroadcastMessage("|cff5af304You changed your XP rate to 7x|r")
return false
end

if msg == xp8 then
WorldDBExecute(string.format("DELETE FROM world.custom_xp WHERE CharID = %i", PUID))
WorldDBExecute(string.format("INSERT INTO world.custom_xp VALUES (%i, %i)", PUID, 8))
player:SendBroadcastMessage("|cff5af304You changed your XP rate to 8x|r")
return false
end

if msg == xp9 then
WorldDBExecute(string.format("DELETE FROM world.custom_xp WHERE CharID = %i", PUID))
WorldDBExecute(string.format("INSERT INTO world.custom_xp VALUES (%i, %i)", PUID, 9))
player:SendBroadcastMessage("|cff5af304You changed your XP rate to 9x|r")
return false
end

if msg == xp10 then
WorldDBExecute(string.format("DELETE FROM world.custom_xp WHERE CharID = %i", PUID))
WorldDBExecute(string.format("INSERT INTO world.custom_xp VALUES (%i, %i)", PUID, 10))
player:SendBroadcastMessage("|cff5af304You changed your XP rate to 10x|r")
return false
end

if msg == xpq then


if Q then
local CharID, Rate = Q:GetUInt32(0), Q:GetUInt32(1)
 player:SendBroadcastMessage(string.format("|cff5af304Your XP rate is curently set to %ix|r", Rate))
 return false
 else 
 player:SendBroadcastMessage(string.format("|cff5af304You haven't set a custom rate yet.|r"))
 return false

end




end


		return false
	end


end
	



local function OnXP(event, player, amount, victim)
local PUID = getPlayerCharacterGUID(player)
local Q = WorldDBQuery(string.format("SELECT * FROM world.custom_xp WHERE CharID=%i", PUID))
local mingmrank = 3
if (GMonly and player:GetGMRank() < mingmrank) then
WorldDBExecute(string.format("DELETE FROM world.custom_xp WHERE CharID = %i", PUID))
WorldDBExecute(string.format("INSERT INTO world.custom_xp VALUES (%i, %i)", PUID, 1))
end

if Q then
local CharID, Rate = Q:GetUInt32(0), Q:GetUInt32(1)
 --print(CharID, Rate)
 
local givexp = amount * Rate
return givexp
else
return amount

end




end


RegisterPlayerEvent(3, OnLogin)
RegisterPlayerEvent(12, OnXP)
RegisterPlayerEvent(42, SetRate)