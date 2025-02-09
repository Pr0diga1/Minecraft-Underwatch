execute if score @s damageTaken matches 6.. as @a[tag=!marching,team=uBlue,dx=10,dy=10,dz=10] unless entity @s[scores={class=17}] run function under_pack:bard_barian/lovers_lament_heal

title @s actionbar ["Playing ",{"bold":true,"color":"#147AFF","text":"Lover's Lament"}]