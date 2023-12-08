execute as @a at @s anchored eyes positioned ^ ^ ^.5 run function under_pack:gun_man_functions/gun_ar_particles
execute as @s at @s run playsound minecraft:block.anvil.break master @s ~ ~ ~ 1
execute as @s[team=uBlue,tag=gun] if score @s gun_ar_cd matches 1 run function gun_ar_ray
execute as @s[team=uRed,tag=gun] if score @s gun_ar_cd matches 1 run function gun_ar_ray