execute as @s[tag=uDead] run return fail

execute if score @s blockIsActive matches 0.. run scoreboard players remove @s blockIsActive 1
execute if score @s blockIsActive matches 0 run function under_pack:knight_functions/knight_block_end

#block meter
execute if score @s ability2 matches ..738 run experience add @s 3 points
execute if score @s ability2 matches ..738 run scoreboard players add @s ability2 3

