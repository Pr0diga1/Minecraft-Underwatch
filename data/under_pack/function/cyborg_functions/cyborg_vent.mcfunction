#cool down cyborg
execute if score @s cyborgcap matches 2.. run scoreboard players remove @s cyborgcap 3
execute if score @s cyborgcap matches 2.. run experience add @s -3 points
execute at @s run particle minecraft:smoke ~ ~.7 ~ .3 .6 .3 .1 2 force @a