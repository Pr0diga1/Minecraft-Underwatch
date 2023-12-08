clear @s
#detection for the shotgun
execute if entity @s[nbt={Inventory:[{Slot:1b,tag:{gunsg:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{gunsg:1b}}},scores={reset=1..}] as @s run function under_pack:gun_man_functions/gun_shotgun
execute if entity @s[nbt={Inventory:[{Slot:0b,tag:{gunar:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{gunar:1b}}},scores={reset=1..}] as @s run function under_pack:gun_man_functions/gun_ar


execute run function under_pack:gun_man_functions/gun_shotgun_cd