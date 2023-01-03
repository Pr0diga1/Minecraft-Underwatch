clear @s
tag @s remove ungame
gamemode adventure @s
spawnpoint @s -26 46 24
scoreboard players reset @s Kills
effect clear @s
effect give @s minecraft:saturation 99999 255 true
team join white @s
scoreboard players set @s class 0
tp @s -26 46 24
scoreboard players set @s Reset 0

#removes xp
experience set @s 0 levels
experience set @s 0 points