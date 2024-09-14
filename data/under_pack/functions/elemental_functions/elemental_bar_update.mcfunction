execute if score @s elementalBarBuffer matches 1.. run experience add @s -1 points
execute if score @s elementalBarBuffer matches 1.. run scoreboard players remove @s elementalBarBuffer 1
execute if score @s elementalBarBuffer matches ..-1 run experience add @s 1 points
execute if score @s elementalBarBuffer matches ..-1 run scoreboard players add @s elementalBarBuffer 1
execute unless score @s elementalBarBuffer matches 0 run function under_pack:elemental_functions/elemental_bar_update