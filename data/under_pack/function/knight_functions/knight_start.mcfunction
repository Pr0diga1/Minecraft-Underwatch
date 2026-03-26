clear @s

#sword/block
item replace entity @s hotbar.0 with ender_eye[custom_name={"color":"white","text":"Reliquary Blade"},lore=["Only given to those worthy"],custom_data={knightsword:1b},attribute_modifiers=[{id:"damage",type:"attack_damage",amount:3,operation:"add_value",slot:"mainhand"},{id:"speed",type:"attack_speed",amount:-3.5,operation:"add_value",slot:"mainhand"}]] 1

#self heal
item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name={"color":"gold","text":"Selfish Prayer"},custom_data={knightheal:1b}] 1

#armor
item replace entity @s armor.chest with chainmail_chestplate[unbreakable={},attribute_modifiers=[{id:"hp",type:"max_health",amount:10,operation:"add_value"},{id:"armor",type:"armor",amount:5,operation:"add_value"}]] 1
item replace entity @s armor.legs with iron_leggings[unbreakable={},attribute_modifiers=[{id:"scale",type:"scale",amount:0.3,operation:"add_value",slot:"any"},{id:"armor_leg",type:"armor",amount:5,operation:"add_value"}]] 1
item replace entity @s armor.feet with iron_boots[attribute_modifiers=[{id:"explosion_knockback_resistance",type:"explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"},{id:"armor_boot",type:"armor",amount:2,operation:"add_value"}],unbreakable={},enchantments={"minecraft:blast_protection":8,"minecraft:depth_strider":2}] 1

scoreboard players set @s movement 319
scoreboard players set @s ability1 179

#run the class select
function under_pack:general_functions/general_character_select