scoreboard players operation @s celestance *= -1 constant
execute if score @s celestance matches 1 run function under_pack:celestial_functions/sun/start
execute if score @s celestance matches -1 run function under_pack:celestial_functions/moon/start
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{celeswap:1b}}}}]

effect give @s minecraft:instant_health 1 1
scoreboard players set @s ability6 200
