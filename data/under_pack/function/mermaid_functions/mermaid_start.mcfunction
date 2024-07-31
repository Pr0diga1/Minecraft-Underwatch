clear @s
item replace entity @s hotbar.0 with carrot_on_a_stick[custom_name='{"color":"blue","text":"Poseidon\'s Back Scratcher"}',unbreakable={show_in_tooltip:false},custom_model_data=0,custom_data={mermaidburst:1b},attribute_modifiers=[{id:"speed",type:"generic.attack_speed",amount:-2.3,operation:"add_value",slot:"mainhand"},{id:"damage",type:"generic.attack_damage",amount:1.2,operation:"add_value",slot:"mainhand"}]] 1
item replace entity @s hotbar.1 with ender_eye[custom_name='{"color":"dark_blue","text":"Nautical Mist"}',custom_data={mermaidmist:1b}] 1

execute if entity @s[team=uRed] run item replace entity @s hotbar.2 with lingering_potion[custom_name='{"color":"blue","text":"Tide Pool"}',custom_data={mermaidtide:1b},potion_contents={custom_color:3366143,custom_effects:[{id:"minecraft:luck",amplifier:0,duration:1}]}] 1
execute if entity @s[team=uBlue] run item replace entity @s hotbar.2 with lingering_potion[custom_name='{"color":"blue","text":"Tide Pool"}',custom_data={mermaidtide:1b},potion_contents={custom_color:3366143,custom_effects:[{id:"minecraft:luck",amplifier:0,duration:1}]}] 1 

scoreboard players set @s ability1 0

item replace entity @s armor.legs with diamond_leggings[unbreakable={show_in_tooltip:false}] 1
item replace entity @s armor.feet with diamond_boots[attribute_modifiers=[{id:"explosion_knockback_resistance",type:"generic.explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"}],unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:blast_protection":8,"minecraft:depth_strider":10}}] 1

function under_pack:general_functions/general_character_select
function under_pack:mermaid_functions/mermaid_respawn

scoreboard players set mermaidHealingConstant constant 5

execute as @s[team=uRed] run scoreboard players set @a[team=uRed] mermaidheal 1
execute as @s[team=uBlue] run scoreboard players set @a[team=uBlue] mermaidheal 1
