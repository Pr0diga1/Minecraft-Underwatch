#if it hits a block, indicate so
execute unless block ~ ~ ~ #under_pack:non_solid run scoreboard players set hit ninjaRay 1
#if it hits a player, run a function as that player
execute if score @s ability1 matches 80.. if score hit ninjaRay matches 0 if entity @s[team=uBlue] positioned ~-0.32 ~-.8 ~-0.32 as @a[tag=!dashing,dx=0,sort=nearest,team=uRed,tag=!ninjaHit] at @s positioned ~-0.68 ~-.8 ~-0.68 if entity @s[dx=0] run function under_pack:ninja_functions/ninja_hitbydash
execute if score @s ability1 matches 80.. if score hit ninjaRay matches 0 if entity @s[team=uRed] positioned ~-0.32 ~-.8 ~-0.32 as @a[tag=!dashing,dx=0,sort=nearest,team=uBlue,tag=!ninjaHit] at @s positioned ~-0.68 ~-.8 ~-0.68 if entity @s[dx=0] run function under_pack:ninja_functions/ninja_hitbydash
#add 1 to the distance
scoreboard players remove distance ninjaRay 1
#particles
execute if block ~ ~ ~ #under_pack:non_solid run particle minecraft:smoke ~ ~ ~ 0.4 0.4 0.4 0 22
execute if block ~ ~ ~ #under_pack:non_solid if score @s ability1 matches 80.. run particle minecraft:dust 1 0 1 1 ~ ~ ~ 0.4 0.4 0.4 0 16
#teleport
execute if score hit ninjaRay matches 1 run tp @s ^ ^ ^-0.4
execute if score distance ninjaRay matches 0 run tp @s ^ ^ ^
#rerun command
execute if score hit ninjaRay matches 0 if score distance ninjaRay matches 1.. positioned ^ ^ ^0.1 run function under_pack:ninja_functions/ninja_ray