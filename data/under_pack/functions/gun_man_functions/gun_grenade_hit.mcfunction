execute as @e[type=armor_stand,tag=gun_man_nade,limit=1,sort=nearest] at @e[type=armor_stand,tag=gun_man_nade,limit=1,sort=nearest] run particle dripping_dripstone_water ^ ^ ^ 2 2 2 0 1000 force
execute as @e[type=armor_stand,tag=gun_man_nade,limit=1,sort=nearest] at @e[type=armor_stand,tag=gun_man_nade,limit=1,sort=nearest] run particle smoke ^ ^1 ^ 0 0 0 0 1000 force
kill @e[type=armor_stand,tag=gun_man_nade,limit=1,sort=nearest]
