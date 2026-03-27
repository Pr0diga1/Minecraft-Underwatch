scoreboard players add @s ability2 400
experience add @s 400 points
execute if score @s ability2 matches 741.. run function under_pack:dark_soul_functions/max_points

particle minecraft:flame ~ ~1 ~ 0 0 0 0.5 50
playsound minecraft:item.mace.smash_ground_heavy master @a ~ ~ ~ 0.5 0.5

tag @s add parried