execute if entity @s[tag=grabberred] run tp @e[tag=microride,tag=red] ~ ~ ~
execute if entity @s[tag=grabberred] run return run tag @s remove grabberred
tag @s add grabberred
scoreboard players reset @s reset