#magnet actionbar
execute at @s if entity @a[team=uRed,scores={engineermagtimer=2..}] run title @s actionbar [{"text":""},{"text":"Magnetization fading: ","color":"white"},{"score":{"name":"@a[team=uRed,scores={engineermagtimer=2..},limit=1,sort=nearest]","objective":"engineermagtimer"},"bold":true,"color":"red"}]
execute at @s if entity @a[team=uRed,scores={engineermagtimer=1}] run title @s actionbar {"text":"No enemies magnetized","color":"white"}

execute if entity @e[nbt={Item:{components:{"minecraft:custom_data":{enginedrug:1b,blue:1b}}}}] run function under_pack:engineer_functions/engineer_heal_blue

execute if score @s engineerhealbuffer matches 1 run function under_pack:engineer_functions/engineer_heal_burst_blue with storage engineer blue

execute if score @s engineerWallBuffer matches 0 run kill @e[type=marker,tag=enginewall,tag=blue]

execute if score @s[scores={engineerTurretEye=49..}] engineerTurretEye = @s engineerTurretEyeBuffer at @e[type=marker,tag=blueEngineerTurret] run function under_pack:engineer_functions/engineer_turret_build

execute at @e[type=marker,tag=blueEngineerTurret] if entity @s[team=uBlue,distance=4..] run function under_pack:engineer_functions/engineer_turret_reset

execute as @a[team=uBlue,predicate=under_pack:engi_speed_check] at @s run particle dust{color:[1,0,0],scale:1} ~ ~1 ~ 0.3 0.6 0.3 0 12 force @s

execute if entity @a[team=uRed,tag=magneticblue] if score blue engineermagnet matches 2.. at @s run function under_pack:engineer_functions/engineer_magnet_tick_blue

execute if entity @a[team=uRed,gamemode=spectator,tag=magneticblue] run function under_pack:engineer_functions/engineer_magnet_reset
