clear @s

#armor/knife
item replace entity @s armor.feet with iron_boots[unbreakable={show_in_tooltip:false}]
item replace entity @s armor.legs with chainmail_leggings[unbreakable={show_in_tooltip:false}]
item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:false}]
item replace entity @s hotbar.0 with iron_block[custom_name='{"color":"white","text":"Iron Hand"}',attribute_modifiers=[{id:"damage",type:"attack_damage",amount:3.1,operation:"add_value"},{id:"armor",type:"attack_speed",amount:-2.9,operation:"add_value"}]] 1

#xp
experience set @s 100 levels
experience set @s 0 points

#values
scoreboard players set @s cyborgcap 0
scoreboard players set @s cyborgzaptimer 0

#carrots
item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name='{"color":"blue","text":"Speed Module"}',custom_data={cyborgspeed:1b}] 1
item replace entity @s hotbar.2 with carrot_on_a_stick[custom_name='{"color":"light_purple","text":"Regeneration Module"}',custom_data={cyborgregen:1b}] 1
item replace entity @s hotbar.3 with ender_eye[custom_name='{"color":"dark_aqua","text":"Size Module"}',custom_data={cyborgsize:1b}]
item replace entity @s hotbar.4 with carrot_on_a_stick[custom_name='{"color":"yellow","text":"Overcharge Module"}',custom_data={cyborgzap:1b}] 1
item replace entity @s hotbar.5 with ender_eye[custom_name='{"color":"gray","text":"Heatsinks"}',custom_data={cyborgvent:1b}]
