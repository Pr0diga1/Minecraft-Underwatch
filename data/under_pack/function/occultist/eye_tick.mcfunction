execute unless block ~ ~ ~ #under_pack:non_solid run return run kill @s
execute if score @s ability1 matches 80.. run return run kill @s
execute if entity @s[tag=uRed] positioned ~-.1 ~-.1 ~-.1 as @a[dx=0,team=uBlue] at @s positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] run return run function under_pack:occultist/eye_damage
execute if entity @s[tag=uBlue] positioned ~-.1 ~-.1 ~-.1 as @a[dx=0,team=uRed] at @s positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] run return run function under_pack:occultist/eye_damage

scoreboard players add @s ability1 1


particle minecraft:falling_obsidian_tear ~ ~ ~ 0.2 0.2 0.2 1 1
particle minecraft:dragon_breath ~ ~ ~ 0.2 0.2 0.2 .1 3


tp ^ ^ ^0.5
