scoreboard players set @s ability6 0
execute if entity @s[team=uBlue] if score @s ability8 matches 10 run item replace entity @s hotbar.0 with ender_eye[custom_name='{"color":"white","text":"Rifle"}',lore=['"its a gun."'],custom_model_data=4,custom_data={gunar:1b,blue:1b}] 1
execute if entity @s[team=uRed] if score @s ability8 matches 10 run item replace entity @s hotbar.0 with ender_eye[custom_name='{"color":"white","text":"Rifle"}',lore=['"its a gun."'],custom_model_data=4,custom_data={gunar:1b,red:1b}] 1
item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name='{"color":"white","text":"Grenade Launcher"}',lore=['"sucky sucky"'],custom_model_data=52,custom_data={gungl:1b}] 1



