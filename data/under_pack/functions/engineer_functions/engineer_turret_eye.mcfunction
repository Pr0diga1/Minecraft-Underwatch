#iterate the variable every tick the eye was held down
scoreboard players add @s engineerTurretEye 1

#if it is the first tick, start the ray
execute if score @s engineerTurretEye matches 1 at @s anchored eyes positioned ^ ^ ^ anchored feet run function under_pack:engineer_functions/engineer_turret_ray_start


# particles red
execute if score @s[team=uRed] engineerTurretEye matches ..10 at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~.5 ~.2 ~.5 0 0 0 0 1 force @a
execute if score @s[team=uRed] engineerTurretEye matches 11.. at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~.5 ~.2 ~.5 0 0 0 0 1 force @a

execute if score @s[team=uRed] engineerTurretEye matches ..20 at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~ ~.2 ~.5 0 0 0 0 1 force @a
execute if score @s[team=uRed] engineerTurretEye matches 21.. at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~ ~.2 ~.5 0 0 0 0 1 force @a

execute if score @s[team=uRed] engineerTurretEye matches ..30 at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~-.5 ~.2 ~.5 0 0 0 0 1 force @a
execute if score @s[team=uRed] engineerTurretEye matches 31.. at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~-.5 ~.2 ~.5 0 0 0 0 1 force @a

execute if score @s[team=uRed] engineerTurretEye matches ..40 at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~.5 ~.2 ~ 0 0 0 0 1 force @a
execute if score @s[team=uRed] engineerTurretEye matches 41.. at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~.5 ~.2 ~ 0 0 0 0 1 force @a

execute if score @s[team=uRed] engineerTurretEye matches ..50 at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~ ~.2 ~ 0 0 0 0 1 force @a
execute if score @s[team=uRed] engineerTurretEye matches 51.. at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~ ~.2 ~ 0 0 0 0 1 force @a

execute if score @s[team=uRed] engineerTurretEye matches ..60 at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~-.5 ~.2 ~ 0 0 0 0 1 force @a
execute if score @s[team=uRed] engineerTurretEye matches 61.. at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~-.5 ~.2 ~ 0 0 0 0 1 force @a

execute if score @s[team=uRed] engineerTurretEye matches ..70 at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~.5 ~.2 ~-.5 0 0 0 0 1 force @a
execute if score @s[team=uRed] engineerTurretEye matches 71.. at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~.5 ~.2 ~-.5 0 0 0 0 1 force @a

execute if score @s[team=uRed] engineerTurretEye matches ..80 at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~ ~.2 ~-.5 0 0 0 0 1 force @a
execute if score @s[team=uRed] engineerTurretEye matches 81.. at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~ ~.2 ~-.5 0 0 0 0 1 force @a

execute if score @s[team=uRed] engineerTurretEye matches ..90 at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~-.5 ~.2 ~-.5 0 0 0 0 1 force @a
execute if score @s[team=uRed] engineerTurretEye matches 91.. at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~-.5 ~.2 ~-.5 0 0 0 0 1 force @a


# particles ble
execute if score @s[team=uBlue] engineerTurretEye matches ..10 at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~.5 ~.2 ~.5 0 0 0 0 1 force @a
execute if score @s[team=uBlue] engineerTurretEye matches 11.. at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~.5 ~.2 ~.5 0 0 0 0 1 force @a

execute if score @s[team=uBlue] engineerTurretEye matches ..20 at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~ ~.2 ~.5 0 0 0 0 1 force @a
execute if score @s[team=uBlue] engineerTurretEye matches 21.. at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~ ~.2 ~.5 0 0 0 0 1 force @a

execute if score @s[team=uBlue] engineerTurretEye matches ..30 at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~-.5 ~.2 ~.5 0 0 0 0 1 force @a
execute if score @s[team=uBlue] engineerTurretEye matches 31.. at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~-.5 ~.2 ~.5 0 0 0 0 1 force @a

execute if score @s[team=uBlue] engineerTurretEye matches ..40 at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~.5 ~.2 ~ 0 0 0 0 1 force @a
execute if score @s[team=uBlue] engineerTurretEye matches 41.. at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~.5 ~.2 ~ 0 0 0 0 1 force @a

execute if score @s[team=uBlue] engineerTurretEye matches ..50 at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~ ~.2 ~ 0 0 0 0 1 force @a
execute if score @s[team=uBlue] engineerTurretEye matches 51.. at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~ ~.2 ~ 0 0 0 0 1 force @a

execute if score @s[team=uBlue] engineerTurretEye matches ..60 at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~-.5 ~.2 ~ 0 0 0 0 1 force @a
execute if score @s[team=uBlue] engineerTurretEye matches 61.. at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~-.5 ~.2 ~ 0 0 0 0 1 force @a

execute if score @s[team=uBlue] engineerTurretEye matches ..70 at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~.5 ~.2 ~-.5 0 0 0 0 1 force @a
execute if score @s[team=uBlue] engineerTurretEye matches 71.. at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~.5 ~.2 ~-.5 0 0 0 0 1 force @a

execute if score @s[team=uBlue] engineerTurretEye matches ..80 at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~ ~.2 ~-.5 0 0 0 0 1 force @a
execute if score @s[team=uBlue] engineerTurretEye matches 81.. at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~ ~.2 ~-.5 0 0 0 0 1 force @a

execute if score @s[team=uBlue] engineerTurretEye matches ..90 at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~-.5 ~.2 ~-.5 0 0 0 0 1 force @a
execute if score @s[team=uBlue] engineerTurretEye matches 91.. at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~-.5 ~.2 ~-.5 0 0 0 0 1 force @a