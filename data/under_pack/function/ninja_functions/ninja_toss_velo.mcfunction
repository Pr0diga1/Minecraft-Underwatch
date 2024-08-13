execute positioned 0 0 0 positioned ^ ^ ^2 run tp @s[tag=ninjaArrow2] ~-.5 ~ ~-.5
execute positioned 0 0 0 positioned ^-.21 ^ ^2 run tp @s[tag=ninjaArrow1] ~-.5 ~ ~-.5
execute positioned 0 0 0 positioned ^.21 ^ ^2 run tp @s[tag=ninjaArrow3] ~-.5 ~ ~-.5

data modify entity @s Motion[0] set from entity @s Pos[0]
data modify entity @s Motion[2] set from entity @s Pos[2]
data modify storage ninja toss set from entity @s Pos[1]
execute positioned ~ ~1.2 ~ run tp @s ^ ^ ^1
data modify entity @s Motion[1] set from storage ninja toss

#only runs once
tag @s add tossMoved