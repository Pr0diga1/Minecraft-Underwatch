## Give inventory
clear @s
# Main weapon
item replace entity @s hotbar.0 with netherite_sword[custom_name={"bold":true,"color":"#472659","italic":false,"text":"Netherite Dagger"},custom_data={dagger:1b},unbreakable={},attribute_modifiers=[{id:"armor",type:"attack_damage",amount:1,operation:"add_value",slot:"mainhand"},{id:"armor",type:"attack_speed",amount:-2.7,operation:"add_value",slot:"mainhand"}]] 1
# Cloak
item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name={"bold":true,"color":"#555755","italic":false,"text":"Invisibility Cloak"},unbreakable={},custom_data={cloak:1b}] 1
# Swap
item replace entity @s hotbar.2 with carrot_on_a_stick[custom_name={"bold":true,"color":"dark_purple","italic":false,"text":"Friend Swap"},unbreakable={},custom_data={swap:1b}] 1

# Ability scores
scoreboard players reset @s ability1
scoreboard players reset @s ability2
scoreboard players reset @s ability3

#clean swap tags
tag @s remove swap
tag @s remove target

#run the class select
function under_pack:general_functions/general_character_select
