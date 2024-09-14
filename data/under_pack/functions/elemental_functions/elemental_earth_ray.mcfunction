#the marker has existed for another tick
scoreboard players add @s elementalDistance 1

#move the marker
tp @s ^ ^ ^0.25

#kill the marker if its in a block or has existed for 4 seconds
execute unless block ~ ~1.62 ~ #under_pack:non_solid run kill @s
execute if score @s elementalDistance matches 140.. run kill @s

#hits a player
execute if entity @s[tag=redElementalEarth] positioned ~-.5 ~1.12 ~-.5 as @a[dx=0,team=uBlue] at @s run function under_pack:elemental_functions/elemental_earth_hit
execute if entity @s[tag=blueElementalEarth] positioned ~-.5 ~1.12 ~-.5 as @a[dx=0,team=uRed] at @s run function under_pack:elemental_functions/elemental_earth_hit
