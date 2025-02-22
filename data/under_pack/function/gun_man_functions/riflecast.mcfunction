#the marker has existed for another tick
scoreboard players remove @s gunrifle 1

#kill the marker if its in a block or has existed for 4 seconds
execute unless block ~ ~ ~ #under_pack:non_solid run scoreboard players reset @s gunrifle

#hits a player
execute if entity @s[team=uRed] positioned ~-0.42 ~-.8 ~-0.42 as @a[dx=0,team=uBlue,limit=1,sort=nearest,tag=!nra] run damage @s 3 cactus by @a[limit=1,team=uRed,scores={class=14}]

execute if entity @s[team=uBlue] positioned ~-0.42 ~-.8 ~-0.42 as @a[dx=0,team=uRed,limit=1,sort=nearest,tag=!nra] run damage @s 3 cactus by @a[limit=1,team=uBlue,scores={class=14}]

particle crit ~ ~ ~ 0 0 0 .0000001 1

#rerun command
execute if score @s gunrifle matches 1.. positioned ^ ^ ^.4 run function under_pack:gun_man_functions/riflecast