#kill the armor stand
execute at @s[team=uRed] run kill @e[type=block_display,limit=1,sort=nearest,tag=blueElementalEarth]
execute at @s[team=uBlue] run kill @e[type=block_display,limit=1,sort=nearest,tag=redElementalEarth]
#start the timer
scoreboard players set @s elementalEarthTimer 6

damage @s[team=uRed] 6.5 player_attack by @a[scores={class=12},team=uBlue,limit=1,sort=nearest]
damage @s[team=uBlue] 6.5 player_attack by @a[scores={class=12},team=uRed,limit=1,sort=nearest]

#refund mana
execute as @s[team=uRed] as @a[scores={class=12,elementalBar=..640},team=uBlue,limit=1,sort=nearest] run scoreboard players add @s elementalBar 100
execute as @s[team=uRed] as @a[scores={class=12,elementalBar=641..},team=uBlue,limit=1,sort=nearest] run scoreboard players set @s elementalBar 741
execute as @s[team=uBlue] as @a[scores={class=12,elementalBar=..640},team=uRed,limit=1,sort=nearest] run scoreboard players add @s elementalBar 100
execute as @s[team=uBlue] as @a[scores={class=12,elementalBar=641..},team=uRed,limit=1,sort=nearest] run scoreboard players set @s elementalBar 741

#summon the stun marker
execute at @s run summon marker ~ ~ ~ {Tags:["elementalStun"]}
#particles
execute at @s run particle dust{color:[0.4,0.4,0.4],scale:1} ~ ~ ~ 0.4 1 0.4 0 100 force
#title
title @s title {"text": "Stunned!","color": "gray"}