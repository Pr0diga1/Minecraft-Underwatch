## Give items
clear @s

## Main Weapon
item replace entity @s hotbar.0 with eye_armor_trim_smithing_template[consumable={consume_seconds:10000,animation:"bow"},custom_data={watcher:true},custom_name='{"bold":true,"color":"dark_green","italic":false,"text":"Watcher\'s Gaze"}'] 1

## Abilities
# Vulnerability
item replace entity @s hotbar.1 with vex_armor_trim_smithing_template[consumable={consume_seconds:10000,animation:"block"},custom_data={vulner:true},custom_name='{"bold":true,"color":"white","italic":false,"text":"Ritual of Vulnerability"}'] 1

# Share Wounds
item replace entity @s hotbar.2 with rib_armor_trim_smithing_template[consumable={consume_seconds:1,animation:"spyglass"},custom_data={sharewounds:true},custom_name='{"bold":true,"color":"dark_red","italic":false,"text":"Share Wounds"}'] 1

# Spatial Warp
item replace entity @s hotbar.3 with spire_armor_trim_smithing_template[consumable={consume_seconds:2,animation:"spyglass"},custom_data={spacewarp:true},custom_name='[{"color":"#2100A3","text":"S"},{"color":"#2B00A3","text":"p"},{"color":"#3500A3","text":"a"},{"color":"#3E00A3","text":"t"},{"color":"#4800A3","text":"i"},{"color":"#5200A3","text":"a"},{"color":"#5C00A3","text":"l "},{"color":"#6600A3","text":"W"},{"color":"#7000A3","text":"a"},{"color":"#7900A3","text":"r"},{"color":"#8D00A3","text":"p"}]'] 1

# Scoreboards
scoreboard players reset @s ability1