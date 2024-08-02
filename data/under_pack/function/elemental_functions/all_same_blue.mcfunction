execute if score @s elementalWaterHit > ElementalWaterTiming constant run effect clear @s regeneration
execute if score @s elementalWaterHit > ElementalWaterTiming constant run scoreboard players set @s elementalWaterHit 0
execute if score @s elementalWaterHit = ElementalWaterTiming constant run function under_pack:elemental_functions/elemental_water_heal
