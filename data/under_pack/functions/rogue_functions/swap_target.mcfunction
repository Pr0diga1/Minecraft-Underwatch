scoreboard players set hit buffer 0
scoreboard players set distance buffer 0

tag @s add swap
execute anchored eyes positioned ^ ^ ^ run function under_pack:rogue_functions/raycast
execute at @a[tag=target] run particle dust 0 0 1 1 ~ ~3 ~ 0.3 0 0.3 0 20 force @s
execute as @a[tag=target] run title @s actionbar {"text":"Targeted by a rogue"}

scoreboard players reset @s reset