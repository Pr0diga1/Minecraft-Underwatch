#the marker has existed for another tick
scoreboard players add gun_distance buffer 1

#kill the marker if its in a block or has existed for 4 seconds
execute unless block ~ ~ ~ #under_pack:non_solid run scoreboard players set gun_hit buffer 1

#hits a player
execute if entity @s[team=uRed] positioned ~-1 ~-1 ~-1 as @a[dx=2,dy=2,dz=2,team=uBlue,limit=1,sort=nearest] run function under_pack:gun_man_functions/gun_ar_hit
execute if entity @s[team=uBlue] positioned ~-1 ~-1 ~-1 as @a[dx=2,dy=2,dz=2,team=uRed,limit=1,sort=nearest] run function under_pack:gun_man_functions/gun_ar_hit
scoreboard players set @s[team=uBlue] gun_ar_cd 5 
scoreboard players set @s[team=uBlue] gun_ar_cd 5

#rerun command
execute if entity @s[team=uBlue] if score @s[team=uBlue] gun_ar_cd matches 0 if score gun_hit buffer matches 0 if score distance buffer matches ..180 positioned ^ ^ ^.5 run function under_pack:gun_man_functions/gun_ar_ray
execute if entity @s[team=uRed] if score @s[team=uRed] gun_ar_cd matches 0 if score gun_hit buffer matches 0 if score distance buffer matches ..180 positioned ^ ^ ^.5 run function under_pack:gun_man_functions/gun_ar_ray
