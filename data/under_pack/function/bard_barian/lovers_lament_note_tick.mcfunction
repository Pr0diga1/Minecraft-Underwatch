execute if entity @s[tag=uBlue] positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=1,dy=1,dz=1,team=uRed] run return run function under_pack:bard_barian/note_damage
execute if entity @s[tag=uRed] positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=1,dy=1,dz=1,team=uBlue] run return run function under_pack:bard_barian/note_damage
execute if score @s ability2 matches 100.. run return run kill @s

execute store result storage bard lament.class double 1 run scoreboard players get @s ability1
function under_pack:bard_barian/lovers_lament_note_move with storage bard lament

particle minecraft:note ~ ~ ~ 0.2 0.2 0.2 0.1 2