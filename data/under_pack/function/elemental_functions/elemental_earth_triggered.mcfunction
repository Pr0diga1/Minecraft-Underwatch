advancement revoke @s only under_pack:elemental/earth
execute if score @s ability1 matches 1.. run return fail
execute if score @s elementalBar matches 220.. run function under_pack:elemental_functions/elemental_earth
scoreboard players set @s ability1 11