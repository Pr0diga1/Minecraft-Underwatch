#get the first bit of pos data
execute store result score GunManNadeX1 buffer run data get entity @s Pos[0] 1000
execute store result score GunManNadeY1 buffer run data get entity @s Pos[1] 1000
execute store result score GunManNadeZ1 buffer run data get entity @s Pos[2] 1000

#tp to second pos
tp @s ^ ^ ^1

#second bit of pos data
execute store result score GunManNadeX2 buffer run data get entity @s Pos[0] 1000
execute store result score GunManNadeY2 buffer run data get entity @s Pos[1] 1000
execute store result score GunManNadeZ2 buffer run data get entity @s Pos[2] 1000

#subtraction
scoreboard players operation GunManNadeX2 buffer -= GunManNadeX1 buffer 
scoreboard players operation GunManNadeY2 buffer -= GunManNadeY1 buffer 
scoreboard players operation GunManNadeZ2 buffer -= GunManNadeZ1 buffer 

#set the new power
execute store result entity @e[type=armor_stand,tag=gun_man_nade,limit=1,sort=nearest] Motion[0] double 0.001 run scoreboard players get GunManNadeX2 buffer
execute store result entity @e[type=armor_stand,tag=gun_man_nade,limit=1,sort=nearest] Motion[1] double 0.001 run scoreboard players get GunManNadeY2 buffer
execute store result entity @e[type=armor_stand,tag=gun_man_nade,limit=1,sort=nearest] Motion[2] double 0.001 run scoreboard players get GunManNadeZ2 buffer

#detecting the player
execute as @s at @s run schedule function under_pack:gun_man_functions/gun_grenade_hit 1s

#set the owner
#execute as @s[tag=redGunManNade] run data modify entity @s Owner set from entity @p[team=uRed] UUID
#execute as @s[tag=blueGunManNade] run data modify entity @s Owner set from entity @p[team=uBlue] UUID

#only runs once
