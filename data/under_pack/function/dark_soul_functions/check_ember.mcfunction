execute if score @s ability2 matches 250.. run function under_pack:dark_soul_functions/give_flame
execute if score @s ability2 matches 475.. run function under_pack:dark_soul_functions/give_power

execute if score @s ability2 matches ..250 run item replace entity @s hotbar.1 with barrier
execute if score @s ability2 matches ..475 run item replace entity @s hotbar.2 with barrier
