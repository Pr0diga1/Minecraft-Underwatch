playsound entity.generic.explode master @a ~ ~ ~ 2 0.9
particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 10
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 0.5 10
particle minecraft:flame ~ ~1 ~ 2 2 2 0.2 20
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 3 3 3 0.1 30
particle minecraft:explosion ~ ~1 ~ 1 1 1 0.5 10

execute if entity @s[tag=uBlue] positioned ~-1.5 ~-1.5 ~-1.5 as @a[dx=3,dy=3,dz=3,team=uRed] run damage @s 10 generic by @p[team=uBlue,scores={class=13}]
execute if entity @s[tag=uRed] positioned ~-1.5 ~-1.5 ~-1.5 as @a[dx=3,dy=3,dz=3,team=uBlue] run damage @s 10 generic by @p[team=uRed,scores={class=13}]
kill @s
