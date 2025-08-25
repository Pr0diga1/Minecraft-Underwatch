data modify entity @s Owner set from entity @a[team=uRed,limit=1,sort=nearest,scores={class=14}] UUID

data merge entity @s {Item:{id:"minecraft:sunflower",count:1}}

summon marker ^ ^1 ^1.5 {Tags:["cointrack"]}

execute store result score X1 guntrack run data get entity @s Pos[0] 1000
execute store result score Y1 guntrack run data get entity @s Pos[1] 1000
execute store result score Z1 guntrack run data get entity @s Pos[2] 1000

#second bit of pos data
execute store result score X2 guntrack run data get entity @e[tag=cointrack,limit=1,sort=nearest] Pos[0] 1000
execute store result score Y2 guntrack run data get entity @e[tag=cointrack,limit=1,sort=nearest] Pos[1] 1000
execute store result score Z2 guntrack run data get entity @e[tag=cointrack,limit=1,sort=nearest] Pos[2] 1000

#subtraction
scoreboard players operation X2 guntrack -= X1 guntrack 
scoreboard players operation Y2 guntrack -= Y1 guntrack 
scoreboard players operation Z2 guntrack -= Z1 guntrack 


#set the new power (power is replaced with motion for parody with other entities
execute store result entity @s Motion[0] double 0.0004 run scoreboard players get X2 guntrack
execute store result entity @s Motion[1] double 0.0005 run scoreboard players get Y2 guntrack
execute store result entity @s Motion[2] double 0.0004 run scoreboard players get Z2 guntrack

kill @e[tag=cointrack]

