clear @s
tag @s remove lumberDrop
#axe
item replace entity @s hotbar.0 with carrot_on_a_stick[custom_name='{"bold":true,"color":"dark_gray","text":"Trusty Axe"}',lore=['{"color":"dark_purple","text":"Simply Huge"}'],unbreakable={},custom_model_data=28,custom_data={lumberthrow:1b},attribute_modifiers=[{id:"armor",type:"generic.attack_damage",amount:6.5,operation:"add_value",slot:"mainhand"},{id:"armor",type:"generic.attack_speed",amount:-3.4,operation:"add_value",slot:"mainhand"}]] 1

#jump
item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name='{"color":"blue","text":"Strong Jump"}',custom_model_data=27,custom_data={lumberjump:1b}] 1

#armor
item replace entity @s armor.feet with leather_boots[attribute_modifiers=[{id:"explosion_knockback_resistance",type:"generic.explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"}],unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:blast_protection":8,"minecraft:depth_strider":2}}] 1
item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:false}]
item replace entity @s armor.chest with iron_chestplate[unbreakable={show_in_tooltip:false}]

scoreboard players set @s ability1 199

#clean arrows
kill @e[type=arrow,tag=lumbersweeparrow]

#run the class select
function under_pack:general_functions/general_character_select