#reset earth timer
scoreboard players reset @s elementalEarthTimer
#make the rocks experience gravity
execute as @s[team=uRed] run data merge entity @e[type=armor_stand,tag=redElementalEarth,limit=1,sort=nearest] {NoGravity:0b}
execute as @s[team=uBlue] run data merge entity @e[type=armor_stand,tag=blueElementalEarth,limit=1,sort=nearest] {NoGravity:0b}

summon marker ~ ~ ~ {Tags:["elementalPosition"]}

#get the first bit of pos data
execute store result score ElementalRockX1 buffer run data get entity @e[type=marker,tag=elementalPosition,limit=1,sort=nearest] Pos[0] 1000
execute store result score ElementalRockY1 buffer run data get entity @e[type=marker,tag=elementalPosition,limit=1,sort=nearest] Pos[1] 1000
execute store result score ElementalRockZ1 buffer run data get entity @e[type=marker,tag=elementalPosition,limit=1,sort=nearest] Pos[2] 1000

#tp to second pos
tp @e[type=marker,tag=elementalPosition] ^ ^ ^1

#second bit of pos data
execute store result score ElementalRockX2 buffer run data get entity @e[type=marker,tag=elementalPosition,limit=1,sort=nearest] Pos[0] 1000
execute store result score ElementalRockY2 buffer run data get entity @e[type=marker,tag=elementalPosition,limit=1,sort=nearest] Pos[1] 1000
execute store result score ElementalRockZ2 buffer run data get entity @e[type=marker,tag=elementalPosition,limit=1,sort=nearest] Pos[2] 1000

#subtraction
scoreboard players operation ElementalRockX2 buffer -= ElementalRockX1 buffer 
scoreboard players operation ElementalRockY2 buffer -= ElementalRockY1 buffer 
scoreboard players operation ElementalRockZ2 buffer -= ElementalRockZ1 buffer 

#kill the marker
kill @e[type=marker,tag=elementalPosition]

#set the new Motion
execute as @s[team=uRed] store result entity @e[type=armor_stand,tag=redElementalEarth,limit=1,sort=nearest] Motion[0] double 0.005 run scoreboard players get ElementalRockX2 buffer
execute as @s[team=uRed] store result entity @e[type=armor_stand,tag=redElementalEarth,limit=1,sort=nearest] Motion[1] double 0.005 run scoreboard players get ElementalRockY2 buffer
execute as @s[team=uRed] store result entity @e[type=armor_stand,tag=redElementalEarth,limit=1,sort=nearest] Motion[2] double 0.005 run scoreboard players get ElementalRockZ2 buffer
execute as @s[team=uBlue] store result entity @e[type=armor_stand,tag=blueElementalEarth,limit=1,sort=nearest] Motion[0] double 0.005 run scoreboard players get ElementalRockX2 buffer
execute as @s[team=uBlue] store result entity @e[type=armor_stand,tag=blueElementalEarth,limit=1,sort=nearest] Motion[1] double 0.005 run scoreboard players get ElementalRockY2 buffer
execute as @s[team=uBlue] store result entity @e[type=armor_stand,tag=blueElementalEarth,limit=1,sort=nearest] Motion[2] double 0.005 run scoreboard players get ElementalRockZ2 buffer

#arrow summon
execute as @s[team=uRed] at @e[type=armor_stand,tag=redElementalEarth,limit=1,sort=nearest] run summon arrow ^ ^ ^-.5 {damage:0.8d,Tags:["redElementalArrow"],CustomPotionEffects:[{Id:27,Amplifier:1b,Duration:46}]}
execute as @s[team=uBlue] at @e[type=armor_stand,tag=blueElementalEarth,limit=1,sort=nearest] run summon arrow ^ ^ ^-.5 {damage:0.8d,Tags:["blueElementalArrow"],CustomPotionEffects:[{Id:27,Amplifier:1b,Duration:46}]}

#set the new Motion
execute as @s[team=uRed] store result entity @e[type=arrow,tag=redElementalArrow,limit=1,sort=nearest] Motion[0] double 0.005 run scoreboard players get ElementalRockX2 buffer
execute as @s[team=uRed] store result entity @e[type=arrow,tag=redElementalArrow,limit=1,sort=nearest] Motion[1] double 0.005 run scoreboard players get ElementalRockY2 buffer
execute as @s[team=uRed] store result entity @e[type=arrow,tag=redElementalArrow,limit=1,sort=nearest] Motion[2] double 0.005 run scoreboard players get ElementalRockZ2 buffer
execute as @s[team=uBlue] store result entity @e[type=arrow,tag=blueElementalArrow,limit=1,sort=nearest] Motion[0] double 0.005 run scoreboard players get ElementalRockX2 buffer
execute as @s[team=uBlue] store result entity @e[type=arrow,tag=blueElementalArrow,limit=1,sort=nearest] Motion[1] double 0.005 run scoreboard players get ElementalRockY2 buffer
execute as @s[team=uBlue] store result entity @e[type=arrow,tag=blueElementalArrow,limit=1,sort=nearest] Motion[2] double 0.005 run scoreboard players get ElementalRockZ2 buffer

#set the arrow owner
execute as @s[team=uRed] run data modify entity @e[type=arrow,tag=redElementalArrow,limit=1,sort=nearest] Owner set from entity @s UUID
execute as @s[team=uBlue] run data modify entity @e[type=arrow,tag=blueElementalArrow,limit=1,sort=nearest] Owner set from entity @s UUID