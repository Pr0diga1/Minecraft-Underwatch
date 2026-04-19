# Check player is holding right click
scoreboard players remove @s ability1 1
execute if entity @s[tag=playing_axe,scores={ability1=..0}] run function under_pack:bard_barian/axe/axe_stopped_playing

# Tick as the notes
execute if entity @s[team=uBlue] as @e[type=marker,tag=Note,tag=uBlue] at @s run function under_pack:bard_barian/axe/note_tick_blue
execute if entity @s[team=uRed] as @e[type=marker,tag=Note,tag=uRed] at @s run function under_pack:bard_barian/axe/note_tick_red

#megaphone loop
execute if score @s ability4 matches 8 run scoreboard players set @s ability4 0
execute if score @s ability5 matches 1.. run scoreboard players remove @s ability5 1
execute if score @s ability5 matches 1 run scoreboard players set @s ability4 0 

# Tick if playing marching shanty
execute if score @s ability3 matches 1 run function under_pack:bard_barian/march/march_tick
execute if score @s ability3 matches 2 run function under_pack:bard_barian/lovers/lover_tick
execute if score @s ability3 matches 3 run function under_pack:bard_barian/stand/stand_tick

#trigger ticks
execute if score @s bard_barian_song matches 1 run function under_pack:bard_barian/march/march_select
execute if score @s bard_barian_song matches 2 run function under_pack:bard_barian/lovers/lover_select
execute if score @s bard_barian_song matches 3 run function under_pack:bard_barian/stand/stand_select

#inrange
execute if entity @s[team=uRed] as @a[team=uRed] if score @s bard_barian_inrange matches 1.. run scoreboard players remove @s bard_barian_inrange 1
execute if entity @s[team=uBlue] as @a[team=uBlue] if score @s bard_barian_inrange matches 1.. run scoreboard players remove @s bard_barian_inrange 1
