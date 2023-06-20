tag @s add dashing
scoreboard players set hit ninjaRay 0
scoreboard players operation distance ninjaRay = @s ability1
function under_pack:ninja_functions/ninja_ray
execute at @s[scores={ability1=..79}] run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 100 1.5
execute at @s[scores={ability1=80}] run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~
execute as @a run tag @s remove ninjaHit
tag @s remove dashing