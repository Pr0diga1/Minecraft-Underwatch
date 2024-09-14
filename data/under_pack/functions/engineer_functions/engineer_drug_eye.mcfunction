#add 1 to the eye timer
scoreboard players add @s engineerViagraTimer 1

#on first tick run the raycast
execute if score @s engineerViagraTimer matches 1 at @s anchored eyes positioned ^ ^ ^ anchored feet run function under_pack:engineer_functions/engineer_drug_ray_start

execute as @s[team=uRed] at @a[tag=redViagraTarget] run particle dust 1 0 0 1 ~ ~1 ~ 0.3 0.6 0.3 0 16 force @s
execute as @s[team=uBlue] at @a[tag=blueViagraTarget] run particle dust 1 0 0 1 ~ ~1 ~ 0.3 0.6 0.3 0 16 force @s