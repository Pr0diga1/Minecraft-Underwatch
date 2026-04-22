

#ender pearl
#execute if score @s ability2 matches 80 run item replace entity @s hotbar.0 with barrier[custom_name={"text":"NOTHIN PERSONNEL on cooldown"}]
#item modify entity @s hotbar.0 under_pack:coldsteel/tp
#execute if score @s ability2 matches 1 run item replace entity @s hotbar.0 with carrot_on_a_stick[custom_name={"bold":true,"color":"dark_red","text":"FINGER NINE INCH NALS"},unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:3.5,operation:"add_value"},{id:"attack_speed",type:"attack_speed",amount:-2.2,operation:"add_value"}],custom_data={coldtp:1b},item_model="pale_hanging_moss"] 1
#execute if score @s ability2 matches 1.. run scoreboard players remove @s ability2 1


#blast

#killing the stick when it drops
