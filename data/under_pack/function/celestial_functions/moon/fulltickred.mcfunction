tp @s ^ ^ ^.15
effect give @a[team=uRed,distance=..4,nbt=!{active_effects:[{id:"minecraft:regeneration"}]}] regeneration 2 2 true
particle minecraft:cloud ~ ~ ~ .3 .3 .3 .0001 2
execute unless block ~ ~ ~ #under_pack:non_solid run kill @s