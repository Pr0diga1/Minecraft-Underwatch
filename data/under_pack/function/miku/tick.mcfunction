# Can reload rifle
function under_pack:miku/rifle_tick
execute if score @s ability4 matches 1.. run function under_pack:miku/shotgun_tick
execute if score @s ability4 matches 0 run function under_pack:miku/shotgun_reload

# Make sure miku keeps the beam
execute if entity @s[predicate=!under_pack:miku/gun_missing] run function under_pack:miku/give_beam