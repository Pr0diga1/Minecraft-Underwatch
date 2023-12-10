#the marker has existed for another tick
scoreboard players add gun_distance buffer 1

#kill the marker if its in a block or has existed for 4 seconds

execute unless block ~ ~1 ~ #under_pack:non_solid run scoreboard players set gun_hit buffer 1

#hits a player
execute if entity @s[team=uRed] positioned ~ ~ ~ as @a[dx=0,team=uBlue] at @s positioned ~ ~ ~ if entity @s[dx=0] run function under_pack:gun_man_functions/gun_ar_hit
execute if entity @s[team=uBlue] positioned ~ ~ ~ as @a[dx=0,team=uRed] at @s positioned ~ ~ ~ if entity @s[dx=0] run function under_pack:gun_man_functions/gun_ar_hit
particle electric_spark ^ ^1.1 ^ 0 0 0 0 100 force
#rerun command
execute if entity @s[team=uBlue] if score gun_hit buffer matches 0 if score gun_distance buffer matches ..75 positioned ^ ^ ^.4 run function under_pack:gun_man_functions/gun_ar_ray
execute if entity @s[team=uRed] if score gun_hit buffer matches 0 if score gun_distance buffer matches ..75 positioned ^ ^ ^.4 run function under_pack:gun_man_functions/gun_ar_ray
