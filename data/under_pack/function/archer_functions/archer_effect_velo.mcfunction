execute store result entity @s Pos[0] double 0.00012207031 run scoreboard players get $motion.x archerRay
execute store result entity @s Pos[1] double 0.00012207031 run scoreboard players get $motion.y archerRay
execute store result entity @s Pos[2] double 0.00012207031 run scoreboard players get $motion.z archerRay

execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1

execute store result score $motion.unit.x archerRay run data get entity @s Pos[0] 256
execute store result score $motion.unit.y archerRay run data get entity @s Pos[1] 256
execute store result score $motion.unit.z archerRay run data get entity @s Pos[2] 256