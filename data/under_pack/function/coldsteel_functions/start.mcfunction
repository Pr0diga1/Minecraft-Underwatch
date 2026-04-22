clear @s
item replace entity @s[team=uRed] hotbar.0 with carrot_on_a_stick[lore=["q to BLAST NINE INCE NAILS (the band)"],custom_name={"bold":true,"color":"dark_red","text":"FINGER NINE INCH NALS"},unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:3.5,operation:"add_value"},{id:"attack_speed",type:"attack_speed",amount:-2.1,operation:"add_value"}],custom_data={coldtp:1b, red:1b},item_model="pale_hanging_moss",enchantments={"under_pack:coldsteel/cold":1},enchantment_glint_override=false,attack_range={min_reach:0.0,max_reach:3.0,min_creative_reach:0.0,max_creative_reach:5.0,hitbox_margin:0.5}] 1
item replace entity @s[team=uBlue] hotbar.0 with carrot_on_a_stick[lore=["q to BLAST NINE INCE NAILS (the band)"],custom_name={"bold":true,"color":"dark_red","text":"FINGER NINE INCH NALS"},unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:3.5,operation:"add_value"},{id:"attack_speed",type:"attack_speed",amount:-2.1,operation:"add_value"}],custom_data={coldtp:1b, blue:1b},item_model="pale_hanging_moss",enchantments={"under_pack:coldsteel/cold":1},enchantment_glint_override=false,attack_range={min_reach:0.0,max_reach:3.0,min_creative_reach:0.0,max_creative_reach:5.0,hitbox_margin:0.5}] 1

item replace entity @s armor.chest with leather_chestplate[trim={pattern:'silence',material:'amethyst'},unbreakable={},dyed_color=0,attribute_modifiers=[{id:"max_health",type:"max_health",amount:-6,operation:"add_value"}]]
item replace entity @s armor.legs with chainmail_leggings[unbreakable={}]
item replace entity @s armor.feet with leather_boots[trim={pattern:'silence',material:'amethyst'},dyed_color=0,attribute_modifiers=[{id:"scale",type:"scale",amount:-.1,operation:"add_value"},{id:"explosion_knockback_resistance",type:"explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"}],unbreakable={},enchantments={"minecraft:blast_protection":8,"minecraft:depth_strider":2}]

scoreboard players set @s coldsteellunge -1

function under_pack:general_functions/general_character_select

experience set @s 100 levels
experience set @s 741 points