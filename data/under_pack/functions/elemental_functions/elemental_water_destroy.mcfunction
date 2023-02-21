#change the state
scoreboard players set @s elementalWaterState 0
#kill the marker
execute as @s[team=uRed] run kill @e[type=marker,tag=redElementalWater]
execute as @s[team=uBlue] run kill @e[type=marker,tag=blueElementalWater]
#reset reset
scoreboard players reset @s reset