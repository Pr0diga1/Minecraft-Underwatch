#particles
execute at @s run particle minecraft:smoke ~ ~1 ~ .3 .8 .3 0 10 force @a
execute at @s run particle minecraft:dust 1 0 1 1 ~ ~1 ~ .3 .8 .3 0 8 force @a

#dash cooldown
execute if score @s ability1 matches ..138 run scoreboard players set @s ability1 139
#removing ult countdown
scoreboard players remove @s ninjaUltTiming 1

#removing a level every second
execute if score @s ninjaUltTiming matches 140 run experience set @s 7 levels
execute if score @s ninjaUltTiming matches 120 run experience set @s 6 levels
execute if score @s ninjaUltTiming matches 100 run experience set @s 5 levels
execute if score @s ninjaUltTiming matches 80 run experience set @s 4 levels
execute if score @s ninjaUltTiming matches 60 run experience set @s 3 levels
execute if score @s ninjaUltTiming matches 40 run experience set @s 2 levels
execute if score @s ninjaUltTiming matches 20 run experience set @s 1 levels