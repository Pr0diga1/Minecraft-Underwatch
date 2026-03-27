execute if score @s elementalWaterState matches 1 run return run function under_pack:elemental_functions/elemental_water_destroy
execute if score @s elementalBar matches 1.. if score @s elementalWaterState matches 0 at @s anchored eyes positioned ^ ^ ^ anchored feet run function under_pack:elemental_functions/elemental_water_create
