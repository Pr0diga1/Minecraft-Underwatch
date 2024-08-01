clear @s

#armor/knife
item replace entity @s armor.feet with iron_boots[unbreakable={show_in_tooltip:false}]
item replace entity @s armor.legs with iron_leggings[unbreakable={show_in_tooltip:false}]
item replace entity @s armor.chest with iron_chestplate[unbreakable={show_in_tooltip:false}]
item replace entity @s hotbar.0 with iron_block[custom_name='{"bold":true,"color":"dark_gray","text":"Metal Hand"}',custom_data={Tags:["cyborgsword"]},attribute_modifiers=[{id:"damage",type:"generic.attack_damage",amount:3.5,operation:"add_value"},{id:"armor",type:"generic.attack_speed",amount:-3.5,operation:"add_value"}]] 1

#xp
experience set @s 0 levels

#carrots
item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name='{"color":"blue","text":"Speed Module"}',custom_model_data=27,custom_data={cyborgspeed:1b}] 1
item replace entity @s hotbar.2 with carrot_on_a_stick[custom_name='{"color":"light_purple","text":"Regeneration Module"}',custom_model_data=27,custom_data={cyborgregen:1b}] 1
item replace entity @s hotbar.3 with carrot_on_a_stick[custom_name='{"color":"red","text":"Stength Module"}',custom_model_data=27,custom_data={cyborgstrong:1b}] 1

