execute if score @s[team=uRed] engineerTurretEye matches 1.. run kill @e[type=marker,tag=redEngineerTurret]
execute if score @s[team=uBlue] engineerTurretEye matches 1.. run kill @e[type=marker,tag=blueEngineerTurret]
scoreboard players set @s engineerTurretEye 0
