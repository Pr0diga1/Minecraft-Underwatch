#detection for the shotgun
execute if score @s gun_sg_cd matches 1 if entity @s[nbt={Inventory:[{Slot:1b,tag:{gunsg:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{gunsg:1b}}},scores={reset=1..}] as @s run function under_pack:gun_man_functions/gun_shotgun
execute if score @s gun_ar_cd matches 1..30 run scoreboard players remove @s gun_ar_cd 1