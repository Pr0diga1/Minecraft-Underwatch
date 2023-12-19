## Chaos passive
execute store result score @s ability1 run data get entity @s Health 10
execute if score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Slot:0b,tag:{zwei:1b}}}] ability1 matches ..200 run enchant @s sharpness 1

## Slam
# Detect right click
