#setup
scoreboard players set hit elementalFireTimer 0
scoreboard players set distance elementalFireTimer 0
#clear tag
tag @a remove elementalHit
#raycast
function under_pack:elemental_functions/elemental_fire_ray
#particle
execute at @s anchored eyes positioned ^ ^ ^ run function under_pack:elemental_functions/elemental_fire_particle
#cost
execute if score @s elementalBar matches 5.. run scoreboard players remove @s elementalBar 5
execute if score @s elementalBar matches 5.. run experience add @s -5 points
execute if score @s elementalBar matches ..4 run scoreboard players set @s elementalBar 0
execute if score @s elementalBar matches ..4 run experience set @s 0 points
execute if score @s elementalBar matches ..4 run experience set @s 100 levels