#magnet actionbar
execute at @s if entity @a[team=uRed,scores={engineermagtimer=2.., ability4=0}] run title @s actionbar [{"text":""},{"text":"Magnetization fading: ","color":"white"},{"score":{"name":"@a[team=uRed,scores={engineermagtimer=2..},limit=1,sort=nearest]","objective":"engineermagtimer"},"bold":true,"color":"red"}]
execute at @s if entity @a[team=uRed,scores={engineermagtimer=1, ability4=0}] run title @s actionbar {"text":"No enemies magnetized","color":"white"}

execute if entity @e[nbt={Item:{components:{"minecraft:custom_data":{enginedrug:1b,blue:1b}}}}] run function under_pack:engineer_functions/engineer_heal_blue

execute if score @s engineerhealbuffer matches 1 run function under_pack:engineer_functions/engineer_heal_burst_blue with storage engineer blue

execute if score @s engineerWallBuffer matches 0 run kill @e[type=marker,tag=enginewall,tag=blue]

execute as @a[team=uBlue,predicate=under_pack:engi_speed_check] at @s run particle dust{color:[1,0,0],scale:1} ~ ~1 ~ 0.3 0.6 0.3 0 12 force @s

execute if entity @a[team=uRed,tag=magneticblue] if score blue engineermagnet matches 2.. at @s run function under_pack:engineer_functions/engineer_magnet_tick_blue

execute if entity @a[team=uRed,gamemode=spectator,tag=magneticblue] run function under_pack:engineer_functions/engineer_magnet_reset

#wall delete blocks
execute at @s as @e[type=falling_block,tag=blue,tag=enginewall,dx=0,dy=0.7,dz=0] positioned ~-0.8 ~ ~-0.8 as @s[dx=0,dy=0.7,dz=0] run kill @s