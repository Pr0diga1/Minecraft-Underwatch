execute store result score @s celeshine run data get entity @s AbsorptionAmount 1
scoreboard players operation @s celeshine += 1 constant

execute store result storage celestial shine.x int 1 run scoreboard players get @s celeshine

function under_pack:celestial_functions/sun/shineabsorb with storage celestial shine
effect clear @s absorption
effect give @s absorption 10 1
effect clear @s absorption

scoreboard players set @s celetimer 200

scoreboard players reset @s celeadjust
