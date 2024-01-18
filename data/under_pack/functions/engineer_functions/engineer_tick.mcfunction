#crossbow detection
execute if score @s ability1 matches 181 if entity @s[nbt=!{Inventory:[{id:"minecraft:crossbow",Slot:1b,tag:{Charged:1b}}]}] run function under_pack:engineer_functions/engineer_crossbow

#healies
function under_pack:engineer_functions/engineer_heal
kill @e[type=item,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{enginedrug:1b}}}]

#wrench
execute if score @s ability3 matches 1..81 run scoreboard players remove @s ability3 1

#eyes
#viagra
item replace entity @s[scores={ability5=200..}] hotbar.3 with ender_eye{CustomModelData:43,display:{Name:'{"text":"Viagra","color":"dark_red"}'},enginedrug:1b} 2
#wall
item replace entity @s hotbar.4 with ender_eye{CustomModelData:43,display:{Name:'{"text":"Wall","color":"gray"}'},enginewall:1b} 2
#turret
item replace entity @s[scores={ability7=300..}] hotbar.6 with ender_eye{CustomModelData:43,display:{Name:'{"text":"Turret","color":"dark_red"}'},enginedrug:1b} 2

#turret stuff
#summon the turret
execute as @s[team=uRed,scores={engineerTurretEye=73..}] if score @s engineerTurretEye = @s engineerTurretEyeBuffer if entity @e[type=marker,tag=redEngineerTurret] run function under_pack:engineer_functions/engineer_turret_build
execute as @s[team=uBlue,scores={engineerTurretEye=73..}] if score @s engineerTurretEye = @s engineerTurretEyeBuffer if entity @e[type=marker,tag=blueEngineerTurret] run function under_pack:engineer_functions/engineer_turret_build

#if the character stopped holding right click, reset the timer
execute if score @s[team=uRed] engineerTurretEye = @s engineerTurretEyeBuffer if score @s engineerTurretEye matches 1.. run kill @e[type=marker,tag=redEngineerTurret]
execute if score @s[team=uBlue] engineerTurretEye = @s engineerTurretEyeBuffer if score @s engineerTurretEye matches 1.. run kill @e[type=marker,tag=blueEngineerTurret]
execute if score @s engineerTurretEye = @s engineerTurretEyeBuffer run scoreboard players set @s engineerTurretEye 0
scoreboard players operation @s engineerTurretEyeBuffer = @s engineerTurretEye

#Viagra stuff
execute if score @s engineerViagraTimer = @s engineerViagraBuffer if score @s engineerViagraTimer matches 1.. run function under_pack:engineer_functions/engineer_drug_cast
execute if score @s engineerViagraTimer = @s engineerViagraBuffer run scoreboard players set @s engineerViagraTimer 0
scoreboard players operation @s engineerViagraBuffer = @s engineerViagraTimer

#remove 1 turret duration every tick
execute if score @s engineerTurretDuration matches 1.. run scoreboard players remove @s engineerTurretDuration 1
execute if score @s engineerTurretDuration matches 1 run function under_pack:engineer_functions/engineer_turret_destroy

execute if score @s[team=uRed] engineerTurretDuration matches 1.. run function under_pack:engineer_functions/engineer_turret_tick
execute if score @s[team=uBlue] engineerTurretDuration matches 1.. run function under_pack:engineer_functions/engineer_turret_tick

#give red particles to people with viagra
execute as @s[team=uRed] as @a[team=uRed,predicate=under_pack:engi_speed_check] at @s run particle dust 1 0 0 1 ~ ~1 ~ 0.3 0.6 0.3 0 12 force @s
execute as @s[team=uBlue] as @a[team=uBlue,predicate=under_pack:engi_speed_check] at @s run particle dust 1 0 0 1 ~ ~1 ~ 0.3 0.6 0.3 0 12 force @s

function under_pack:engineer_functions/engineer_cooldown

#set arrow damage
execute as @e[type=arrow,nbt={Color:16777001}] run data merge entity @s {damage:1.50d}

scoreboard players reset @s reset