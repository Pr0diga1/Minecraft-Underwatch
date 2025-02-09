# Make sure to check for when they stop clicking
scoreboard players set @s ability4 2
tag @s add playing_megaphone

execute if score @s ability3 matches 0 run return run function under_pack:bard_barian/marching_tick2
execute if score @s ability3 matches 1 run return run function under_pack:bard_barian/lovers_lament_tick2
execute if score @s ability3 matches 2 run function under_pack:bard_barian/final_stand_tick2