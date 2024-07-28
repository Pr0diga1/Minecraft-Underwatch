#the raycast has gone another iteration
scoreboard players add distance engineerTurretEye 1

#detect hitting a block
execute unless block ~ ~ ~ #under_pack:non_solid run scoreboard players set hit engineerTurretEye 1

#player hit detection
#execute if entity @s[tag=redEngineerTurret] positioned ~ ~-1.4 ~ as @e[distance=..0.5,tag=blue] run say hi
execute if entity @s[tag=redEngineerTurret] positioned ~ ~ ~ as @a[dx=0,team=uBlue,tag=!hitbyturret] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] run function under_pack:engineer_functions/engineer_turret_hit
execute if entity @s[tag=blueEngineerTurret] positioned ~ ~ ~ as @a[dx=0,team=uRed,tag=!hitbyturret] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] run function under_pack:engineer_functions/engineer_turret_hit

#particles
particle electric_spark ~ ~ ~ .1 .1 .1 0 4 force @a

#rerun command
execute if score distance engineerTurretEye matches ..27 if score hit engineerTurretEye matches 0 positioned ^ ^ ^.3 run function under_pack:engineer_functions/engineer_turret_shoot_ray