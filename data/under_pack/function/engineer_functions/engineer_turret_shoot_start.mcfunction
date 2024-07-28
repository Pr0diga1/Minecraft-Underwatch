scoreboard players set hit engineerTurretEye 0
scoreboard players set distance engineerTurretEye 0
tp @s[tag=redEngineerTurret] ~ ~ ~ facing entity @a[team=uBlue,limit=1,sort=nearest,gamemode=adventure] eyes
tp @s[tag=blueEngineerTurret] ~ ~ ~ facing entity @a[team=uRed,limit=1,sort=nearest,gamemode=adventure] eyes
execute at @s positioned ^ ^ ^ run function under_pack:engineer_functions/engineer_turret_shoot_ray
tag @e remove hitbyturret