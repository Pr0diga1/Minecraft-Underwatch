#remove 1
scoreboard players remove @s cyborgzaptimer 1

#sdfasdf
execute at @s run particle minecraft:electric_spark ~ ~.7 ~ .3 .6 .3 .001 25 force @a

scoreboard players operation @s cyborgtimer = @s cyborgzaptimer
scoreboard players operation @s cyborgtimer %= 15 constant
execute if score @s[team=uRed] cyborgtimer matches 1 if entity @a[team=uBlue,distance=..6] at @s anchored eyes positioned ^ ^ ^ anchored feet run function under_pack:cyborg_functions/cyborg_zap_go
execute if score @s[team=uBlue] cyborgtimer matches 1 if entity @a[team=uRed,distance=..6] at @s anchored eyes positioned ^ ^ ^ anchored feet run function under_pack:cyborg_functions/cyborg_zap_go
