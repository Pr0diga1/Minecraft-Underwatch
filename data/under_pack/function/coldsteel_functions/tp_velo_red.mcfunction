data modify entity @s Owner set from entity @a[team=uRed,limit=1,sort=nearest,scores={class=18}] UUID
data merge entity @s {Item:{id:"minecraft:enderman_spawn_egg",count:1}}

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
execute store result entity @s Motion[0] double 0.00055 run scoreboard players get X2 coldbuffer
execute store result entity @s Motion[1] double 0.00055 run scoreboard players get Y2 coldbuffer
execute store result entity @s Motion[2] double 0.00055 run scoreboard players get Z2 coldbuffer

kill @e[type=marker,tag=coldtrack]

tag @s add fix
schedule function under_pack:coldsteel_functions/tp_fix 2t
