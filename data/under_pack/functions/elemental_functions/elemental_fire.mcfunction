#setup
scoreboard players set hit elementalFireTimer 0
scoreboard players set distance elementalFireTimer 0
#raycast
function under_pack:elemental_functions/elemental_fire_ray
#sound
stopsound @a master item.firecharge.use
execute at @s run playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 100 2
#cost
execute if score @s elementalBar matches 3.. run scoreboard players remove @s elementalBar 3
execute if score @s elementalBar matches ..2 run scoreboard players set @s elementalBar 0