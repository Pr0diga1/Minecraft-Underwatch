#the marker has existed for another tick
scoreboard players add @s wizardDistance 1

#move the marker
tp @s ^ ^ ^0.3

#particle
execute if score @s wizardDistance matches 0..40 run particle dust_color_transition 0.247 0 1 1 0.678 0.078 0.235 ~ ~ ~ 0.2 0.2 0.2 2 7 force
execute if score @s wizardDistance matches 41..80 run particle dust_color_transition 0 0.639 0.42 1 0.624 0.886 0.749 ~ ~ ~ 0.2 0.2 0.2 2 7 force
execute if score @s wizardDistance matches 81..180 run particle dust_color_transition 0.953 0.227 0.416 1 0.678 0.078 0.235 ~ ~ ~ 0.2 0.2 0.2 2 7 force

#explodes on a block or player
execute unless block ~ ~ ~ #under_pack:non_solid run function under_pack:wizard_functions/wizard_rainbow_explode

#kills the marker if it has existed for too long
execute if score @s wizardDistance matches 180.. run kill @s
