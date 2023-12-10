scoreboard players set gun_hit buffer 0
scoreboard players set gun_distance buffer 0
execute if score @s ability1 matches 0 anchored eyes run function under_pack:gun_man_functions/gun_ar_ray
playsound entity.firework_rocket.large_blast master @s ~ ~ ~ 
scoreboard players set @s ability1 7 
