#if it hits a block, indicate so
execute unless block ~ ~ ~ #under_pack:non_solid run scoreboard players set hit archerRay 1
#add 1 to the distance
scoreboard players add distance archerRay 1
#particles
execute if block ~ ~ ~ #under_pack:non_solid run particle minecraft:dust 0 0.369 0.02 1 ~ ~ ~ 0.4 0.4 0.4 0 5
#teleport
execute if score hit archerRay matches 1 run tp @s ^ ^ ^0.4
execute if score distance archerRay matches 40 run tp @s ^ ^ ^0.2
#rerun command
execute if score hit archerRay matches 0 if score distance archerRay matches ..39 positioned ^ ^ ^-0.1 run function under_pack:archer_functions/archer_backstep_ray