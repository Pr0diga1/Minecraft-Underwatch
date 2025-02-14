execute if entity @s[team=uBlue] run damage @s 2 cactus by @p[scores={class=21},team=uRed]
execute if entity @s[team=uRed] run damage @s 2 cactus by @p[scores={class=21},team=uBlue]

playsound minecraft:entity.blaze.ambient player @a ~ ~ ~ 0.5 0.2
particle minecraft:enchant ~ ~ ~ 0 0 0 5 20
particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 1 20