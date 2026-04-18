execute if score @s class matches 4 run effect give @s resistance 1 2 true
execute at @s run particle minecraft:glow ~ ~.7 ~ .3 .5 .3 .001 10 force @a

execute if score @s blockIsActive matches ..1 run scoreboard players add @s blockIsActive 1

execute if score @s ability2 matches 7.. run experience add @s -7 points
execute if score @s ability2 matches 7.. run scoreboard players remove @s ability2 7

advancement revoke @s only under_pack:dark_soul/paladin2