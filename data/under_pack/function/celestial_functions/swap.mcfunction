scoreboard players operation @s celestance *= -1 constant
execute if score @s celestance matches 1 run function under_pack:celestial_functions/sun/start
execute if score @s celestance matches -1 run function under_pack:celestial_functions/moon/start
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{celeswap:1b}}}}]

scoreboard players set @s ability6 300

execute if entity @s[team=uRed] run kill @e[tag=celefull,tag=red]
execute if entity @s[team=uBlue] run kill @e[tag=celefull,tag=blue]

scoreboard players reset @s celenova