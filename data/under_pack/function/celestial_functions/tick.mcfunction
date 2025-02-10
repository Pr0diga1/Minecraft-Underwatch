execute if score @s celestance matches 1 run function under_pack:celestial_functions/sun/tick
execute if score @s celestance matches -1 run function under_pack:celestial_functions/moon/tick

#shine
execute as @a[scores={celetimer=1..}] run scoreboard players remove @s celetimer 1
execute as @a[scores={celetimer=1}] run attribute @s max_absorption base set 0

#swappy swap
execute if score @s[team=uRed] ability6 matches 0 if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{celeswap:1b,red:1b}}}}] run function under_pack:celestial_functions/swap
execute if score @s[team=uBlue] ability6 matches 0 if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{celeswap:1b,blue:1b}}}}] run function under_pack:celestial_functions/swap
execute if score @s ability6 matches 1.. run scoreboard players remove @s ability6 1

scoreboard players operation @s celeswap = @s ability6
scoreboard players operation @s celeswap /= 20 constant

title @s actionbar [{"color":"gold","text":"Swap on Cooldown: "},{"color":"dark_aqua","score":{"name":"@s","objective":"celeswap"}}]
execute if score @s ability6 matches 0 run title @s actionbar [""]
