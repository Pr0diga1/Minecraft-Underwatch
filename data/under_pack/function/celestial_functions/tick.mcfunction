execute if score @s celestance matches 1 run function under_pack:celestial_functions/sun/tick


#shine
execute as @a[scores={celetimer=1..}] run scoreboard players remove @s celetimer 1
execute as @a[scores={celetimer=1}] run attribute @s max_absorption base set 0