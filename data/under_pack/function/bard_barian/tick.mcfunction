# Check player is holding right click
scoreboard players remove @s ability1 1
execute if entity @s[tag=playing_axe,scores={ability1=..0}] run function under_pack:bard_barian/axe_stopped_playing

# Check player is holding right click
scoreboard players remove @s ability4 1
execute if entity @s[tag=playing_megaphone,scores={ability4=..0}] run function under_pack:bard_barian/megaphone_stopped

# Tick as the notes
execute if entity @s[team=uBlue] as @e[type=marker,tag=Note,tag=uBlue] at @s run function under_pack:bard_barian/note_tick_blue
execute if entity @s[team=uRed] as @e[type=marker,tag=Note,tag=uRed] at @s run function under_pack:bard_barian/note_tick_red

# Tick if playing marching shanty
execute if score @s ability3 matches 0 run function under_pack:bard_barian/marching_tick
execute if score @s ability3 matches 1 run function under_pack:bard_barian/lovers_lament_tick
execute if score @s ability3 matches 2 run function under_pack:bard_barian/final_stand_tick