#lunar drops
execute as @s[team=uRed] run function under_pack:celestial_functions/moon/dropred
execute as @s[team=uBlue] run function under_pack:celestial_functions/moon/dropblue

#full moon
execute if entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{celefull:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{celefull:1b}}}},scores={reset=1..}] run function under_pack:celestial_functions/moon/fullmoon
execute if score @s celefull matches 1.. run scoreboard players remove @s celefull 1

execute if score @s[team=uRed] celefull matches 1.. as @e[limit=1,tag=red,tag=celefull] at @s rotated as @s run function under_pack:celestial_functions/moon/fulltickred
execute if score @s[team=uRed] celefull matches 0 as @e[limit=1,tag=red,tag=celefull] run kill @s

execute if score @s[team=uBlue] celefull matches 1.. as @e[limit=1,tag=blue,tag=celefull] at @s rotated as @s run function under_pack:celestial_functions/moon/fulltickblue
execute if score @s[team=uBlue] celefull matches 0 as @e[limit=1,tag=blue,tag=celefull] run kill @s

#tidal pull
execute if entity @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{celetidal:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{celetidal:1b}}}},scores={reset=1..}] run function under_pack:celestial_functions/moon/tidal


scoreboard players reset @s reset
function under_pack:celestial_functions/moon/cooldown