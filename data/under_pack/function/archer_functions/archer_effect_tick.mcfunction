execute store result score $motion.x archerRay run data get entity @s Motion[0] 8192
execute store result score $motion.y archerRay run data get entity @s Motion[1] 8192
execute store result score $motion.z archerRay run data get entity @s Motion[2] 8192

#Get unit vector
summon marker 0.0 0.0 0.0 {Tags:["sb.unit_vec"]}
execute as @e[type=marker,tag=sb.unit_vec] run function under_pack:archer_functions/archer_effect_velo

execute if score @s archerRay matches 1 run function under_pack:archer_functions/archer_effect_1
execute if score @s archerRay matches 2 positioned 0.0 0.0 0.0 facing entity @e[type=marker,tag=sb.unit_vec] feet positioned as @s run function under_pack:archer_functions/archer_effect_2
execute if score @s archerRay matches 3 positioned 0.0 0.0 0.0 facing entity @e[type=marker,tag=sb.unit_vec] feet positioned as @s run function under_pack:archer_functions/archer_effect_3

execute if score @s archerRay matches 3.. run tag @s add sb.finished

#add 1
scoreboard players add @s archerRay 1

kill @e[type=marker,tag=sb.unit_vec]