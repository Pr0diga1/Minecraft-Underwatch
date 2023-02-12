#call the raycast
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function under_pack:archer_functions/archer_backstep_start

#reset the carrot on stick objective
scoreboard players reset @s reset

#cooldowns
scoreboard players set @s ability3 0