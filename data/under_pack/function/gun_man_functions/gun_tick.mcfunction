execute if score @s ability1 matches 1..4 run scoreboard players remove @s ability1 1
execute if score @s ability2 matches 1..45 run scoreboard players remove @s ability2 1


execute if entity @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{gunsg:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{gunsg:1b}}}},scores={reset=1..}] if score @s ability2 matches 0 as @s run function under_pack:gun_man_functions/gun_shotgun
execute if entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{gungl:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{gungl:1b}}}},scores={reset=1..}] if score @s ability3 matches 0 as @s run function under_pack:gun_man_functions/gun_grenade_launcher
scoreboard players set @s reset 0

execute if score @s ability8 matches 0 as @s run scoreboard players add @s ability6 1
execute if score @s ability6 matches 1 as @s run scoreboard players add @s ability8 10
execute if score @s ability6 matches 1 run item replace entity @s hotbar.0 with barrier
execute if score @s ability6 matches 1 run item replace entity @s hotbar.1 with barrier
execute if score @s ability8 matches 520 as @s run function under_pack:gun_man_functions/reload_two
execute if score @s ability8 matches 520 run scoreboard players remove @s ability8 20

execute as @s[team=uRed] if entity @e[type=item,nbt={Item:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_data":{gunar:1b,red:1b}}}}] at @s run function under_pack:gun_man_functions/gun_man_switch_ar
execute as @s[team=uBlue] if entity @e[type=item,nbt={Item:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_data":{gunar:1b,blue:1b}}}}] at @s run function under_pack:gun_man_functions/gun_man_switch_ar

execute as @s[team=uRed] if entity @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{gunsg:1b,red:1b}}}}] at @s run function under_pack:gun_man_functions/gun_man_switch_sg
execute as @s[team=uBlue] if entity @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{gunsg:1b,blue:1b}}}}] at @s run function under_pack:gun_man_functions/gun_man_switch_sg

execute if entity @s[team=uBlue] if score @s ability8 matches 10 run item replace entity @s hotbar.0 with ender_eye[custom_name='{"color":"white","text":"Rifle"}',lore=['"its a gun."'],custom_model_data=4,custom_data={gunar:1b,blue:1b}] 1
execute if entity @s[team=uRed] if score @s ability8 matches 10 run item replace entity @s hotbar.0 with ender_eye[custom_name='{"color":"white","text":"Rifle"}',lore=['"its a gun."'],custom_model_data=4,custom_data={gunar:1b,red:1b}] 1


