# Firing cooldown is decrimented
execute if score @s ability1 matches 1.. run scoreboard players remove @s ability1 1

# Reload crossbow reloads the rifle
execute if score @s ability2 matches 0 if predicate under_pack:miku/shotgun_loaded run function under_pack:miku/rifle_loaded