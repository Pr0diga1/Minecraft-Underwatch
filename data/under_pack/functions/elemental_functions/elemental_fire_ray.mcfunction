#if it hits a block, indicate so
execute unless block ~ ~ ~ #under_pack:non_solid run scoreboard players set hit elementalFireTimer 1
#if it hits a player, run a function as that player
execute if score hit elementalFireTimer matches 0 if entity @s[team=uBlue] positioned ~ ~-.5 ~ as @a[dx=0,sort=nearest,team=uRed,tag=!elementalHit] at @s positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function under_pack:elemental_functions/elemental_fire_hit_by_ray
execute if score hit elementalFireTimer matches 0 if entity @s[team=uRed] positioned ~ ~-.5 ~ as @a[dx=0,sort=nearest,team=uBlue,tag=!elementalHit] at @s positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function under_pack:elemental_functions/elemental_fire_hit_by_ray
#add 1 to the distance
scoreboard players add distance elementalFireTimer 1
#check if it it once every 4 ticks
scoreboard players operation distanceBuffer elementalFireTimer = distance elementalFireTimer
scoreboard players operation distanceBuffer elementalFireTimer %= 4 num
#particles
execute if score distanceBuffer elementalFireTimer matches 0 run particle minecraft:flame ~ ~-.5 ~ .1 .1 .1 .01 1 force
execute if score distanceBuffer elementalFireTimer matches 0 run particle minecraft:smoke ~ ~-.5 ~ .1 .1 .1 .01 1 force
#rerun command
execute if score hit elementalFireTimer matches 0 if score distance elementalFireTimer matches ..35 positioned ^ ^ ^0.15 run function under_pack:elemental_functions/elemental_fire_ray