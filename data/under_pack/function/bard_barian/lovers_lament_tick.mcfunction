title @s actionbar ["Playing ",{"bold":true,"color":"#FF0A0A","text":"Lover's Lament"}]
execute if entity @s[team=uBlue] positioned ~-5 ~-5 ~-5 as @a[team=uBlue,dx=10,dy=10,dz=10] unless entity @s[scores={class=17}] run tag @s add lovers_lament
execute if entity @s[team=uBlue] as @a[tag=lovers_lament,team=uBlue] run return run function under_pack:bard_barian/lovers_lament_ally_tick

execute if entity @s[team=uRed] positioned ~-5 ~-5 ~-5 as @a[team=uRed,dx=10,dy=10,dz=10] unless entity @s[scores={class=17}] run tag @s add lovers_lament
execute if entity @s[team=uRed] as @a[tag=lovers_lament,team=uRed] run function under_pack:bard_barian/lovers_lament_ally_tick