## Chaos passive
execute store result score @s ability1 run data get entity @s Health 10
item modify entity @s hotbar.0 under_pack:dark_soul/damage_update

## Slam
# Detect right click
execute if entity @s[nbt={Inventory:[{Slot:0b,tag:{zwei:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{zwei:1b}}},scores={reset=1..}] run function under_pack:dark_soul_functions/slam

