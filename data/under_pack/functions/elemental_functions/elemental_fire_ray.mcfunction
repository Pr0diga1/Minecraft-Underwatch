#if it hits a block, indicate so
execute unless block ~ ~ ~ #under_pack:non_solid run scoreboard players set hit elementalFireTimer 1
#if it hits a player, run a function as that player
execute if score hit elementalFireTimer matches 0 if entity @s[team=uBlue] positioned ~ ~-.5 ~ as @a[dx=0,sort=nearest,team=uRed] at @s positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add elementalBlueMarked
execute if score hit elementalFireTimer matches 0 if entity @s[team=uRed] positioned ~ ~-.5 ~ as @a[dx=0,sort=nearest,team=uBlue] at @s positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add elementalRedMarked
#add 1 to the distance
scoreboard players add distance elementalFireTimer 1
#particles
execute if block ~ ~ ~ #under_pack:non_solid run particle minecraft:flame ~ ~-.5 ~ .1 .1 .1 .01 1 force
execute if block ~ ~ ~ #under_pack:non_solid run particle minecraft:smoke ~ ~-.5 ~ .1 .1 .1 .01 1 force
#rerun command
execute if score hit elementalFireTimer matches 0 if score distance elementalFireTimer matches ..27 positioned ^ ^ ^0.15 run function under_pack:elemental_functions/elemental_fire_ray