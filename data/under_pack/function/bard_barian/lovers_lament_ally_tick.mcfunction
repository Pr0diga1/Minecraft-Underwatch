execute as @s[team=uBlue] positioned ~-5 ~-5 ~-5 unless entity @s[team=uBlue,dx=10,dy=10,dz=10] run return run tag @s remove lovers_lament
execute as @s[team=uRed] positioned ~-5 ~-5 ~-5 unless entity @s[team=uRed,dx=10,dy=10,dz=10] run return run tag @s remove lovers_lament

execute as @s[team=uBlue] if score @p[team=uBlue,scores={class=17}] damageTaken matches 60.. run function under_pack:bard_barian/lovers_lament_heal
execute as @s[team=uRed] if score @p[team=uRed,scores={class=17}] damageTaken matches 60.. run function under_pack:bard_barian/lovers_lament_heal
