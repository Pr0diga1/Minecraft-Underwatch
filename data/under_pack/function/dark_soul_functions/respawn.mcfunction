## Player reset
clear @s
# Reset death scoreboard
scoreboard players reset @a uDeaths

## Main weapon
item replace entity @s hotbar.0 with iron_sword[custom_name='{"bold":true,"color":"#FF4912","italic":false,"text":"Chaos Zweihänder","underlined":true}',unbreakable={},custom_model_data=1,custom_data={zwei:1b},attribute_modifiers={modifiers:[{id:"armor",type:"generic.attack_damage",amount:2,operation:"add_value",slot:"mainhand"},{id:"armor",type:"generic.attack_speed",amount:-3.2,operation:"add_value",slot:"mainhand"},{id:"entity_interaction_range",type:"player.entity_interaction_range",amount:1,operation:"add_value",slot:"mainhand"}],show_in_tooltip:true}] 1
item replace entity @s hotbar.1 with dragon_head[custom_name='{"bold":true,"color":"dark_red","italic":false,"text":"Dark Hand"}',unbreakable={show_in_tooltip:false},custom_model_data=231,custom_data={darkHand:1b},enchantments={levels:{"under_pack:dark_hand":1}},attribute_modifiers=[{id:"attack_damage",type:"generic.attack_damage",amount:3,operation:"add_value",slot:"any"},{id:"entity_interaction_range",type:"player.entity_interaction_range",amount:-1,operation:"add_value",slot:"any"}]] 1

# Abilities
scoreboard players set @s ability1 0
scoreboard players set @s ability3 0
scoreboard players set @s ultKills 0
experience set @s 0 levels
item replace entity @s hotbar.2 with ender_eye[custom_name='{"bold":true,"color":"gold","italic":false,"text":"Estus Flask"}',custom_model_data=6,custom_data={estus:1b}] 5

# Armor
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:blast_protection":8,"minecraft:depth_strider":2}},attribute_modifiers=[{id:"armor",type:"generic.armor",amount:8,operation:"add_value"}],dyed_color=15128132] 1
item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:false},attribute_modifiers=[{id:"armor",type:"generic.max_health",amount:4,operation:"add_value"}],dyed_color=15128132] 1
item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:false},attribute_modifiers=[{id:"scale",type:"generic.scale",amount:0.3,operation:"add_value",slot:"any"}],dyed_color=15128132] 1
