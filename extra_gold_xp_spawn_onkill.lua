local enabled = true --disable script
local xp1 = 290 -- 1-19
local xp2 = 395 -- 20-29
local xp3 = 478 -- 30-39
local xp4 = 652 -- 40-49
local xp5 = 825 -- 50-59
local xp6 = 1500 -- 60-69
local xp7 = 2000 -- 70-79

function OnCreatureKill(event, killer, killed)
local plevel = killer:GetLevel()
local creatureentry = killed:GetEntry()
local creaturename = killed:GetName()
local gold = 10000
local Map = killer:GetMap()
local inDungeon = Map:IsDungeon()
local name = killer:GetName()



local number = math.random(1, 20)
if not inDungeon then
	local x = killed:GetX()
	local y = killed:GetY()
	local z = killed:GetZ()
	local o = killed:GetO()
	local spawnedCreature
	
	local spawnlevel = plevel+1
	
	if number == 4 then
	spawnedCreature = killed:SpawnCreature( creatureentry, x+1, y+1, z+0.5, o-3.5, 7 )
	spawnedCreature:SetLevel( spawnlevel )
	end
	if number == 7 then
	spawnedCreature = killed:SpawnCreature( creatureentry, x+1, y+1, z+0.5, o-3.5, 7 )
	spawnedCreature:SetLevel( spawnlevel )
	spawnedCreature = killed:SpawnCreature( creatureentry, x+2, y+2, z+0.5, o-3.5, 7 )
	spawnedCreature:SetLevel( spawnlevel )

	end
	if number == 9 then
	spawnedCreature = killed:SpawnCreature( creatureentry, x+1, y+1, z+0.5, o-3.5, 7 )
	spawnedCreature:SetLevel( spawnlevel )
	spawnedCreature = killed:SpawnCreature( creatureentry, x+2, y+2, z+0.5, o-3.5, 7 )
	spawnedCreature:SetLevel( spawnlevel )
	spawnedCreature = killed:SpawnCreature( creatureentry, x+3, y+3, z+0.5, o-3.5, 7 )
	spawnedCreature:SetLevel( spawnlevel )
	end
	

if number == 2 then
killer:ModifyMoney( gold*1 )
killer:SendBroadcastMessage("|cff5af304You recieved an extra 1 gold from killing " ..creaturename.."|r")
end

if number == 6 then
killer:ModifyMoney( gold*2 )
killer:SendBroadcastMessage("|cff5af304You recieved an extra 2 gold from killing " ..creaturename.."|r")
end


if number == 8 then
killer:ModifyMoney( gold*3 )
killer:SendBroadcastMessage("|cff5af304You recieved an extra 3 gold from killing " ..creaturename.."|r")
end

if number == 3 then
	if plevel <= 19 then
	bonus1 = xp1*plevel
	killer:GiveXP( bonus1 )
	killer:SendBroadcastMessage("|cff5af304You recieved an extra " ..bonus1..  "xp from killing " ..creaturename.."|r")
	end
	if plevel >= 20 and plevel <= 29 then
	bonus2 = xp2*plevel
	killer:GiveXP( bonus2 )
	killer:SendBroadcastMessage("|cff5af304You recieved an extra " ..bonus2..  "xp from killing " ..creaturename.."|r")
	end
	if plevel >= 30 and plevel <= 39 then
	bonus3 = xp3*plevel
	killer:GiveXP( bonus3 )
	killer:SendBroadcastMessage("|cff5af304You recieved an extra " ..bonus3..  "xp from killing " ..creaturename.."|r")
	end
	if plevel >= 40 and plevel <= 49 then
	bonus4 = xp4*plevel
	killer:GiveXP( bonus4 )
	killer:SendBroadcastMessage("|cff5af304You recieved an extra " ..bonus4..  "xp from killing " ..creaturename.."|r")
	end
	if plevel >= 50 and plevel <= 59 then
	bonus5 = xp15*plevel
	killer:GiveXP( bonus5 )
	killer:SendBroadcastMessage("|cff5af304You recieved an extra " ..bonus5..  "xp from killing " ..creaturename.."|r")
	end
	if plevel >= 60 and plevel <= 69 then
	bonus16 = xp6*plevel
	killer:GiveXP( bonus6 )
	killer:SendBroadcastMessage("|cff5af304You recieved an extra " ..bonus6..  "xp from killing " ..creaturename.."|r")
	end
	if plevel >= 70 and plevel <= 79 then
	bonus7 = xp7*plevel
	killer:GiveXP( bonus7 )
	killer:SendBroadcastMessage("|cff5af304You recieved an extra " ..bonus7..  "xp from killing " ..creaturename.."|r")
	end
	
end

if number == 12 then
killer:ModifyMoney( -gold*10 )
killer:SendBroadcastMessage("|cff5af304You lost 10 gold.|r")
end



end

   
	


end
















if enabled then
RegisterPlayerEvent(7, OnCreatureKill)
end