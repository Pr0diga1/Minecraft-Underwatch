# Reset death scoreboard
scoreboard players reset @a uDeaths

# Reset other scoreboards
scoreboard players set @s ability1 0
scoreboard players set @s ability2 0
scoreboard players set @s ability3 0

# Reset tags
tag @s remove cloak

# Cloak
item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name='{"bold":true,"color":"#555755","italic":false,"text":"Invisibility Cloak"}',unbreakable={show_in_tooltip:false},custom_model_data=30,custom_data={cloak:1b}] 1
# Poison Dart
item replace entity @s hotbar.2 with crossbow[custom_name='{"bold":true,"color":"#BAFF30","italic":false,"text":"Poison Dart"}',unbreakable={show_in_tooltip:false},custom_model_data=2,custom_data={posiondartrogue:1b},charged_projectiles=[{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:poison",amplifier:0,duration:200}],custom_color:16777210}}}]] 1
# Pocket sand
item replace entity @s hotbar.3 with carrot_on_a_stick[custom_name='{"bold":true,"color":"#A8A85D","italic":false,"text":"Pocket Sand"}',unbreakable={show_in_tooltip:false},custom_model_data=31,custom_data={pocketSand:1b}] 1
# Swap
item replace entity @s hotbar.4 with carrot_on_a_stick[custom_name='{"bold":true,"color":"dark_purple","italic":false,"text":"Friend Swap"}',unbreakable={show_in_tooltip:false},custom_model_data=26,custom_data={swap:1b}] 1
# Armor
item replace entity @s armor.feet with netherite_boots[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:blast_protection":8,"minecraft:depth_strider":2}},attribute_modifiers=[{id:"armor",type:"generic.armor",amount:0,operation:"add_value"},{id:"armor",type:"generic.armor_toughness",amount:0,operation:"add_value"}]] 1
