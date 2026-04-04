# Unloaded
execute if score @s ability4 matches 1 run item replace entity @s inventory.0 with arrow
execute if score @s ability4 matches 1 run item replace entity @s hotbar.0 with crossbow[unbreakable={},custom_data={miku:true,shotty:true},custom_name={"bold":true,"color":"#218004","italic":false,"text":"Leek Shotgun"},item_model="minecraft:bamboo",enchantments={"under_pack:miku/shotgun":1}] 1

# Loaded
execute if score @s ability4 matches 0 run item replace entity @s hotbar.0 with crossbow[unbreakable={},custom_data={miku:true,shotty:true},custom_name={"bold":true,"color":"#218004","italic":false,"text":"Leek Shotgun"},item_model="minecraft:bamboo",charged_projectiles=[{id:"minecraft:arrow",count:1}],enchantments={"under_pack:miku/shotgun":1}] 1
