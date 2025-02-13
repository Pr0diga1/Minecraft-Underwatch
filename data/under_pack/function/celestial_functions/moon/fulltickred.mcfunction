tp @s ^ ^ ^.15
execute as @a[team=uRed,distance=..4,nbt=!{active_effects:[{id:"minecraft:regeneration"}]}] unless entity @s[scores={class=20}] run effect give @s regeneration 2 2 true
execute as @a[team=uRed,distance=..4] unless entity @s[scores={class=20}] at @s run particle electric_spark ~ ~2 ~ .2 .2 .2 1 1
particle minecraft:glow ^.5 ^.5 ^ .2 .2 .2 .0001 1
execute unless block ~ ~ ~ #under_pack:non_solid run kill @s