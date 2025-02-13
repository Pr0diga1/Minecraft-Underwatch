scoreboard players set @s celetidal 100
tag @s add me

scoreboard players set @s ability5 240

item replace entity @s[team=uRed] hotbar.2 with barrier[custom_data={"celeswap":1b,"red":1b}] 12
item replace entity @s[team=uBlue] hotbar.2 with barrier[custom_data={"celeswap":1b,"blue":1b}] 12


execute anchored eyes positioned ^ ^ ^ run function under_pack:celestial_functions/moon/tidalcast

tag @s remove me