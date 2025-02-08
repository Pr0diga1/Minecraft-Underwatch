execute as @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{elementalWater:1b}}}]},scores={reset=1..}] if score @s elementalBar matches 1.. if score @s elementalWaterState matches 1 run function under_pack:elemental_functions/elemental_water_destroy
execute as @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{elementalWater:1b}}}]},scores={reset=1..}] if score @s elementalBar matches 1.. if score @s elementalWaterState matches 0 at @s anchored eyes positioned ^ ^ ^ anchored feet run function under_pack:elemental_functions/elemental_water_create
execute as @s[tag=elementalsetstate] run scoreboard players set @s elementalWaterState 0
execute as @s[tag=elementalsetstate] run tag @s remove elementalsetstate
scoreboard players reset @s reset