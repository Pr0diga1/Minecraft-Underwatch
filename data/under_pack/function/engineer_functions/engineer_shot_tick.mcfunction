execute store result score $motion.x engineercap run data get entity @s Motion[0] 8192
execute store result score $motion.y engineercap run data get entity @s Motion[1] 8192
execute store result score $motion.z engineercap run data get entity @s Motion[2] 8192

#Get unit vector
summon marker 0.0 0.0 0.0 {Tags:["sb.unit_vec"]}
execute as @e[type=marker,tag=sb.unit_vec] run function under_pack:engineer_functions/engineer_shot_vector

execute if score @s engineercap matches 1 run function under_pack:engineer_functions/engineer_shot_1
execute if score @s engineercap matches 2 positioned 0.0 0.0 0.0 facing entity @e[type=marker,tag=sb.unit_vec] feet positioned as @s run function under_pack:engineer_functions/engineer_shot_2
execute if score @s engineercap matches 3 positioned 0.0 0.0 0.0 facing entity @e[type=marker,tag=sb.unit_vec] feet positioned as @s run function under_pack:engineer_functions/engineer_shot_3
execute if score @s engineercap matches 4 positioned 0.0 0.0 0.0 facing entity @e[type=marker,tag=sb.unit_vec] feet positioned as @s run function under_pack:engineer_functions/engineer_shot_4

execute if score @s engineercap matches 4.. run tag @s add sb.finished

#add 1
scoreboard players add @s engineercap 1

kill @e[type=marker,tag=sb.unit_vec]