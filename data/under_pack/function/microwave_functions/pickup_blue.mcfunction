execute if entity @s[tag=grabberblue] run tp @e[tag=microride,tag=blue] ~ ~ ~
execute if entity @s[tag=grabberblue] run return run tag @s remove grabberblue
tag @s add grabberblue
scoreboard players reset @s reset