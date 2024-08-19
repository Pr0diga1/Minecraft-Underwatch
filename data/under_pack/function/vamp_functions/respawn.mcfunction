experience set @s 100 levels
experience set @s 0 points
scoreboard players reset @s vampblood
execute if entity @s[team=uRed] as @a[tag=taintedred] run function under_pack:vamp_functions/taint_reset
execute if entity @s[team=uBlue] as @a[tag=taintedblue] run function under_pack:vamp_functions/taint_reset