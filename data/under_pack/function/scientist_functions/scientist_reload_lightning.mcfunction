#update thing's durability
execute if score @s ability2 matches 220 run item modify entity @s hotbar.2 under_pack:scientist/lightning_arrow
execute if score @s ability2 matches 200 run item modify entity @s hotbar.2 under_pack:scientist/lightning_arrow
execute if score @s ability2 matches 180 run item modify entity @s hotbar.2 under_pack:scientist/lightning_arrow
execute if score @s ability2 matches 160 run item modify entity @s hotbar.2 under_pack:scientist/lightning_arrow
execute if score @s ability2 matches 140 run item modify entity @s hotbar.2 under_pack:scientist/lightning_arrow
execute if score @s ability2 matches 120 run item modify entity @s hotbar.2 under_pack:scientist/lightning_arrow
execute if score @s ability2 matches 100 run item modify entity @s hotbar.2 under_pack:scientist/lightning_arrow
execute if score @s ability2 matches 80 run item modify entity @s hotbar.2 under_pack:scientist/lightning_arrow
execute if score @s ability2 matches 60 run item modify entity @s hotbar.2 under_pack:scientist/lightning_arrow
execute if score @s ability2 matches 40 run item modify entity @s hotbar.2 under_pack:scientist/lightning_arrow
execute if score @s ability2 matches 20 run item modify entity @s hotbar.2 under_pack:scientist/lightning_arrow

#iterate the timer
scoreboard players remove @s ability2 1

#give new arrows when done
execute if score @s ability2 matches 0 run item replace entity @s hotbar.2 with tipped_arrow[custom_name='{"color":"white","text":"Electric Dart"}',custom_data={scientistLightning:1b},potion_contents={custom_color:16777215,custom_effects:[{id:"minecraft:slowness",amplifier:255,duration:30},{id:"minecraft:jump_boost",amplifier:127,duration:30}]}] 1
