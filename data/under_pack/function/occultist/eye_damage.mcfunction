execute if entity @s[team=uBlue] run damage @s 4 cactus by @p[scores={class=21},team=uRed]
execute if entity @s[team=uRed] run damage @s 4 cactus by @p[scores={class=21},team=uBlue]
kill @n[type=item_display,tag=EyeBeam]

playsound minecraft:entity.blaze.hurt player @s ~ ~ ~ 0.5 1.3

execute if entity @s[team=uBlue] as @p[scores={class=21},team=uRed] at @s run playsound minecraft:entity.blaze.hurt player @s ~ ~ ~ 0.5 1.3
execute if entity @s[team=uRed] as @p[scores={class=21},team=uBlue] at @s run playsound minecraft:entity.blaze.hurt player @s ~ ~ ~ 0.5 1.3

particle minecraft:enchant ~ ~ ~ 0 0 0 5 20
particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 1 20