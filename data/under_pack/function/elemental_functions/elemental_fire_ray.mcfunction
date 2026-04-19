#if it hits a block, indicate so
execute unless block ~ ~ ~ #under_pack:non_solid run return fail
#if it hits a player, run a function as that player
execute if entity @s[team=uBlue] positioned ~ ~-.5 ~ as @a[dx=0,sort=nearest,team=uRed,tag=!elementalHit] at @s positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function under_pack:elemental_functions/elemental_fire_hit_by_ray
execute if entity @s[team=uRed] positioned ~ ~-.5 ~ as @a[dx=0,sort=nearest,team=uBlue,tag=!elementalHit] at @s positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function under_pack:elemental_functions/elemental_fire_hit_by_ray

#add 1 to the distance
scoreboard players add distance elementalFireTimer 1
#rerun command
execute if score distance elementalFireTimer matches ..35 positioned ^ ^ ^0.15 run function under_pack:elemental_functions/elemental_fire_ray