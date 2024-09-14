#particles
execute at @s run particle minecraft:block stone ~ ~.7 ~ .3 .5 .3 0 15 force @a
execute at @s run particle minecraft:block grass_block ~ ~.7 ~ .3 .5 .3 0 15 force @a

#ability 1 stays at 0
scoreboard players set @s ability1 0
#actionbar
title @s actionbar {"text": "CAN I AXE YOU A QUESTION","color": "red"}

#hit ground
execute as @s[nbt={OnGround:1b}] at @s run function under_pack:lumberjack_functions/lumberjack_throw_ground