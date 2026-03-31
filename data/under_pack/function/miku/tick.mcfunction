# count down ability 1 for rifle cooldown
execute if score @s ability1 matches 1.. run scoreboard players remove @s ability1 1

execute if entity @e[predicate=under_pack:miku/gun_swap] run function under_pack:miku/swap_gun