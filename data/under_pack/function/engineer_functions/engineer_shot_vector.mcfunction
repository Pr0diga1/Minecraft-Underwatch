execute store result entity @s Pos[0] double 0.00012207031 run scoreboard players get $motion.x engineercap
execute store result entity @s Pos[1] double 0.00012207031 run scoreboard players get $motion.y engineercap
execute store result entity @s Pos[2] double 0.00012207031 run scoreboard players get $motion.z engineercap

execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1

execute store result score $motion.unit.x engineercap run data get entity @s Pos[0] 256
execute store result score $motion.unit.y engineercap run data get entity @s Pos[1] 256
execute store result score $motion.unit.z engineercap run data get entity @s Pos[2] 256