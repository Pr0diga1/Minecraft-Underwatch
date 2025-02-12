execute if entity @s[team=uBlue] as @a[tag=taintedblue] run function under_pack:vamp_functions/taint_reset
execute if entity @s[team=uRed] as @a[tag=taintedred] run function under_pack:vamp_functions/taint_reset
scoreboard players add @s vampblood 371
experience add @s 371 points
