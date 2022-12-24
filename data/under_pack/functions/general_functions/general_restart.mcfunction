clear @s
tag @s remove ungame
gamemode adventure @s
spawnpoint @s -50 53 94
scoreboard players reset @s Kills
effect clear @s
effect give @s minecraft:saturation 99999 255 true
team join white @s
scoreboard players set @s class 0
tp @s -50 53 94
function oneshot_pack:general_functions/get_book
scoreboard players set @s Reset 0