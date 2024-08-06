#healies
function under_pack:engineer_functions/engineer_heal
kill @e[type=item,nbt={Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_data":{enginedrug:1b}}}}]

#wrench
execute if score @s ability3 matches 1..161 run scoreboard players remove @s ability3 1

#eyes
#viagra
item replace entity @s[scores={ability5=200..}] hotbar.3 with ender_eye[custom_name='{"color":"dark_red","text":"Viagra"}',custom_model_data=43,custom_data={enginedrug:1b}] 2

#wall
item replace entity @s[scores={ability1=0}] hotbar.4 with ender_eye[custom_name='{"color":"gray","text":"Wall"}',custom_model_data=43,custom_data={enginewall:1b}] 2

#turret
item replace entity @s[scores={ability7=300..}] hotbar.6 with ender_eye[custom_name='{"color":"dark_red","text":"Turret"}',custom_model_data=43,custom_data={enginedrug:1b}] 2

#wall stuff
execute if score @s engineerWallBuffer matches 1.. run scoreboard players remove @s engineerWallBuffer 1
execute if score @s[team=uBlue] engineerWallBuffer matches 0 run kill @e[type=marker,tag=enginewall,tag=blue]
execute if score @s[team=uRed] engineerWallBuffer matches 0 run kill @e[type=marker,tag=enginewall,tag=red]
execute if score @s engineerWallBuffer matches 0 run scoreboard players set @s engineerWallEye 1
execute if score @s engineerWallBuffer matches 0 if score @s ability1 matches 0 run scoreboard players set @s ability1 121
execute if score @s ability1 matches 1..121 run scoreboard players remove @s ability1 1

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
execute as @s[team=uRed] as @a[team=uRed,predicate=under_pack:engi_speed_check] at @s run particle dust{color:[1,0,0],scale:1} ~ ~1 ~ 0.3 0.6 0.3 0 12 force @s
execute as @s[team=uBlue] as @a[team=uBlue,predicate=under_pack:engi_speed_check] at @s run particle dust{color:[1,0,0],scale:1} ~ ~1 ~ 0.3 0.6 0.3 0 12 force @s

#runs the magnet tick
execute if entity @s[team=uRed] if entity @a[team=uBlue,tag=magneticred] if score red engineermagnet matches 2.. run function under_pack:engineer_functions/engineer_magnet_tick_red
execute if entity @s[team=uBlue] if entity @a[team=uRed,tag=magneticblue] if score blue engineermagnet matches 2.. run function under_pack:engineer_functions/engineer_magnet_tick_blue

#magnet reset detection
execute if entity @s[nbt={Inventory:[{Slot:7b,components:{"minecraft:custom_data":{enginemag:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{enginemag:1b}}}},scores={reset=1..}] as @s run function under_pack:engineer_functions/engineer_magnet_reset

function under_pack:engineer_functions/engineer_cooldown

#set arrow damage
execute as @e[nbt={Color:16777001}] run data merge entity @s {damage:1.50d}

scoreboard players reset @s reset