## Give inventory
clear @s
# Main weapon
item replace entity @s hotbar.0 with netherite_sword[custom_name='{"bold":true,"color":"#472659","italic":false,"text":"Netherite Dagger"}',custom_model_data=1,custom_data={dagger:1b},attribute_modifiers=[{id:"armor",type:"generic.attack_damage",amount:1,operation:"add_value",slot:"mainhand"},{id:"armor",type:"generic.attack_speed",amount:-2.7,operation:"add_value",slot:"mainhand"}]] 1
# Cloak
item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name='{"bold":true,"color":"#555755","italic":false,"text":"Invisibility Cloak"}',unbreakable={show_in_tooltip:false},custom_model_data=30,custom_data={cloak:1b}] 1
# Swap
item replace entity @s hotbar.2 with carrot_on_a_stick[custom_name='{"bold":true,"color":"dark_purple","italic":false,"text":"Friend Swap"}',unbreakable={show_in_tooltip:false},custom_model_data=26,custom_data={swap:1b}] 1

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