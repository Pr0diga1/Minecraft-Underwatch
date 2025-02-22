#magnet actionbar
execute at @s if entity @a[team=uBlue,scores={engineermagtimer=2..}] run title @s actionbar [{"text":""},{"text":"Magnetization fading: ","color":"white"},{"score":{"name":"@a[team=uBlue,scores={engineermagtimer=2..},limit=1,sort=nearest]","objective":"engineermagtimer"},"bold":true,"color":"red"}]
execute at @s if entity @a[team=uBlue,scores={engineermagtimer=1}] run title @s actionbar {"text":"No enemies magnetized","color":"white"}

execute if entity @e[nbt={Item:{components:{"minecraft:custom_data":{enginedrug:1b,red:1b}}}}] run function under_pack:engineer_functions/engineer_heal_red

execute if score @s engineerhealbuffer matches 1 run function under_pack:engineer_functions/engineer_heal_burst_red with storage engineer red

execute if score @s engineerWallBuffer matches 0 run kill @e[type=marker,tag=enginewall,tag=red]

execute if score @s[scores={engineerTurretEye=49..}] engineerTurretEye = @s engineerTurretEyeBuffer at @e[type=marker,tag=redEngineerTurret] run function under_pack:engineer_functions/engineer_turret_build

execute at @e[type=marker,tag=redEngineerTurret] if entity @s[team=uRed,distance=4..] run function under_pack:engineer_functions/engineer_turret_reset

execute as @a[team=uRed,predicate=under_pack:engi_speed_check] at @s run particle dust{color:[1,0,0],scale:1} ~ ~1 ~ 0.3 0.6 0.3 0 12 force @s

execute if entity @a[team=uBlue,tag=magneticred] if score red engineermagnet matches 2.. at @s run function under_pack:engineer_functions/engineer_magnet_tick_red

execute if entity @a[team=uBlue,gamemode=spectator,tag=magneticred] run function under_pack:engineer_functions/engineer_magnet_reset
