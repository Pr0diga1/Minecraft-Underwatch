clear @s
execute if entity @s[team=uBlue] run item replace entity @s hotbar.0 with ender_eye[custom_name='{"color":"white","text":"Rifle"}',lore=['"its a gun."'],custom_model_data=4,custom_data={gunar:1b,blue:1b}] 1
execute if entity @s[team=uRed] run item replace entity @s hotbar.0 with ender_eye[custom_name='{"color":"white","text":"Rifle"}',lore=['"its a gun."'],custom_model_data=4,custom_data={gunar:1b,red:1b}] 1

item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name='{"color":"white","text":"Grenade Launcher"}',lore=['"sucky sucky"'],custom_model_data=52,custom_data={gungl:1b}] 1
item replace entity @s armor.head with iron_helmet[unbreakable={show_in_tooltip:false}] 1
item replace entity @s armor.chest with iron_chestplate[unbreakable={show_in_tooltip:false}] 1
item replace entity @s armor.legs with iron_leggings[unbreakable={show_in_tooltip:false}]
item replace entity @s armor.feet with iron_boots[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:depth_strider":2}}] 1

tag @s add gun
scoreboard players set @s ability1 0
scoreboard players set @s ability2 0
scoreboard players set @s ability3 0
scoreboard players set @s ability6 0
scoreboard players set @s ability8 520




function under_pack:general_functions/general_character_select














