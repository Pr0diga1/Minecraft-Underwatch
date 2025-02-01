#bnin
item modify entity @s hotbar.1 under_pack:coldsteel/bnin
execute if score @s ability1 matches 1 run item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name='{"bold":true,"color":"black","text":"BAND NINE INCH NALS"}',custom_data={bnin:1b}] 1
execute if score @s ability1 matches 1.. run scoreboard players remove @s ability1 1

#ender pearl
#execute if score @s ability2 matches 80 run item replace entity @s hotbar.0 with barrier[custom_name='{"text":"NOTHIN PERSONNEL on cooldown"}']
item modify entity @s hotbar.0 under_pack:coldsteel/tp
execute if score @s ability2 matches 1 run item replace entity @s hotbar.0 with carrot_on_a_stick[custom_name='{"bold":true,"color":"dark_red","text":"FINGER NINE INCH NALS"}',unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:3.25,operation:"add_value"},{id:"attack_speed",type:"attack_speed",amount:-2.2,operation:"add_value"}],custom_data={coldtp:1b}] 1
execute if score @s ability2 matches 1.. run scoreboard players remove @s ability2 1

#special power
execute if score @s ability3 matches 140 run function under_pack:coldsteel_functions/power_reset
item modify entity @s hotbar.2 under_pack:coldsteel/power
execute if score @s ability3 matches 1 run item replace entity @s hotbar.2 with carrot_on_a_stick[custom_name='{"bold":true,"color":"red","text":"SPECIAL POWER"}',custom_data={coldpower:1b}] 1
execute if score @s ability3 matches 1.. run scoreboard players remove @s ability3 1

#blast
scoreboard players operation @s coldblast = @s ability4
scoreboard players operation @s coldblast /= 20 constant
scoreboard players operation @s coldblast += 1 constant
title @s[scores={ability4 = 1..}] actionbar [{"text":""},{"text":"BLASTING NINE INCH NAILS is on cooldown: ","bold":true,"color":"dark_red"},{"score":{"name":"@s","objective":"coldblast"},"bold":true,"color":"dark_purple"}]
title @s[scores={ability4 = 1}] actionbar [{"text":" "}]
scoreboard players remove @s[scores={ability4 = 1..}] ability4 1

#killing the stick when it drops
execute if entity @s[team=uRed] run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{coldtp:1b, red:1b}}}}]
execute if entity @s[team=uRed] run item replace entity @s hotbar.0 with carrot_on_a_stick[lore=['"q to BLAST NINE INCH NAILS (the band)"'],custom_name='{"bold":true,"color":"dark_red","text":"FINGER NINE INCH NALS"}',unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:3.25,operation:"add_value"},{id:"attack_speed",type:"attack_speed",amount:-2.2,operation:"add_value"}],custom_data={coldtp:1b, red:1b}] 1

execute if entity @s[team=uBlue] run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{coldtp:1b, blue:1b}}}}]
execute if entity @s[team=uBlue] run item replace entity @s hotbar.0 with carrot_on_a_stick[lore=['"q to BLAST NINE INCH NAILS (the band)"'],custom_name='{"bold":true,"color":"dark_red","text":"FINGER NINE INCH NALS"}',unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:3.25,operation:"add_value"},{id:"attack_speed",type:"attack_speed",amount:-2.2,operation:"add_value"}],custom_data={coldtp:1b, blue:1b}] 1
