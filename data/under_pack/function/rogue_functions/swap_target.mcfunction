scoreboard players reset hit buffer
scoreboard players reset distance buffer

tag @s add swap
execute anchored eyes positioned ^ ^ ^ run function under_pack:rogue_functions/raycast
execute at @a[tag=target] run particle dust{color:[0.0,0.0,1.0],scale:1} ~ ~3 ~ 0.3 0 0.3 0 20 force @s
execute as @a[tag=target] run title @s actionbar {"text":"Targeted by a rogue"}

scoreboard players reset @s reset