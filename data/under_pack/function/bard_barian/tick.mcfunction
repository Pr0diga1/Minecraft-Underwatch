# Check player is holding right click
scoreboard players remove @s ability1 1
execute if entity @s[tag=playing_axe,scores={ability1=..0}] run function under_pack:bard_barian/axe_stopped_playing


# Tick as the notes
execute if entity @s[team=uBlue] as @e[tag=Note,tag=uBlue] at @s run function under_pack:bard_barian/note_tick_blue
execute if entity @s[team=uRed] as @e[tag=Note,tag=uRed] at @s run function under_pack:bard_barian/note_tick_red