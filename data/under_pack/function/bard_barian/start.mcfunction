## Give inventory
# Clear
clear @s

# Main weapon
item replace entity @s hotbar.0 with iron_axe[consumable={consume_seconds:10000,animation:"block",sound:"block.note_block.bass",has_consume_particles:false},unbreakable={},item_name=[{"color":"#FF0000","text":"A"},{"color":"#C6392B","text":"x"},{"color":"#8E7157","text":"e "},{"color":"#55AA82","text":"G"},{"color":"#1CE3AD","text":"u"},{"color":"#1CE3C9","text":"i"},{"color":"#55AAD4","text":"t"},{"color":"#8E71E0","text":"a"},{"color":"#FF00F7","text":"r"}],custom_data={axeguitar:true},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:3,operation:"add_value"},{id:"attack_speed",type:"attack_speed",amount:-3.2,operation:"add_value"}]] 1

# Abilities
item replace entity @s hotbar.1 with hopper[consumable={consume_seconds:10000,animation:"toot_horn",sound:"minecraft:item.goat_horn.sound.1",has_consume_particles:false},custom_data={megaphone:true},item_name={"bold":true,"color":"light_purple","italic":false,"text":"Megaphone"}] 1
item replace entity @s hotbar.2 with book[enchantments={"loyalty":1},consumable={consume_seconds:0,animation:"none",sound:"block.amethyst_cluster.place",has_consume_particles:false},custom_data={bard_book:true},custom_name={"bold":true,"color":"yellow","text":"Book of Songs"}] 1

scoreboard players set @s ability2 40
scoreboard players set @s ability3 1
scoreboard players set @s ability4 0
scoreboard players set @s ability5 0

# Armor
item replace entity @s armor.legs with leather_leggings[trim={material:"minecraft:redstone",pattern:"minecraft:snout"},attribute_modifiers=[{id:"max_health",type:"max_health",amount:6,operation:"add_value"},{id:"water_movement_efficiency",type:"water_movement_efficiency",amount:0.67,operation:"add_value"}],enchantments={"minecraft:blast_protection":8,"minecraft:depth_strider":2},enchantment_glint_override=false,unbreakable={show_in_tooltip:false}] 1

#trigger stuffs
scoreboard players enable @s smarch
scoreboard players enable @s slover
scoreboard players enable @s sstand

# Run the class select
function under_pack:general_functions/general_character_select