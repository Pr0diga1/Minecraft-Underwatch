kill @e[type=eye_of_ender]
stopsound @a * minecraft:entity.ender_eye.launch
stopsound @a * minecraft:entity.ender_eye.death
advancement revoke @s only under_pack:eye
execute if score @s class matches 4 run effect give @s resistance 1 2 true
execute at @s run particle minecraft:glow ~ ~.7 ~ .3 .5 .3 .001 30 force @a

execute if score @s blockIsActive matches ..1 run scoreboard players add @s blockIsActive 1


