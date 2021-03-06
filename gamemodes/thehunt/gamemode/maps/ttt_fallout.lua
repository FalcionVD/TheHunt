include( "basewaves.lua" )
CombineFirstWave = 7
CombineSecondWave = 15
CombineThirdWave = 15
CombineFourthWave = 15
CombineFifthWave = 20
CombineInfiniteWave = 20
DARKNESS = 3

MAP_PROPS = {"models/props_c17/oildrum001.mdl","",""}




zonescovered ={
Vector(-268.598877, -852.607239, 64.031250),
Vector(785.468140, 1082.210327, 64.031250),
Vector(-1525.935913, 419.007050 ,64.031250),
Vector(-685.128784, 462.698761, 64.031250),
Vector(-1121.879150, -896.488281, 64.031250),
Vector(-1656.822144, -425.087280, 64.031250),
Vector(-901.148926, 1378.361206, 64.031250),

}

SPECIALITEMPLACES = {}

ITEMPLACES ={
Vector(-768.822937, -1100.280884, -153.996948),
Vector(-806.619263, -1214.258545, 95.731735),
Vector(-1281.053467, -129.556610, 107.298103),
Vector(-1966.575317, -225.405731, 101.822296),

}

 
 
combinespawnzones = {

Vector(-1955.583130, -712.272705, 72.031250),
Vector(-2005.441772, 631.624451, 80.501854),
Vector(826.720764, 424.087891, 64.031250),
Vector(1398.549316, -1115.531616, 92.553925),
Vector(283.400360, -1877.980835, 64.031250),
Vector(-1388.968750, -1886.020508, 64.031250),

}





function GM:PlayerInitialSpawn(ply)
timer.Simple(2, function() ply:PrintMessage(HUD_PRINTTALK, "[Overwatch]: Protection team alert, evidence of anticivil activity in this community.") end )
timer.Simple(4, function() ply:PrintMessage(HUD_PRINTTALK, "[Overwatch]: Code: assemble, plan, contain.") end )
timer.Simple(10, function()ply:PrintMessage(HUD_PRINTTALK, "Type !help to see the game mechanics. ") end )

ply:SendLua("CLDARKNESS="..DARKNESS.."" )
end

function MapSetup()
--SpawnItem("item_healthcharger", Vector(-456.275421, 479.784363, -414.434113), Angle(-90.000, 90.000, 45.000) )
for k, v in pairs(ents.FindByClass("info_player_deathmatch")) do
print(v:GetClass())
v:Remove()
end
for k, v in pairs(ents.FindByClass("info_player_start")) do
print(v:GetClass())
v:Remove()
end

for k, v in pairs(ents.FindByClass("info_player_counterterrorist")) do
print(v:GetClass())
v:Remove()
end

for k, v in pairs(ents.FindByClass("info_player_terrorist")) do
print(v:GetClass())
v:Remove()
end

SpawnItem("info_player_start", Vector(-596.434753, -1080.971680, -170.446259)+Vector(0,0,-45), Angle(20,144,0))
SpawnItem("info_player_start", Vector(-592.727966, -854.056519, -168.595154)+Vector(0,0,-45), Angle(10,127,0))
SpawnItem("info_player_start", Vector(-844.508057, -1008.122559, -165.020630)+Vector(0,0,-45), Angle(20,9,0))
SpawnItem("info_player_start", Vector(164.938263, -1443.621338, 320.031250)+Vector(0,0,-45), Angle(0,0,0))
SpawnItem("info_player_start", Vector(354.959442, -1425.662720, 320.031250)+Vector(0,0,-45), Angle(0,-180,0))
SpawnItem("info_player_start", Vector(95.127441, 29.479046, 320.031250)+Vector(0,0,-45), Angle(0,-90,0))
--SpawnTurret(Vector(-491.003052, -1442.955566, -239.262634),Angle(0.397, 167.418, 0.522))


--if math.random(1,2) == 1 then
--SpawnTurret(Vector(-86.159615, -1113.844360, -223.263809),Angle(0.257, 92.666, 0.642))
--end
end

