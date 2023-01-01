scoreboard players reset @s reset
effect give @s minecraft:regeneration 4 3 true
#execute at @s run particle minecraft:poof ~ ~ ~ .3 1 .3 .1 60 force @a
execute at @s run particle minecraft:dust 0.953 0.431 1 1 ~ ~ ~ .5 1 .5 .1 100 force @a

execute at @s run playsound minecraft:entity.allay.ambient_without_item master @a[x_rotation=8..]
scoreboard players set @s movement 0
item replace entity @s hotbar.1 with glistering_melon_slice 13

