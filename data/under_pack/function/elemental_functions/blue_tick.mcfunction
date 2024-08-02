# Execute as teams
execute as @a[team=uRed] run function under_pack:elemental_functions/all_diff_blue
execute as @a[team=uBlue] run function under_pack:elemental_functions/all_same_blue

# Water tick
execute if score @s elementalWaterState matches 1 at @s at @e[type=marker,tag=blueElementalWater,limit=1,sort=nearest] run function under_pack:elemental_functions/elemental_water_tick

# Earth tick
execute as @e[tag=blueElementalEarth,scores={elementalEarthTimer=1..}] at @s run tp @s ~ ~.18 ~
scoreboard players remove @e[tag=blueElementalEarth] elementalEarthTimer 1
execute if entity @e[tag=blueElementalEarth,scores={elementalEarthTimer=0}] at @s run function under_pack:elemental_functions/elemental_earth_toss
execute as @e[tag=blueElementalEarth,scores={elementalEarthTimer=..0}] at @s run function under_pack:elemental_functions/elemental_earth_tick
