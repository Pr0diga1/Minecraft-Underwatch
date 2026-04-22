#give thing back
execute if entity @s[team=uRed] run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{coldtp:1b, red:1b}}}}]
execute if entity @s[team=uRed] run item replace entity @s hotbar.0 with carrot_on_a_stick[lore=["q to use your SPECIAL POWER"],custom_name={"bold":true,"color":"dark_red","text":"NINE INCH NAILS"},unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:3.5,operation:"add_value"},{id:"attack_speed",type:"attack_speed",amount:-2.2,operation:"add_value"}],custom_data={coldtp:1b, red:1b},item_model="pale_hanging_moss",enchantments={"under_pack:coldsteel/cold":1},enchantment_glint_override=false] 1

execute if entity @s[team=uBlue] run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{coldtp:1b, blue:1b}}}}]
execute if entity @s[team=uBlue] run item replace entity @s hotbar.0 with carrot_on_a_stick[lore=["q to use your SPECIAL POWER)"],custom_name={"bold":true,"color":"dark_red","text":"NINE INCH NAILS"},unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:3.5,operation:"add_value"},{id:"attack_speed",type:"attack_speed",amount:-2.2,operation:"add_value"}],custom_data={coldtp:1b, blue:1b},item_model="pale_hanging_moss",enchantments={"under_pack:coldsteel/cold":1},enchantment_glint_override=false] 1

#dash available?
execute unless entity @s[scores={coldsteellunge=-1}] run return fail

#trigger the dash
scoreboard players set @s coldsteellunge 2
