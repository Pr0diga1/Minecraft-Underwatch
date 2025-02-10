#remove 1
scoreboard players remove @s cyborgzaptimer 1

#sdfasdf
execute at @a[scores={hitByFreeze=1..}] run particle minecraft:electric_spark ~ ~.7 ~ .3 .6 .3 .001 25 force @a

scoreboard players operation @s cyborgtimer = @s cyborgzaptimer
scoreboard players operation @s cyborgtimer /= 15 constant
execute if score @s cyborgtimer matches 1 at @s anchored eyes positioned ^ ^ ^ anchored feet run function under_pack:cyborg_functions/cyborg_zap_go
