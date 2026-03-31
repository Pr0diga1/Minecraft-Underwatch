clear @s

#armor/knife
item replace entity @s armor.feet with iron_boots[unbreakable={},enchantments={"minecraft:blast_protection":8,"minecraft:depth_strider":2},attribute_modifiers=[{id:"armor",type:"max_health",amount:-4,operation:"add_value",slot:"feet"},{id:"explosion_knockback_resistance",type:"explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"}]] 1
item replace entity @s armor.legs with iron_leggings[unbreakable={}]
item replace entity @s armor.chest with iron_chestplate[unbreakable={}]
item replace entity @s hotbar.0 with iron_block[custom_name={"color":"white","text":"Iron Hand"},attribute_modifiers=[{id:"damage",type:"attack_damage",amount:3.6,operation:"add_value"},{id:"armor",type:"attack_speed",amount:-3.25,operation:"add_value"}]] 1

#xp
experience set @s 100 levels
experience set @s 0 points

#values
scoreboard players set @s ability1 0
scoreboard players set @s ability2 0
scoreboard players set @s ability3 0
scoreboard players set @s ability4 0
scoreboard players set @s ability5 0
scoreboard players set @s cyborgaccellevel 0
scoreboard players set @s cyborgaccellevelbuffer 0
scoreboard players set @s cyborgcap 0
scoreboard players set @s cyborgzaptimer 0
scoreboard players set @s cyborgpreserve 0
scoreboard players set speedstep constant 15
scoreboard players set attackstep constant 200

attribute @s max_health base reset
attribute @s minecraft:attack_speed base reset
attribute @s movement_speed base reset

#carrots
item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name={"color":"blue","text":"Acceleration Module"},custom_data={cyborgspeed:1b},item_model="pitcher_plant"] 1
item replace entity @s hotbar.2 with carrot_on_a_stick[custom_name={"color":"light_purple","text":"Preservation Module"},custom_data={cyborgregen:1b},item_model="turtle_scute"] 1
item replace entity @s hotbar.3 with ender_eye[custom_name={"color":"dark_aqua","text":"Miniaturization Module"},custom_data={cyborgsize:1b}]
item replace entity @s hotbar.4 with carrot_on_a_stick[custom_name={"color":"yellow","text":"Overcharge Module"},custom_data={cyborgzap:1b},item_model="end_rod"] 1
item replace entity @s hotbar.5 with ender_eye[custom_name={"color":"gray","text":"Heatsinks"},custom_data={cyborgvent:1b}]


#run the class select
function under_pack:general_functions/general_character_select