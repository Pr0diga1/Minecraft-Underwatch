execute as @e[type=armor_stand,tag=gun_man_nade,limit=1,sort=nearest] run kill @s
execute as @e[type=armor_stand,tag=gun_man_nade,limit=1,sort=nearest] at @e[type=armor_stand,tag=gun_man_nade,limit=1,sort=nearest] run particle minecraft:smoke ^ ^1 ^ 0 0 0 0 1000 force
