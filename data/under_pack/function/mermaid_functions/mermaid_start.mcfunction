clear @s
item replace entity @s hotbar.0 with carrot_on_a_stick[minimum_attack_charge=1.0,custom_name={"color":"dark_aqua","text":"Poseidon's Back Scratcher"},unbreakable={},custom_data={mermaidburst:1b},attribute_modifiers=[{id:"speed",type:"attack_speed",amount:-2.2,operation:"add_value",slot:"mainhand"},{id:"damage",type:"attack_damage",amount:1.2,operation:"add_value",slot:"mainhand"}],item_model="trident"] 1
item replace entity @s hotbar.1 with breeze_rod[consumable={consume_seconds:10000,animation:"brush"},custom_name={"color":"dark_blue","text":"Nautical Mist"},custom_data={mermaidmist:1b}] 1
item replace entity @s hotbar.2 with carrot_on_a_stick[custom_name={"color":"aqua","text":"Dive"},unbreakable={},custom_data={mermaiddive:1b},item_model="water_bucket"] 1
item replace entity @s hotbar.3 with dried_ghast[consumable={consume_seconds:10000,animation:"spear"},custom_name={"color":"gray","text":"Rock Perch"},custom_data={mermaidperch:1b}] 1

scoreboard players set @s ability1 0

item replace entity @s armor.legs with diamond_leggings[unbreakable={}] 1
item replace entity @s armor.feet with diamond_boots[attribute_modifiers=[{id:"explosion_knockback_resistance",type:"explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"}],unbreakable={},enchantments={"minecraft:blast_protection":8,"minecraft:depth_strider":10}] 1
item replace entity @s armor.chest with leather_chestplate[unbreakable={},dyed_color=365567] 1

function under_pack:general_functions/general_character_select
function under_pack:mermaid_functions/mermaid_respawn

experience set @s 100 levels
experience set @s 741 points
scoreboard players set @s mermaidmist 741

scoreboard players set mermaidHealingConstant constant 4
scoreboard players set mermaidRedPerchConstant constant 8
scoreboard players set mermaidBluePerchConstant constant 8

execute as @s[team=uRed] run scoreboard players set @a[team=uRed] mermaidheal 1
execute as @s[team=uBlue] run scoreboard players set @a[team=uBlue] mermaidheal 1
