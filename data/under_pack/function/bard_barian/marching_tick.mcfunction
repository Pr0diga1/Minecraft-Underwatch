title @s actionbar ["Playing ",{"bold":true,"color":"#147AFF","text":"Marching Shanty"}]
execute if entity @s[team=uBlue] positioned ~-5 ~-5 ~-5 as @a[tag=!marching,team=uBlue,dx=10,dy=10,dz=10] unless entity @s[scores={class=17}] run tag @s add marching
execute if entity @s[team=uRed] positioned ~-5 ~-5 ~-5 as @a[tag=!marching,team=uRed,dx=10,dy=10,dz=10] unless entity @s[scores={class=17}] run tag @s add marching

execute as @a[tag=marching] run function under_pack:bard_barian/marching_ally_tick