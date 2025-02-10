execute store result score X1 vampbatred run data get entity @s Pos[0] 10000
execute store result score Y1 vampbatred run data get entity @s Pos[1] 10000
execute store result score Z1 vampbatred run data get entity @s Pos[2] 10000

#data merge entity @s {NoAI:0b}

#tp to second pos
execute positioned ~ ~-.7 ~ run summon marker ^ ^ ^1 {Tags:["vamptrackred"]}

#second bit of pos data
execute store result score X2 vampbatred run data get entity @e[tag=vamptrackred,limit=1,sort=nearest] Pos[0] 10000
execute store result score Y2 vampbatred run data get entity @e[tag=vamptrackred,limit=1,sort=nearest] Pos[1] 10000
execute store result score Z2 vampbatred run data get entity @e[tag=vamptrackred,limit=1,sort=nearest] Pos[2] 10000

#subtraction
scoreboard players operation X2 vampbatred -= X1 vampbatred 
scoreboard players operation Y2 vampbatred -= Y1 vampbatred 
scoreboard players operation Z2 vampbatred -= Z1 vampbatred 

#set the new power (power is replaced with motion for parody with other entities
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get X2 vampbatred
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get Y2 vampbatred
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get Z2 vampbatred

kill @e[tag=vamptrackred]
#data merge entity @s {NoAI:1b}