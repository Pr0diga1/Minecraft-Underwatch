scoreboard players set @s celetidal 100
tag @s add me

scoreboard players set @s ability5 240
item replace entity @s hotbar.2 with barrier 12

execute anchored eyes positioned ^ ^ ^ run function under_pack:celestial_functions/moon/tidalcast

tag @s remove me