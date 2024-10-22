execute as @e[type=armor_stand,tag=gun_man_nade,limit=1,sort=nearest] at @e[type=armor_stand,tag=gun_man_nade,limit=1,sort=nearest] run particle dripping_obsidian_tear ^ ^ ^ 2 2 2 0 1000 force
execute as @e[type=armor_stand,tag=gun_man_nade,limit=1,sort=nearest] at @e[type=armor_stand,tag=gun_man_nade,limit=1,sort=nearest] run particle minecraft:explosion ^ ^1 ^ 0 0 0 0 1000 force
tag @e[type=armor_stand,tag=gun_man_nade,limit=1,sort=nearest] add nade_frozen
execute run schedule function under_pack:gun_man_functions/gun_grenade_kill 2s

