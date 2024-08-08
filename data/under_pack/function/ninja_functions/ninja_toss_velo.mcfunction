#get the first bit of pos data
execute store result score NinjaTossX1 buffer run data get entity @s Pos[0] 1000
execute store result score NinjaTossY1 buffer run data get entity @s Pos[1] 1000
execute store result score NinjaTossZ1 buffer run data get entity @s Pos[2] 1000

#tp to second pos
tp @s[tag=ninjaArrow2] ^ ^ ^1
tp @s[tag=ninjaArrow1] ^-.12 ^ ^1
tp @s[tag=ninjaArrow3] ^.12 ^ ^1

#second bit of pos data
execute store result score NinjaTossX2 buffer run data get entity @s Pos[0] 1000
execute store result score NinjaTossY2 buffer run data get entity @s Pos[1] 1000
execute store result score NinjaTossZ2 buffer run data get entity @s Pos[2] 1000

#subtraction
scoreboard players operation NinjaTossX2 buffer -= NinjaTossX1 buffer 
scoreboard players operation NinjaTossY2 buffer -= NinjaTossY1 buffer 
scoreboard players operation NinjaTossZ2 buffer -= NinjaTossZ1 buffer 

#set the new power (power is replaced with motion for parody with other entities
execute store result entity @s Motion[0] double 0.0022 run scoreboard players get NinjaTossX2 buffer
execute store result entity @s Motion[1] double 0.0022 run scoreboard players get NinjaTossY2 buffer
execute store result entity @s Motion[2] double 0.0022 run scoreboard players get NinjaTossZ2 buffer

#tp back
tp @s[tag=ninjaArrow2] ^ ^ ^-1
tp @s[tag=ninjaArrow1] ^.12 ^ ^-1
tp @s[tag=ninjaArrow3] ^-.12 ^ ^-1

#only runs once
tag @s add tossMoved