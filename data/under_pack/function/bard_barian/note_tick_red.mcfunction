execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=1,dy=1,dz=1,team=uBlue] run return run function under_pack:bard_barian/note_damage
execute if score @s ability2 matches 100.. run return run kill @s

particle minecraft:note ~ ~ ~ 0.2 0.2 0.2 0.1 2
scoreboard players add @s ability1 1
scoreboard players add @s ability2 1

execute if score @s ability1 matches 20.. run playsound minecraft:block.note_block.banjo master @p[team=uBlue] ~ ~ ~ 1 0.5

execute facing entity @p[team=uBlue] eyes run tp ^ ^ ^0.1