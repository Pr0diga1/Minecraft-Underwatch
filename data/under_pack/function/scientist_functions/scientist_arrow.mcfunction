#fix damage darts
execute as @s[type=arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:0}}}}] on origin at @s[team=uRed] run tag @e[type=arrow,limit=1,sort=nearest,nbt={item:{components:{"minecraft:potion_contents":{custom_color:0}}}}] add red
execute as @s[type=arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:0}}}}] on origin at @s[team=uBlue] run tag @e[type=arrow,limit=1,sort=nearest,nbt={item:{components:{"minecraft:potion_contents":{custom_color:0}}}}] add blue
execute as @s[type=arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:0}}}}] at @s run function under_pack:scientist_functions/scientist_clone_damage

#give healing arrows the correct team tags
execute as @s[type=arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:16768256}}}}] on origin at @s[team=uRed] run tag @e[type=arrow,limit=1,sort=nearest,nbt={item:{components:{"minecraft:potion_contents":{custom_color:16768256}}}}] add red
execute as @s[type=arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:16768256}}}}] on origin at @s[team=uBlue] run tag @e[type=arrow,limit=1,sort=nearest,nbt={item:{components:{"minecraft:potion_contents":{custom_color:16768256}}}}] add blue
#replace healing arrows
execute as @s[type=arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:16768256}}}}] at @s run function under_pack:scientist_functions/scientist_clone_healing

#give team tags to lightning arrows
execute as @s[type=arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:16777215}}}}] on origin at @s[team=uRed] run tag @e[type=arrow,limit=1,sort=nearest,nbt={item:{components:{"minecraft:potion_contents":{custom_color:16777215}}}}] add red
execute as @s[type=arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:16777215}}}}] on origin at @s[team=uBlue] run tag @e[type=arrow,limit=1,sort=nearest,nbt={item:{components:{"minecraft:potion_contents":{custom_color:16777215}}}}] add blue
#replace lightning arrows
execute as @s[type=arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:16777215}}}}] at @s run function under_pack:scientist_functions/scientist_clone_lightning