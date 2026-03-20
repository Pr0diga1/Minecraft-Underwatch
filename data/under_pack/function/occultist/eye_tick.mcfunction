execute unless block ~ ~ ~ #under_pack:non_solid run return run kill @s
execute if score @s ability1 matches 80.. run return run kill @s
execute if entity @s[tag=uBlue] positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=1,dy=1,dz=1,team=uRed] run return run function under_pack:occultist/eye_damage
execute if entity @s[tag=uRed] positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=1,dy=1,dz=1,team=uBlue] run return run function under_pack:occultist/eye_damage
scoreboard players add @s ability1 1


particle minecraft:falling_obsidian_tear ~ ~ ~ 0.2 0.2 0.2 1 1

tp ^ ^ ^0.5
