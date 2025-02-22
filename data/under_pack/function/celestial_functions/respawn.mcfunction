execute if entity @s[team=uRed] as @a[team=uRed] run attribute @s minecraft:max_absorption base set 0
execute if entity @s[team=uBlue] as @a[team=uBlue] run attribute @s minecraft:max_absorption base set 0
execute as @s[team=uRed] run scoreboard players reset @a[team=uRed] celeadjust
execute as @s[team=uBlue] run scoreboard players reset @a[team=uBlue] celeadjust
scoreboard players reset @s celetaken
execute if entity @s[team=uRed] run kill @e[tag=red,tag=celefull]
execute if entity @s[team=uBlue] run kill @e[tag=blue,tag=celefull]

execute if entity @s[team=uRed] run kill @e[tag=celetrack,tag=red]
execute if entity @s[team=uBlue] run kill @e[tag=celetrack,tag=blue]