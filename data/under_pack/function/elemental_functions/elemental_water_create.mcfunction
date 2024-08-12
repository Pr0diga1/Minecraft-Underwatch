#setup
scoreboard players set hit elementalWaterState 0
scoreboard players set distance elementalWaterState 0
#raycast
function under_pack:elemental_functions/elemental_water_ray
#reset
scoreboard players reset @s reset

item modify entity @s hotbar.2 under_pack:elemental/startglitnt