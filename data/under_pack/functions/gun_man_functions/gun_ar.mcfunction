execute as @s at @s run playsound minecraft:block.anvil.break master @s ~ ~ ~ 1

execute if score @s gun_ar_cd matches 0 run function under_pack:gun_man_functions/gun_ar_ray
scoreboard players set @s gun_ar_cd 30 
