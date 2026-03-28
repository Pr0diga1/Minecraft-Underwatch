scoreboard players add @s ability2 200
experience add @s 200 points
execute if score @s ability2 matches 741.. run function under_pack:dark_soul_functions/max_points

particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.1 10
playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 0.2 0.5

scoreboard players reset @s ultKills