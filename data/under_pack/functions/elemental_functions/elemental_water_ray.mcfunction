#if it hits a block, indicate so
execute unless block ~ ~ ~ #under_pack:non_solid run function under_pack:elemental_functions/elemental_water_hit
#add 1 to the distance
scoreboard players add distance elementalWaterState 1
#rerun command
execute if score hit elementalWaterState matches 0 if score distance elementalWaterState matches ..100 positioned ^ ^ ^0.4 run function under_pack:elemental_functions/elemental_water_ray