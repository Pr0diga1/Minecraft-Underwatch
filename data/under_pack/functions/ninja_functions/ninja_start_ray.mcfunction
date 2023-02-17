tag @s add dashing
scoreboard players set hit ninjaRay 0
scoreboard players set distance ninjaRay 0
function under_pack:ninja_functions/ninja_ray
execute at @s run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~
execute as @a run tag @s remove ninjaHit
tag @s remove dashing