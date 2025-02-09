# Remove tags and scoreboards
tag @s remove playing_megaphone
scoreboard players reset @s ability4

execute as @a[tag=marching,team=uBlue] run attribute @s attack_speed base set 4
execute as @a[tag=marching,team=uRed] run attribute @s attack_speed base set 4

execute as @a[tag=final_stand,team=uBlue] run attribute @s knockback_resistance base set 0
execute as @a[tag=final_stand,team=uRed] run attribute @s knockback_resistance base set 0