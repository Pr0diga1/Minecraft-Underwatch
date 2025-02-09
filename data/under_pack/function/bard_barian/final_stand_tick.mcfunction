execute if entity @s[team=uBlue] positioned ~-5 ~-5 ~-5 as @a[tag=!final_stand,team=uBlue,dx=10,dy=10,dz=10] unless entity @s[scores={class=17}] run tag @s add final_stand
execute if entity @s[team=uRed] positioned ~-5 ~-5 ~-5 as @a[tag=!final_stand,team=uRed,dx=10,dy=10,dz=10] unless entity @s[scores={class=17}] run tag @s add final_stand

execute as @a[tag=final_stand] run function under_pack:bard_barian/final_stand_ally_tick

title @s actionbar ["Playing ",{"bold":true,"color":"dark_red","text":"Ballad of The Final Stand"}]