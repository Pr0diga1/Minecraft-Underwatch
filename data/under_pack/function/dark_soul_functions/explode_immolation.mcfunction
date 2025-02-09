playsound entity.generic.explode master @a ~ ~ ~ 1 1
particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 10
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 0.5 10
particle minecraft:flame ~ ~1 ~ 2 2 2 0.2 20
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 2 2 2 0.1 30
particle minecraft:explosion ~ ~1 ~ 1 1 1 0.5 10

execute if entity @s[team=uBlue] positioned ~-3 ~-2 ~-3 as @a[dx=6,dy=3,dz=6,team=uRed] run damage @s 8 player_attack by @p[tag=immolate]
execute if entity @s[team=uRed] positioned ~-3 ~-2 ~-3 as @a[dx=6,dy=6,dz=6,team=uBlue] run damage @s 8 player_attack by @p[tag=immolate]
damage @s 12 minecraft:explosion
tag @s remove immolate
scoreboard players reset @s ability2
