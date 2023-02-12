tag @s add stepping
scoreboard players set hit archerRay 0
scoreboard players set distance archerRay 0
function under_pack:archer_functions/archer_backstep_ray
playsound minecraft:item.armor.equip_elytra master @a ~ ~ ~
tag @s remove stepping