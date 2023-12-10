execute if score @s ability1 matches 1..7 run scoreboard players remove @s ability1 1
execute if score @s ability2 matches 1..18 run scoreboard players remove @s ability2 1
execute if entity @s[nbt={Inventory:[{Slot:1b,tag:{gunsg:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{gunsg:1b}}},scores={reset=1..}] if score @s ability2 matches 0 as @s run function under_pack:gun_man_functions/gun_shotgun
scoreboard players set @s reset 0