clear @s
item replace entity @s armor.chest with diamond_chestplate[unbreakable={},custom_data={wave:1b}] 1
item replace entity @s armor.legs with diamond_leggings[unbreakable={}] 1
item replace entity @s armor.head with diamond_helmet[unbreakable={}] 1
item replace entity @s armor.feet with diamond_boots[unbreakable={}] 1
item replace entity @s hotbar.0 with black_stained_glass_pane[attribute_modifiers=[{id:"attack_damage",type:"generic.attack_damage",amount:5.5,operation:"add_value"},{id:"attack_speed",type:"generic.attack_speed",amount:-2.8,operation:"add_value"}],custom_name='{"text":"Door"}']

execute if entity @s[team=uRed] run kill @e[tag=microride,tag=red]
execute if entity @s[team=uBlue] run kill @e[tag=microride,tag=blue]