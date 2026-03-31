# Loaded
execute if score @s ability2 matches 1.. run item replace entity @s hotbar.0 with copper_hoe[custom_data={miku:true,rifle:true},custom_name={"bold":true,"color":"#F72D2D","italic":false,"text":"Teto Rifle"},consumable={consume_seconds:999999,animation:"bow"}] 1

# Unloaded
execute if score @s ability2 matches 0 run function under_pack:miku/rifle_unloaded


# reset gun scoreboard
scoreboard players set @s ability3 0