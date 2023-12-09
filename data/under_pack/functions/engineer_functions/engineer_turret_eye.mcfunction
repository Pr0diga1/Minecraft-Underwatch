#iterate the variable every tick the eye was held down
scoreboard players add @s engineerTurretEye 1

#if it is the first tick, start the ray
execute if score @s engineerTurretEye matches 1 at @s anchored eyes positioned ^ ^ ^ anchored feet run function under_pack:engineer_functions/engineer_turret_ray_start


# particles red
execute if score @s[team=uRed] engineerTurretEye matches ..8 at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~.5 ~.2 ~.5 0 0 0 0 1 force @a
execute if score @s[team=uRed] engineerTurretEye matches 9.. at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~.5 ~.2 ~.5 0 0 0 0 1 force @a

execute if score @s[team=uRed] engineerTurretEye matches ..16 at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~ ~.2 ~.5 0 0 0 0 1 force @a
execute if score @s[team=uRed] engineerTurretEye matches 17.. at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~ ~.2 ~.5 0 0 0 0 1 force @a

execute if score @s[team=uRed] engineerTurretEye matches ..24 at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~-.5 ~.2 ~.5 0 0 0 0 1 force @a
execute if score @s[team=uRed] engineerTurretEye matches 25.. at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~-.5 ~.2 ~.5 0 0 0 0 1 force @a

execute if score @s[team=uRed] engineerTurretEye matches ..32 at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~.5 ~.2 ~ 0 0 0 0 1 force @a
execute if score @s[team=uRed] engineerTurretEye matches 33.. at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~.5 ~.2 ~ 0 0 0 0 1 force @a

execute if score @s[team=uRed] engineerTurretEye matches ..40 at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~ ~.2 ~ 0 0 0 0 1 force @a
execute if score @s[team=uRed] engineerTurretEye matches 41.. at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~ ~.2 ~ 0 0 0 0 1 force @a

execute if score @s[team=uRed] engineerTurretEye matches ..48 at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~-.5 ~.2 ~ 0 0 0 0 1 force @a
execute if score @s[team=uRed] engineerTurretEye matches 49.. at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~-.5 ~.2 ~ 0 0 0 0 1 force @a

execute if score @s[team=uRed] engineerTurretEye matches ..56 at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~.5 ~.2 ~-.5 0 0 0 0 1 force @a
execute if score @s[team=uRed] engineerTurretEye matches 57.. at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~.5 ~.2 ~-.5 0 0 0 0 1 force @a

execute if score @s[team=uRed] engineerTurretEye matches ..64 at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~ ~.2 ~-.5 0 0 0 0 1 force @a
execute if score @s[team=uRed] engineerTurretEye matches 65.. at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~ ~.2 ~-.5 0 0 0 0 1 force @a

execute if score @s[team=uRed] engineerTurretEye matches ..72 at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~-.5 ~.2 ~-.5 0 0 0 0 1 force @a
execute if score @s[team=uRed] engineerTurretEye matches 73.. at @e[type=marker,tag=redEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~-.5 ~.2 ~-.5 0 0 0 0 1 force @a


# particles ble
execute if score @s[team=uBlue] engineerTurretEye matches ..8 at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~.5 ~.2 ~.5 0 0 0 0 1 force @a
execute if score @s[team=uBlue] engineerTurretEye matches 9.. at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~.5 ~.2 ~.5 0 0 0 0 1 force @a

execute if score @s[team=uBlue] engineerTurretEye matches ..16 at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~ ~.2 ~.5 0 0 0 0 1 force @a
execute if score @s[team=uBlue] engineerTurretEye matches 17.. at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~ ~.2 ~.5 0 0 0 0 1 force @a

execute if score @s[team=uBlue] engineerTurretEye matches ..24 at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~-.5 ~.2 ~.5 0 0 0 0 1 force @a
execute if score @s[team=uBlue] engineerTurretEye matches 25.. at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~-.5 ~.2 ~.5 0 0 0 0 1 force @a

execute if score @s[team=uBlue] engineerTurretEye matches ..32 at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~.5 ~.2 ~ 0 0 0 0 1 force @a
execute if score @s[team=uBlue] engineerTurretEye matches 33.. at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~.5 ~.2 ~ 0 0 0 0 1 force @a

execute if score @s[team=uBlue] engineerTurretEye matches ..40 at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~ ~.2 ~ 0 0 0 0 1 force @a
execute if score @s[team=uBlue] engineerTurretEye matches 41.. at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~ ~.2 ~ 0 0 0 0 1 force @a

execute if score @s[team=uBlue] engineerTurretEye matches ..48 at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~-.5 ~.2 ~ 0 0 0 0 1 force @a
execute if score @s[team=uBlue] engineerTurretEye matches 49.. at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~-.5 ~.2 ~ 0 0 0 0 1 force @a

execute if score @s[team=uBlue] engineerTurretEye matches ..56 at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~.5 ~.2 ~-.5 0 0 0 0 1 force @a
execute if score @s[team=uBlue] engineerTurretEye matches 57.. at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~.5 ~.2 ~-.5 0 0 0 0 1 force @a

execute if score @s[team=uBlue] engineerTurretEye matches ..64 at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~ ~.2 ~-.5 0 0 0 0 1 force @a
execute if score @s[team=uBlue] engineerTurretEye matches 65.. at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~ ~.2 ~-.5 0 0 0 0 1 force @a

execute if score @s[team=uBlue] engineerTurretEye matches ..72 at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust .4 .4 .4 1 ~-.5 ~.2 ~-.5 0 0 0 0 1 force @a
execute if score @s[team=uBlue] engineerTurretEye matches 73.. at @e[type=marker,tag=blueEngineerTurret,limit=1,sort=nearest] run particle dust 0.067 1 0 1 ~-.5 ~.2 ~-.5 0 0 0 0 1 force @a

#cancel if waited for too long
execute if score @s engineerTurretEye matches 110.. run scoreboard players set @s engineerTurretEye 1