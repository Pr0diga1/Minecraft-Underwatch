item replace entity @s hotbar.1 with barrier[custom_model_data=100] 1
execute as @s at @s run function under_pack:dark_soul_functions/humanity
scoreboard players set @s ability4 201
tag @s add dark_cooldown