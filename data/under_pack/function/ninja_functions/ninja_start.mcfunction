clear @s
#Sword
item replace entity @s hotbar.0 with carrot_on_a_stick[custom_name='{"color":"dark_gray","text":"Katana"}',lore=['"Right Click to dash"'],unbreakable={},custom_data={ninjaDash:1b},attribute_modifiers=[{id:"armor",type:"attack_damage",amount:4.5,operation:"add_value",slot:"mainhand"},{id:"armor",type:"attack_speed",amount:-2.7,operation:"add_value",slot:"mainhand"}]] 1

#Toss
item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name='{"color":"blue","text":"Shuriken Throw"}',custom_data={ninjaToss:1b}] 1

#Hyperventilate
item replace entity @s hotbar.2 with carrot_on_a_stick[custom_name='{"color":"gold","text":"Brass Knuckles"}',lore=['"Right Click to hyperventilate"'],custom_data={ninjaHyperventilate:1b},attribute_modifiers=[{id:"armor",type:"attack_damage",amount:2,operation:"add_value",slot:"mainhand"},{id:"armor",type:"attack_speed",amount:-2,operation:"add_value",slot:"mainhand"}]] 1

#armor
item replace entity @s armor.legs with chainmail_leggings[unbreakable={}]
item replace entity @s armor.chest with iron_chestplate[unbreakable={}]
item replace entity @s armor.feet with leather_boots[unbreakable={},enchantments={"minecraft:blast_protection":8,"minecraft:depth_strider":2},attribute_modifiers=[{id:"armor",type:"max_health",amount:-4,operation:"add_value",slot:"feet"},{id:"explosion_knockback_resistance",type:"explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"}]] 1
#hyperventilate
scoreboard players set @s ninjaHyperventilate 0

#cooldown
scoreboard players set @s ability1 199
scoreboard players set @s ability2 1
scoreboard players set @s ability3 1

tag @a remove dashing
tag @s remove ninjaDashResist

#run the class select
function under_pack:general_functions/general_character_select