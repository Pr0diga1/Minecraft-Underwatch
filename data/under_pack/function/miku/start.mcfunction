clear @s

## Abilities
# Rifle
item replace entity @s hotbar.0 with copper_hoe[custom_data={miku:true,rifle:true},custom_name={"bold":true,"color":"#F72D2D","italic":false,"text":"Teto Rifle"},consumable={consume_seconds:999999,animation:"bow"}] 1
scoreboard players set @s ability1 0
scoreboard players set @a ability2 0
scoreboard players set @a ability3 0


function under_pack:general_functions/general_character_select

experience set @s 16 levels














