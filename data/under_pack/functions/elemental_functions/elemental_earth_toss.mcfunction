#change rotation
execute as @s[team=uRed] run data modify entity @e[type=armor_stand,tag=redElementalEarth,limit=1,sort=nearest] Rotation set from entity @s Rotation
execute as @s[team=uBlue] run data modify entity @e[type=armor_stand,tag=blueElementalEarth,limit=1,sort=nearest] Rotation set from entity @s Rotation