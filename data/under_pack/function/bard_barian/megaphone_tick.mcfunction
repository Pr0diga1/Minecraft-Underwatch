# Make sure to check for when they stop clicking
scoreboard players set @s ability4 2
tag @s add playing_megaphone
advancement revoke @s only under_pack:use_megaphone

execute if score @s ability3 matches 0 run return run function under_pack:bard_barian/marching_tick2
execute if entity @s[team=uBlue] as @e[tag=NoteL,tag=uBlue] run return run function under_pack:bard_barian/lovers_lament_note_tick
execute if entity @s[team=uRed] as @e[tag=NoteL,tag=uRed] run return run function under_pack:bard_barian/lovers_lament_note_tick
execute if score @s ability3 matches 2 run function under_pack:bard_barian/final_stand_tick2

say megaphone tick