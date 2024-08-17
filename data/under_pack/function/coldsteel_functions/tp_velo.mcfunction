summon marker ^ ^ ^2 {Tags:["coldtrack"]}

execute store result score X1 coldbuffer run data get entity @s Pos[0] 1000
execute store result score Y1 coldbuffer run data get entity @s Pos[1] 1000
execute store result score Z1 coldbuffer run data get entity @s Pos[2] 1000

#second bit of pos data
execute store result score X2 coldbuffer run data get entity @e[tag=coldtrack,limit=1,sort=nearest] Pos[0] 1000
execute store result score Y2 coldbuffer run data get entity @e[tag=coldtrack,limit=1,sort=nearest] Pos[1] 1000
execute store result score Z2 coldbuffer run data get entity @e[tag=coldtrack,limit=1,sort=nearest] Pos[2] 1000

#subtraction
scoreboard players operation X2 coldbuffer -= X1 coldbuffer 
scoreboard players operation Y2 coldbuffer -= Y1 coldbuffer 
scoreboard players operation Z2 coldbuffer -= Z1 coldbuffer 


#set the new power (power is replaced with motion for parody with other entities
execute if entity @s[team=uRed] store result entity @e[tag=red,tag=coldtp,limit=1,sort=nearest] Motion[0] double 0.0005 run scoreboard players get X2 coldbuffer
execute if entity @s[team=uRed] store result entity @e[tag=red,tag=coldtp,limit=1,sort=nearest] Motion[1] double 0.0005 run scoreboard players get Y2 coldbuffer
execute if entity @s[team=uRed] store result entity @e[tag=red,tag=coldtp,limit=1,sort=nearest] Motion[2] double 0.0005 run scoreboard players get Z2 coldbuffer

kill @e[tag=coldtrack]

tag @s add nomove
