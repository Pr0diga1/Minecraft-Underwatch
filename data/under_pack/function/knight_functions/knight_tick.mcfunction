execute if score @s blockIsActive matches 0.. run scoreboard players remove @s blockIsActive 1
execute if score @s blockIsActive matches 0 run function under_pack:knight_functions/knight_block_end

#block meter
execute if score @s ability2 matches ..739 run experience add @s 2 points
execute if score @s ability2 matches ..739 run scoreboard players add @s ability2 2

