damage @a[dx=0,limit=1,sort=nearest,tag=!vamp] 1 player_attack by @s
execute if entity @s[team=uRed] run tag @a[dx=0,limit=1,sort=nearest,tag=!vamp] add taintedred
execute if entity @s[team=uBlue] run tag @a[dx=0,limit=1,sort=nearest,tag=!vamp] add taintedblue
scoreboard players remove @s vampblood 74
experience add @s -74 points
scoreboard players set @s ability1 100

