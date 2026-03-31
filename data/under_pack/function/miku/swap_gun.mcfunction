scoreboard players add @s ability3 1

execute if score @s ability3 matches 1 run function under_pack:miku/give_beam
execute if score @s ability3 matches 2 run function under_pack:miku/give_shotgun
execute if score @s ability3 matches 3 run function under_pack:miku/give_rifle

# kill item
kill @n[type=item,limit=1]