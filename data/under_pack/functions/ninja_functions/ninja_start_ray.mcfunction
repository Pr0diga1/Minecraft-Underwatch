tag @s add dashing
scoreboard players set hit ninjaRay 0
scoreboard players set distance ninjaRay 0
function under_pack:ninja_functions/ninja_ray
execute if score @s ninjaUltActive matches 0 at @s run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~
execute if score @s ninjaUltActive matches 1 at @s run playsound minecraft:entity.wither.shoot master @a ~ ~ ~
execute as @a run tag @s remove ninjaHit
tag @s remove dashing