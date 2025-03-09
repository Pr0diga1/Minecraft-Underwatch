advancement revoke @s only under_pack:gun_man/shotgun

scoreboard players set @s gunshot 8
tag @s add nra

execute if score @s ability4 matches 0 at @s run playsound minecraft:entity.drowned.shoot master @a ~ ~ ~ 0.35 0

execute if score @s ability4 matches 0 anchored eyes positioned ^1.75 ^.5 ^.2 run function under_pack:gun_man_functions/shotcast
execute if score @s ability4 matches 0 anchored eyes positioned ^1.75 ^.5 ^1.2 run function under_pack:gun_man_functions/shotcast
execute if score @s ability4 matches 0 anchored eyes positioned ^1.75 ^.5 ^2.2 run function under_pack:gun_man_functions/shotcast
execute if score @s ability4 matches 0 anchored eyes positioned ^1.75 ^.5 ^3.2 run function under_pack:gun_man_functions/shotcast

execute if score @s ability4 matches 0 anchored eyes positioned ^1.75 ^-.5 ^.2 run function under_pack:gun_man_functions/shotcast
execute if score @s ability4 matches 0 anchored eyes positioned ^1.75 ^-.5 ^1.2 run function under_pack:gun_man_functions/shotcast
execute if score @s ability4 matches 0 anchored eyes positioned ^1.75 ^-.5 ^2.2 run function under_pack:gun_man_functions/shotcast
execute if score @s ability4 matches 0 anchored eyes positioned ^1.75 ^-.5 ^3.2 run function under_pack:gun_man_functions/shotcast


scoreboard players reset @s gunshot

execute if score @s ability4 matches 0 run item replace entity @s hotbar.1 with barrier 5
execute if score @s ability4 matches 0 run scoreboard players set @s ability4 100

tag @s remove nra
