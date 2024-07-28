clear @s

#sword/block
item replace entity @s hotbar.0 with ender_eye[custom_name='{"color":"white","text":"Reliquary Blade"}',lore=['"Only given to those worthy"'],custom_model_data=1,custom_data={knightsword:1b},attribute_modifiers=[{id:"armor",type:"generic.attack_damage",amount:3.3,operation:"add_value",slot:"mainhand"},{id:"armor",type:"generic.attack_speed",amount:-3.2,operation:"add_value",slot:"mainhand"}]] 1

#self heal
item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name='{"color":"gold","text":"Selfish Prayer"}',custom_model_data=44,custom_data={knightheal:1b}] 1

#grenade
execute if entity @s[team=uRed] run item replace entity @s hotbar.2 with snowball[custom_name='{"color":"dark_green","text":"Holy Hand Grenade"}',custom_model_data=1,custom_data={knightbomb:1b,red:1b}] 1
execute if entity @s[team=uBlue] run item replace entity @s hotbar.2 with snowball[custom_name='{"color":"dark_green","text":"Holy Hand Grenade"}',custom_model_data=1,custom_data={knightbomb:1b,blue:1b}] 1

#armor
item replace entity @s armor.chest with chainmail_chestplate[unbreakable={show_in_tooltip:false},attribute_modifiers={modifiers:[{id:"armor",type:"generic.max_health",amount:12,operation:"add_value"}],show_in_tooltip:false}] 1
item replace entity @s armor.legs with iron_leggings[unbreakable={show_in_tooltip:false}]
item replace entity @s armor.feet with iron_boots[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:blast_protection":8,"minecraft:depth_strider":2}}] 1

scoreboard players set @s movement 319
scoreboard players set @s ability1 179

#run the class select
function under_pack:general_functions/general_character_select