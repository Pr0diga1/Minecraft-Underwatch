scoreboard players operation @s ability1 -= 40 num
scoreboard players operation @s ability1 /= TheNumberTwo constant

effect give @s resistance 1 6 true
tag @s add ninjaDashResist

execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function under_pack:ninja_functions/ninja_start_ray

#reset the carrot on stick objective
scoreboard players reset @s reset

#cooldowns
scoreboard players set @s ability1 0