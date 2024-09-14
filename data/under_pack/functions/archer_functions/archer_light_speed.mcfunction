#x
execute store result score archerlightx buffer run data get entity @s Motion[0] 1000
execute at @s store result entity @s Motion[0] double 0.002 run scoreboard players get archerlightx buffer
#y
execute store result score archerlighty buffer run data get entity @s Motion[1] 1000
execute at @s store result entity @s Motion[1] double 0.002 run scoreboard players get archerlighty buffer
#z
execute store result score archerlightz buffer run data get entity @s Motion[2] 1000
execute at @s store result entity @s Motion[2] double 0.002 run scoreboard players get archerlightz buffer

data merge entity @s {Color:16719870}