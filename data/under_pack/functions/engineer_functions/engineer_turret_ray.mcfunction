#the raycast has gone another iteration
scoreboard players add distance engineerTurretEye 1

#detect hitting a block
execute unless block ~ ~ ~ #under_pack:non_solid run scoreboard players set hit engineerTurretEye 1
#summon marker in the correct spot
execute as @s[team=uRed] unless block ~ ~ ~ #under_pack:non_solid run summon marker ^ ^ ^-.1 {Tags:["redEngineerTurret"]}
execute as @s[team=uBlue] unless block ~ ~ ~ #under_pack:non_solid run summon marker ^ ^ ^-.1 {Tags:["blueEngineerTurret"]}

#rerun command
execute if score distance engineerTurretEye matches ..49 if score hit engineerTurretEye matches 0 positioned ^ ^ ^.1 run function under_pack:engineer_functions/engineer_turret_ray