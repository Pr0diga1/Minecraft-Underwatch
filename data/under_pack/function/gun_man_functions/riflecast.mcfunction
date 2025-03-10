#the marker has existed for another tick
scoreboard players remove @s gunrifle 1

#kill the marker if its in a block or has existed for 4 seconds
execute unless block ~ ~ ~ #under_pack:non_solid run scoreboard players reset @s gunrifle

#counter
scoreboard players add counter buffer 1

#hits a player
execute if entity @s[team=uRed] positioned ~ ~ ~ as @a[dx=0,team=uBlue,limit=1,sort=nearest,tag=!nra] at @s positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run damage @s 3.0 cactus by @a[limit=1,team=uRed,scores={class=14}]

execute if entity @s[team=uBlue] positioned ~ ~ ~ as @a[dx=0,team=uRed,limit=1,sort=nearest,tag=!nra] at @s positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run damage @s 3.0 cactus by @a[limit=1,team=uBlue,scores={class=14}]

execute if score counter buffer matches 5.. run particle crit ~ ~ ~ 0 0 0 .0000001 1

#rerun command
execute if score @s gunrifle matches 1.. positioned ^ ^ ^.4 run function under_pack:gun_man_functions/riflecast