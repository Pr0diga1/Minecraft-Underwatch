execute unless block ~ ~ ~ minecraft:air run function under_pack:lumberjack_functions/lumberjack_ult
scoreboard players remove @s ray_steps 1
execute if score @s ray_steps matches 1.. if score @s ray_success matches 0 positioned ^ ^ ^0.2 run function under_pack:lumberjack_functions/lumberjack_ray