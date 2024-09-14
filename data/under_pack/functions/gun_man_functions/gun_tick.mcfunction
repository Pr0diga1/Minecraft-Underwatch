execute if score @s ability1 matches 1..4 run scoreboard players remove @s ability1 1
execute if score @s ability2 matches 1..45 run scoreboard players remove @s ability2 1
execute if entity @s[nbt={Inventory:[{Slot:0b,tag:{gunsg:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{gunsg:1b}}},scores={reset=1..}] if score @s ability2 matches 0 as @s run function under_pack:gun_man_functions/gun_shotgun
execute if entity @s[nbt={Inventory:[{Slot:1b,tag:{gungl:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{gungl:1b}}},scores={reset=1..}] if score @s ability3 matches 0 as @s run function under_pack:gun_man_functions/gun_grenade_launcher
scoreboard players set @s reset 0
execute if score @s ability8 matches 500 as @s run function under_pack:gun_man_functions/reload
execute if score @s ability6 matches 1 as @s run scoreboard players remove @s ability8 10
execute if score @s ability8 matches 0 as @s run function under_pack:gun_man_functions/reload_two
execute as @s[team=uRed] if entity @e[type=item,nbt={Item:{id:"minecraft:ender_eye",Count:1b,tag:{gunar:1b,red:1b}}}] at @s run function under_pack:gun_man_functions/gun_man_switch_ar
execute as @s[team=uBlue] if entity @e[type=item,nbt={Item:{id:"minecraft:ender_eye",Count:1b,tag:{gunar:1b,blue:1b}}}] at @s run function under_pack:gun_man_functions/gun_man_switch_ar
execute if entity @s[team=uBlue] if score @s ability8 matches 10 run item replace entity @s hotbar.0 with ender_eye{CustomModelData:4,display:{Name:'{"text":"Rifle","color":"white"}',Lore:['{"text":"its a gun."}']},HideFlags:5,gunar:1b,blue:1b}
execute if entity @s[team=uRed] if score @s ability8 matches 10 run item replace entity @s hotbar.0 with ender_eye{CustomModelData:4,display:{Name:'{"text":"Rifle","color":"white"}',Lore:['{"text":"its a gun."}']},HideFlags:5,gunar:1b,red:1b}
execute as @s[team=uRed] if entity @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gunsg:1b,red:1b}}}] at @s run function under_pack:gun_man_functions/gun_man_switch_sg
execute as @s[team=uBlue] if entity @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gunsg:1b,blue:1b}}}] at @s run function under_pack:gun_man_functions/gun_man_switch_sg
execute as @e[type=armor_stand,tag=gun_man_nade,limit=1,sort=nearest,tag=nade_frozen] at @s run function under_pack:gun_man_functions/grenade_pull