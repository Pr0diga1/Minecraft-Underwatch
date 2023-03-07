#kill the armor stand
execute at @s[team=uRed] run kill @e[type=armor_stand,limit=1,sort=nearest,tag=blueElementalEarth]
execute at @s[team=uBlue] run kill @e[type=armor_stand,limit=1,sort=nearest,tag=redElementalEarth]
#start the timer
scoreboard players set @s elementalEarthTimer 12
#summon the arrow
execute at @s run summon arrow ~ ~3 ~ {NoGravity:1b,damage:1.4d,Motion:[0.0,-5.0,0.0],Tags:["elementalEarthArrow"]}
execute at @s[team=uRed] run data modify entity @e[type=arrow,limit=1,sort=nearest,tag=elementalEarthArrow] Owner set from entity @a[scores={class=12},team=uBlue,limit=1,sort=nearest] UUID
execute at @s[team=uBlue] run data modify entity @e[type=arrow,limit=1,sort=nearest,tag=elementalEarthArrow] Owner set from entity @a[scores={class=12},team=uRed,limit=1,sort=nearest] UUID
#summon the stun marker
execute at @s run summon marker ~ ~ ~ {Tags:["elementalStun"]}
#particles
execute at @s run particle dust 0.4 0.4 0.4 1 ~ ~ ~ 0.4 1 0.4 0 500 force
#title
title @s title {"text": "Stunned!","color": "gray"}