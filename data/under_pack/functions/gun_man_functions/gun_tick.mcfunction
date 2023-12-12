execute if score @s ability1 matches 1..4 run scoreboard players remove @s ability1 1
execute if score @s ability2 matches 1..45 run scoreboard players remove @s ability2 1
execute if entity @s[nbt={Inventory:[{Slot:1b,tag:{gunsg:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{gunsg:1b}}},scores={reset=1..}] if score @s ability2 matches 0 as @s run function under_pack:gun_man_functions/gun_shotgun
execute if entity @s[nbt={Inventory:[{Slot:2b,tag:{gungl:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{gungl:1b}}},scores={reset=1..}] if score @s ability3 matches 0 as @s run function under_pack:gun_man_functions/gun_grenade_launcher
scoreboard players set @s reset 0
execute if score @s ability8 matches 500 as @s run function under_pack:gun_man_functions/reload
execute if score @s ability6 matches 1 as @s run scoreboard players remove @s ability8 10
execute if score @s ability8 matches 0 as @s run function under_pack:gun_man_functions/reload_two

