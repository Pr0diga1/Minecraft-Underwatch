scoreboard players remove @s ability1 1
execute if score @s ability1 matches 41 run experience set @s 0 points
execute if score @s ability1 matches 1..41 run experience add @s 18 points