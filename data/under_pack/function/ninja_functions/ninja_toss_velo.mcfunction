execute store result score NinjaTossX1 ninjabuffer run data get entity @s Pos[0] 10000
execute store result score NinjaTossY1 ninjabuffer run data get entity @s Pos[1] 10000
execute store result score NinjaTossZ1 ninjabuffer run data get entity @s Pos[2] 10000

#tp to second pos
tp @s[tag=ninjaArrow2] ^ ^ ^2
tp @s[tag=ninjaArrow1] ^-.12 ^ ^2
tp @s[tag=ninjaArrow3] ^.12 ^ ^2

#second bit of pos data
execute store result score NinjaTossX2 ninjabuffer run data get entity @s Pos[0] 10000
execute store result score NinjaTossY2 ninjabuffer run data get entity @s Pos[1] 10000
execute store result score NinjaTossZ2 ninjabuffer run data get entity @s Pos[2] 10000

#subtraction
scoreboard players operation NinjaTossX2 ninjabuffer -= NinjaTossX1 ninjabuffer 
scoreboard players operation NinjaTossY2 ninjabuffer -= NinjaTossY1 ninjabuffer 
scoreboard players operation NinjaTossZ2 ninjabuffer -= NinjaTossZ1 ninjabuffer 

#set the new power (power is replaced with motion for parody with other entities
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get NinjaTossX2 ninjabuffer
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get NinjaTossY2 ninjabuffer
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get NinjaTossZ2 ninjabuffer

#only runs once
tag @s add tossMoved