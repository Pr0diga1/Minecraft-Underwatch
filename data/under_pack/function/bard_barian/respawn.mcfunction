## Give inventory
# Clear
clear @s

# Main weapon
item replace entity @s hotbar.0 with iron_axe[consumable={consume_seconds:10000,animation:"block",sound:"block.note_block.bass",has_consume_particles:false},unbreakable={show_in_tooltip:false},item_name='[{"color":"#FF0000","text":"A"},{"color":"#C6392B","text":"x"},{"color":"#8E7157","text":"e "},{"color":"#55AA82","text":"G"},{"color":"#1CE3AD","text":"u"},{"color":"#1CE3C9","text":"i"},{"color":"#55AAD4","text":"t"},{"color":"#8E71E0","text":"a"},{"color":"#FF00F7","text":"r"}]',custom_data={axeguitar:true},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:3,operation:"add_value"},{id:"attack_speed",type:"attack_speed",amount:-0.5,operation:"add_value"}]] 1

# Abilities
item replace entity @s hotbar.1 with goat_horn[consumable={consume_seconds:10000,animation:"toot_horn",has_consume_particles:false},custom_data={megaphone:true},item_name='{"bold":true,"color":"light_purple","italic":false,"text":"Megaphone"}'] 1
item replace entity @s hotbar.2 with written_book[item_name='[{"color":"#21FF29","text":"B"},{"color":"#20EA3C","text":"o"},{"color":"#20D550","text":"o"},{"color":"#1FC063","text":"k "},{"color":"#1EAB77","text":"o"},{"color":"#1D968A","text":"f "},{"color":"#1D829E","text":"S"},{"color":"#1C6DB1","text":"o"},{"color":"#1B58C5","text":"n"},{"color":"#1A43D8","text":"g"},{"color":"#1919FF","text":"s"}]',written_book_content={title:"",author:"",pages:['[{"text":"Marching Shanty\\n","color":"#147AFF","bold":true,"clickEvent":{"action":"run_command","value":"/function under_pack:bard_barian/marching"}},{"text":"One, two,\\nOut to battle,\\n\\nThree, Four\\nHerd them like cattle,\\n\\nFive, six,\\nHear the armor rattle,\\n\\nSeven, eight,\\nand off to war we go.","color":"black","bold":false}]','[{"text":"Lover\'s Lament\\n","color":"#FF0A0A","bold":true,"clickEvent":{"action":"run_command","value":"/function under_pack:bard_barian/lovers_lament"}}]','[{"text":"Ballad of The Final Stand\\n","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function under_pack:bard_barian/final_stand"}}]']}] 1

scoreboard players set @s ability2 20
scoreboard players reset @s damageTaken

# Armor
item replace entity @s armor.legs with leather_leggings[dyed_color={rgb:7689249,show_in_tooltip:false},trim={material:"minecraft:redstone",pattern:"minecraft:snout",show_in_tooltip:false},attribute_modifiers=[{id:"max_health",type:"max_health",amount:6,operation:"add_value"},{id:"water_movement_efficiency",type:"water_movement_efficiency",amount:0.67,operation:"add_value"}],enchantments={levels:{"minecraft:blast_protection":8},show_in_tooltip:false},enchantment_glint_override=false,unbreakable={show_in_tooltip:false}] 1
