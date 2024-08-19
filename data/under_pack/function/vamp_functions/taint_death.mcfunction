execute if entity @s[team=uBlue] as @a[tag=taintedblue] run scoreboard players reset @s vamptaint
execute if entity @s[team=uRed] as @a[tag=taintedred] run scoreboard players reset @s vamptaint
execute if entity @s[team=uBlue] run tag @a remove taintedblue
execute if entity @s[team=uRed] run tag @a remove taintedred
scoreboard players add @s vampblood 371
experience add @s 371 points
