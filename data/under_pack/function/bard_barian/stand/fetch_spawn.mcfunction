execute store result storage bard_barian spawn.x int 1 run data get entity @s Pos[0]
execute store result storage bard_barian spawn.y int 1 run data get entity @s Pos[1]
execute store result storage bard_barian spawn.z int 1 run data get entity @s Pos[2]

execute store result score @s bard_barian_spawn_x run data get entity @s respawn.pos[0]
execute store result score @s bard_barian_spawn_y run data get entity @s respawn.pos[1]
execute store result score @s bard_barian_spawn_z run data get entity @s respawn.pos[2]

function under_pack:bard_barian/stand/set_spawn with storage bard_barian spawn



