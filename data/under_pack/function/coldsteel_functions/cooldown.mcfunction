

#ender pearl
#execute if score @s ability2 matches 80 run item replace entity @s hotbar.0 with barrier[custom_name={"text":"NOTHIN PERSONNEL on cooldown"}]
item modify entity @s hotbar.0 under_pack:coldsteel/tp
execute if score @s ability2 matches 1 run item replace entity @s hotbar.0 with carrot_on_a_stick[custom_name={"bold":true,"color":"dark_red","text":"FINGER NINE INCH NALS"},unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:3.5,operation:"add_value"},{id:"attack_speed",type:"attack_speed",amount:-2.2,operation:"add_value"}],custom_data={coldtp:1b},item_model="pale_hanging_moss"] 1
execute if score @s ability2 matches 1.. run scoreboard players remove @s ability2 1


#blast

#killing the stick when it drops
execute if entity @s[team=uRed] run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{coldtp:1b, red:1b}}}}]
execute if entity @s[team=uRed] run item replace entity @s hotbar.0 with carrot_on_a_stick[lore=["q to use your SPECIAL POWER"],custom_name={"bold":true,"color":"dark_red","text":"NINE INCH NAILS"},unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:3.5,operation:"add_value"},{id:"attack_speed",type:"attack_speed",amount:-2.2,operation:"add_value"}],custom_data={coldtp:1b, red:1b},item_model="pale_hanging_moss"] 1

execute if entity @s[team=uBlue] run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{coldtp:1b, blue:1b}}}}]
execute if entity @s[team=uBlue] run item replace entity @s hotbar.0 with carrot_on_a_stick[lore=["q to use your SPECIAL POWER)"],custom_name={"bold":true,"color":"dark_red","text":"NINE INCH NAILS"},unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:3.5,operation:"add_value"},{id:"attack_speed",type:"attack_speed",amount:-2.2,operation:"add_value"}],custom_data={coldtp:1b, blue:1b},item_model="pale_hanging_moss"] 1
