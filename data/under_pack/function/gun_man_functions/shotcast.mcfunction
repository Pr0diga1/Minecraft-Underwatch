#the marker has existed for another tick
scoreboard players remove @s gunshot 1

#kill the marker if its in a block or has existed for 4 seconds
execute unless block ~ ~ ~ #under_pack:non_solid run scoreboard players reset @s gunshot

#hits a player
execute if entity @s[team=uRed] positioned ~-0.42 ~-.8 ~-0.42 as @a[dx=0,team=uBlue,limit=1,sort=nearest,tag=!nra] run damage @s 6 arrow by @a[limit=1,team=uRed,scores={class=14}]

execute if entity @s[team=uBlue] positioned ~-0.42 ~-.8 ~-0.42 as @a[dx=0,team=uRed,limit=1,sort=nearest,tag=!nra] run damage @s 6 arrow by @a[limit=1,team=uBlue,scores={class=14}]

particle enchanted_hit ~ ~ ~ 0 0 0 .0000001 1

#rerun command
execute if score @s gunshot matches 1.. positioned ^-.5 ^ ^ run function under_pack:gun_man_functions/shotcast

execute if score @s gunshot matches ..0 run scoreboard players set @s gunshot 8