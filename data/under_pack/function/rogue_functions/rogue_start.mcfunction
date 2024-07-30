## Give inventory
clear @s
# Main weapon
item replace entity @s hotbar.0 with netherite_sword[custom_name='{"bold":true,"color":"#472659","italic":false,"text":"Netherite Dagger"}',custom_model_data=1,custom_data={dagger:1b},attribute_modifiers=[{id:"armor",type:"generic.attack_damage",amount:1,operation:"add_value",slot:"mainhand"},{id:"armor",type:"generic.attack_speed",amount:-2.7,operation:"add_value",slot:"mainhand"}]] 1
# Cloak
item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name='{"bold":true,"color":"#555755","italic":false,"text":"Invisibility Cloak"}',unbreakable={show_in_tooltip:false},custom_model_data=30,custom_data={cloak:1b}] 1
# Poison Dart
item replace entity @s hotbar.2 with crossbow[custom_name='{"bold":true,"color":"#ff0000","italic":false,"text":"Kill Shot"}',unbreakable={show_in_tooltip:false},custom_model_data=2,custom_data={posiondartrogue:1b},charged_projectiles=[{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:1}],custom_color:16777210},"minecraft:custom_data":{roguedart:1b}}}]] 1
# Pocket sand
item replace entity @s hotbar.3 with carrot_on_a_stick[custom_name='{"bold":true,"color":"#A8A85D","italic":false,"text":"Pocket Sand"}',unbreakable={show_in_tooltip:false},custom_model_data=31,custom_data={pocketSand:1b}] 1
# Swap
item replace entity @s hotbar.4 with carrot_on_a_stick[custom_name='{"bold":true,"color":"dark_purple","italic":false,"text":"Friend Swap"}',unbreakable={show_in_tooltip:false},custom_model_data=26,custom_data={swap:1b}] 1

# Ability scores
scoreboard players set @s ability1 0
scoreboard players set @s ability2 0
scoreboard players set @s ability3 0

#clean swap tags
execute as @s[team=uRed] run tag @s remove swap
execute as @s[team=uRed] run tag @s remove target
execute as @s[team=uBlue] run tag @s remove swap
execute as @s[team=uBlue] run tag @s remove target

#run the class select
function under_pack:general_functions/general_character_select