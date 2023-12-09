scoreboard players set gun_hit buffer 0
scoreboard players set gun_distance buffer 0
execute as @s at @s run playsound minecraft:block.anvil.break master @s ~ ~ ~ 1
execute if score @s ability1 matches 0 run function under_pack:gun_man_functions/gun_ar_ray
scoreboard players set @s ability1 30 
