execute if score @s[team=uBlue] damageTaken matches 60.. positioned ~-5 ~-5 ~-5 as @a[team=uBlue,dx=10,dy=10,dz=10] unless entity @s[scores={class=17}] run function under_pack:bard_barian/lovers_lament_heal
execute if score @s[team=uRed] damageTaken matches 60.. positioned ~-5 ~-5 ~-5 as @a[team=uRed,dx=10,dy=10,dz=10] unless entity @s[scores={class=17}] run function under_pack:bard_barian/lovers_lament_heal
execute if score @s damageTaken matches 60.. run scoreboard players reset @s damageTaken


title @s actionbar ["Playing ",{"bold":true,"color":"#147AFF","text":"Lover's Lament"}]