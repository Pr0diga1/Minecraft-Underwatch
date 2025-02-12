#get the first bit of pos data
execute store result score ElementalChargeX1 buffer run data get entity @s Pos[0] 1000
execute store result score ElementalChargeY1 buffer run data get entity @s Pos[1] 1000
execute store result score ElementalChargeZ1 buffer run data get entity @s Pos[2] 1000

#tp to second pos
tp @s ^ ^ ^0.5

#second bit of pos data
execute store result score ElementalChargeX2 buffer run data get entity @s Pos[0] 1000
execute store result score ElementalChargeY2 buffer run data get entity @s Pos[1] 1000
execute store result score ElementalChargeZ2 buffer run data get entity @s Pos[2] 1000

#subtraction
scoreboard players operation ElementalChargeX2 buffer -= ElementalChargeX1 buffer 
scoreboard players operation ElementalChargeY2 buffer -= ElementalChargeY1 buffer 
scoreboard players operation ElementalChargeZ2 buffer -= ElementalChargeZ1 buffer 

#set the new motion
execute store result entity @s Motion[0] double 0.00085 run scoreboard players get ElementalChargeX2 buffer
execute store result entity @s Motion[1] double 0.00085 run scoreboard players get ElementalChargeY2 buffer
execute store result entity @s Motion[2] double 0.00085 run scoreboard players get ElementalChargeZ2 buffer

#set the owner
execute as @s[tag=redElementalWind] run data modify entity @s Owner set from entity @p[team=uRed,limit=1,sort=nearest,scores={class=12}] UUID
execute as @s[tag=blueElementalWind] run data modify entity @s Owner set from entity @p[team=uBlue,limit=1,sort=nearest,scores={class=12}] UUID

#only runs once
tag @s add chargeMoved