execute unless block ~ ~ ~ minecraft:air if score @s lumberjack_ult_casts matches 3 run function under_pack:lumberjack_functions/lumberjack_ult
execute unless block ~ ~ ~ minecraft:air if score @s lumberjack_ult_casts matches 2 run function under_pack:lumberjack_functions/lumberjack_ult2
execute unless block ~ ~ ~ minecraft:air if score @s lumberjack_ult_casts matches 1 run function under_pack:lumberjack_functions/lumberjack_ult3
scoreboard players remove @s ray_steps 1
execute if score @s ray_steps matches 1.. if score @s ray_success matches 0 positioned ^ ^ ^0.2 run function under_pack:lumberjack_functions/lumberjack_ray