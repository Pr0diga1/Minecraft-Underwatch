#scoreboard players reset @s reset
execute if entity @s[team=uRed] run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{coldtp:1b, red:1b}}}}]
execute if entity @s[team=uRed] run item replace entity @s hotbar.0 with carrot_on_a_stick[lore=["q to use your SPECIAL POWER"],custom_name={"bold":true,"color":"dark_red","text":"NINE INCH NAILS"},unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:3.5,operation:"add_value"},{id:"attack_speed",type:"attack_speed",amount:-2.1,operation:"add_value"}],custom_data={coldtp:1b, red:1b},item_model="pale_hanging_moss",enchantments={"under_pack:coldsteel/cold":1},enchantment_glint_override=false,attack_range={min_reach:0.0,max_reach:3.0,min_creative_reach:0.0,max_creative_reach:5.0,hitbox_margin:0.5}] 1

execute if entity @s[team=uBlue] run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{coldtp:1b, blue:1b}}}}]
execute if entity @s[team=uBlue] run item replace entity @s hotbar.0 with carrot_on_a_stick[lore=["q to use your SPECIAL POWER)"],custom_name={"bold":true,"color":"dark_red","text":"NINE INCH NAILS"},unbreakable={},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:3.5,operation:"add_value"},{id:"attack_speed",type:"attack_speed",amount:-2.1,operation:"add_value"}],custom_data={coldtp:1b, blue:1b},item_model="pale_hanging_moss",enchantments={"under_pack:coldsteel/cold":1},enchantment_glint_override=false,attack_range={min_reach:0.0,max_reach:3.0,min_creative_reach:0.0,max_creative_reach:5.0,hitbox_margin:0.5}] 1


execute at @s[team=uRed] positioned ~ ~1.5 ~ summon ender_pearl run function under_pack:coldsteel_functions/tp_velo_red
execute at @s[team=uBlue] positioned ~ ~1.5 ~ summon ender_pearl run function under_pack:coldsteel_functions/tp_velo_blue

execute at @s run playsound minecraft:entity.ender_pearl.throw master @s ~ ~ ~ 5 1
#scoreboard players set @s ability2 80