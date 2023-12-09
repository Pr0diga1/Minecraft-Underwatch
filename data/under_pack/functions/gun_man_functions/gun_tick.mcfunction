#detection for the shotgun
execute if score @s ability2 matches 1 if entity @s[nbt={Inventory:[{Slot:1b,tag:{gunsg:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{gunsg:1b}}},scores={reset=1..}] as @s run function under_pack:gun_man_functions/gun_shotgun
execute if score @s ability1 matches 1..7 run scoreboard players remove @s ability1 1