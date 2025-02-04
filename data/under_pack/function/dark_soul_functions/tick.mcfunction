## Humanity
# Gain Humanity
execute if score @s ultKills matches 1.. run function under_pack:dark_soul_functions/kill_got

## Estus
# Use estus
execute if score @s ability3 matches 1.. run scoreboard players remove @s ability3 1

## Immolation
execute if entity @s[tag=immolate] run scoreboard players add @s ability2 1
execute if entity @s[tag=immolate,scores={ability2=90..}] run function under_pack:dark_soul_functions/explode
