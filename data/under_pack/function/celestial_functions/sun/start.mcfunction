item replace entity @s[team=uRed] hotbar.0 with golden_sword[attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:2,operation:"add_value"},{id:"attack_speed",type:"attack_speed",amount:-2.75,operation:"add_value"}],custom_data={celeswap:1b, celeshine:1b,red:1b},custom_name={"color":"yellow","text":"Shine"},unbreakable={}] 1
item replace entity @s[team=uRed] hotbar.1 with carrot_on_a_stick[custom_data={celeswap:1b, celenova:1b,red:1b},custom_name={"color":"dark_purple","text":"Supernova"},unbreakable={}] 1
item replace entity @s[team=uRed] hotbar.2 with carrot_on_a_stick[custom_data={celeswap:1b, celeset:1b,red:1b},custom_name={"color":"gold","text":"Sunset"},unbreakable={}] 1

item replace entity @s[team=uBlue] hotbar.0 with golden_sword[attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:2,operation:"add_value"},{id:"attack_speed",type:"attack_speed",amount:-2.75,operation:"add_value"}],custom_data={celeswap:1b, celeshine:1b,blue:1b},custom_name={"color":"yellow","text":"Shine"},unbreakable={}] 1
item replace entity @s[team=uBlue] hotbar.1 with carrot_on_a_stick[custom_data={celeswap:1b, celenova:1b,blue:1b},custom_name={"color":"dark_purple","text":"Supernova"},unbreakable={}] 1
item replace entity @s[team=uBlue] hotbar.2 with carrot_on_a_stick[custom_data={celeswap:1b, celeset:1b,blue:1b},custom_name={"color":"gold","text":"Sunset"},unbreakable={}] 1

item replace entity @s armor.head with golden_helmet[unbreakable={}]
item replace entity @s armor.chest with golden_chestplate[unbreakable={}]
item replace entity @s armor.legs with golden_leggings[unbreakable={}]
item replace entity @s armor.feet with golden_boots[attribute_modifiers=[{id:"scale",type:"scale",amount:0.1,operation:"add_value"},{id:"armor",type:"armor",amount:2,operation:"add_value"},{id:"explosion_knockback_resistance",type:"explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"},{id:"movement_speed",type:"movement_speed",amount:-0.01,operation:"add_value"}],unbreakable={},enchantments={"minecraft:blast_protection":8,"minecraft:depth_strider":2}] 1

scoreboard players reset @s celenova
scoreboard players set @s celestance 1

execute as @s[team=uRed] run scoreboard players reset @a[team=uRed] celeadjust
execute as @s[team=uBlue] run scoreboard players reset @a[team=uBlue] celeadjust

experience set @s 0 levels
experience set @s 0 points

effect give @s minecraft:regeneration 2 4 true
