## Humanity
# Gain Humanity
execute if score @s ultKills matches 1.. run function under_pack:dark_soul_functions/humanity_give

# Use humanity
execute if score @s ability2 matches 1.. run scoreboard players remove @s ability2 1

## Estus
# Use estus
execute if score @s ability3 matches 1.. run scoreboard players remove @s ability3 1

## Roll
# Use roll
# scores={ability4=20..},
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{zwei:1b}}},scores={reset=1..}] run function under_pack:dark_soul_functions/roll_init
#execute as @e[tag=mover] at @s facing entity @e[tag=vector,sort=nearest,limit=1] eyes run function under_pack:dark_soul_functions/mover