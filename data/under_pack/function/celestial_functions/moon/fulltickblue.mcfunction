tp @s ^ ^ ^.15
effect give @a[team=uBlue,distance=..4] regeneration 1 2 true
particle minecraft:cloud ~ ~ ~ .3 .3 .3 .0001 2
execute unless block ~ ~ ~ #under_pack:non_solid run kill @s