execute as @s at @s run summon marker ~ ~ ~ {Glowing:0b,Tags:["gun_man_nademark"]}
execute at @s run tp @e[type=marker, tag=gun_man_nademark] @s
execute at @s as @s anchored eyes run summon armor_stand ~ ~ ~ {Glowing:0b,Small:1b,Invisible:1b,NoBasePlate:1b,Motion:[0.0,0.0,0.0],Tags:["gun_man_snowball"],ArmorItems:[{},{},{},{id:"minecraft:ancient_debris",Count:1b}]}
execute as @e[type=marker, tag=gun_man_nademark] at @s run function under_pack:gun_man_functions/gun_nade_velo
