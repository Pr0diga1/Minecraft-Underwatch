stopsound @a * minecraft:entity.ender_eye.launch
stopsound @a * minecraft:entity.ender_eye.death
execute if score @s class matches 4 run effect give @s resistance 1 2 true
execute at @s run particle minecraft:glow ~ ~.7 ~ .3 .5 .3 .001 10 force @a

execute if score @s blockIsActive matches ..1 run scoreboard players add @s blockIsActive 1


