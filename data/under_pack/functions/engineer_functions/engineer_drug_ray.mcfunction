#the marker has existed for another tick
scoreboard players add distance engineerTurretEye 1

#kill the marker if its in a block or has existed for 4 seconds
execute unless block ~ ~ ~ #under_pack:non_solid run scoreboard players set hit engineerTurretEye 1

#particle
particle dust 0.424 0 0 1 ^ ^ ^2 0 0 0 0 1 force @s

#hits a player
execute if entity @s[team=uRed] positioned ~-.7 ~-.7 ~-.7 as @a[dx=1.4,dy=1.4,dz=1.4,team=uRed,limit=1,sort=nearest] unless entity @s[scores={class=3}] run tag @s add redViagraTarget
execute if entity @s[team=uBlue] positioned ~-.7 ~-.7 ~-.7 as @a[dx=1.4,dy=1.4,dz=1.4,team=uBlue,limit=1,sort=nearest] unless entity @s[scores={class=3}] run tag @s add blueViagraTarget

#playsound
execute as @s[team=uRed] if entity @a[tag=redViagraTarget] at @s run playsound entity.arrow.hit_player master @s
execute as @s[team=uBlue] if entity @a[tag=blueViagraTarget] at @s run playsound entity.arrow.hit_player master @s

#rerun command
execute as @s[team=uRed] if score hit engineerTurretEye matches 0 unless entity @a[tag=redViagraTarget] if score distance engineerTurretEye matches ..100 positioned ^ ^ ^.5 run function under_pack:engineer_functions/engineer_drug_ray
execute as @s[team=uBlue] if score hit engineerTurretEye matches 0 unless entity @a[tag=blueViagraTarget] if score distance engineerTurretEye matches ..100 positioned ^ ^ ^.5 run function under_pack:engineer_functions/engineer_drug_ray