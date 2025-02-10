playsound entity.generic.explode master @a ~ ~ ~ 2 0.9
particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 10
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 0.5 10
particle minecraft:flame ~ ~1 ~ 2 2 2 0.2 20
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 2 2 2 0.1 30
particle minecraft:explosion ~ ~1 ~ 1 1 1 0.5 10

execute if entity @s[tag=uBlue] positioned ~-3 ~-3 ~-3 as @a[dx=6,dy=3,dz=6,team=uRed] run damage @s 10 player_attack by @p[team=uBlue,scores={class=13}]
execute if entity @s[tag=uRed] positioned ~-3 ~-3 ~-3 as @a[dx=6,dy=3,dz=6,team=uBlue] run damage @s 10 player_attack by @p[team=uRed,scores={class=13}]
kill @s
