#kill the armor stand
execute at @s[team=uRed] run kill @e[type=armor_stand,limit=1,sort=nearest,tag=blueElementalEarth]
execute at @s[team=uBlue] run kill @e[type=armor_stand,limit=1,sort=nearest,tag=redElementalEarth]
#start the timer
scoreboard players set @s elementalEarthTimer 9

damage @s[team=uRed] 6.5 player_attack by @a[scores={class=12},team=uBlue,limit=1,sort=nearest]
damage @s[team=uBlue] 6.5 player_attack by @a[scores={class=12},team=uRed,limit=1,sort=nearest]

#summon the stun marker
execute at @s run summon marker ~ ~ ~ {Tags:["elementalStun"]}
#particles
execute at @s run particle dust 0.4 0.4 0.4 1 ~ ~ ~ 0.4 1 0.4 0 500 force
#title
title @s title {"text": "Stunned!","color": "gray"}