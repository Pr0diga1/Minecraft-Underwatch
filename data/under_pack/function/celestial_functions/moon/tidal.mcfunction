scoreboard players set @s celetidal 100
tag @s add me

execute if score @s ability7 matches 0 anchored eyes positioned ^ ^ ^ run function under_pack:celestial_functions/moon/tidalcast

scoreboard players set @s ability7 3

advancement revoke @s only under_pack:celestial/tidal

tag @s remove me