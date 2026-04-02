# Swap gun
execute as @s[predicate=under_pack:miku/gun_missing] if entity @e[predicate=under_pack:miku/gun_swap] run return run function under_pack:miku/swap_gun

# Seperate ticks for each gun
execute if score @s ability3 matches 0 run function under_pack:miku/rifle_tick
execute if score @s ability3 matches 2 run function under_pack:miku/shotgun_tick

execute if entity @s[predicate=under_pack:miku/gun_missing] run function under_pack:miku/give_beam