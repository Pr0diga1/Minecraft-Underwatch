#particles (which are cool)
execute as @s[team=uRed] at @e[type=marker,tag=redEngineerTurret] run particle electric_spark ~ ~ ~ .1 .1 .1 .1 4 force @a
execute as @s[team=uBlue] at @e[type=marker,tag=blueEngineerTurret] run particle electric_spark ~ ~ ~ .1 .1 .1 .1 4 force @a

#find out if it is 1 out of every 20 ticks
scoreboard players operation @s engineerTurretDurationBuffer = @s engineerTurretDuration
scoreboard players operation @s engineerTurretDurationBuffer %= TickToSecond constant
execute if score @s[team=uRed] engineerTurretDurationBuffer matches 1 as @e[type=marker,tag=redEngineerTurret,limit=1] at @s if entity @a[team=uBlue,distance=..8] positioned ^ ^ ^ run function under_pack:engineer_functions/engineer_turret_shoot_start
execute if score @s[team=uBlue] engineerTurretDurationBuffer matches 1 as @e[type=marker,tag=blueEngineerTurret,limit=1] at @s if entity @a[team=uRed,distance=..8] positioned ^ ^ ^ run function under_pack:engineer_functions/engineer_turret_shoot_start
