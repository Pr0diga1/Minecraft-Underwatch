#update thing's durability
execute if score @s ability3 matches 220 run item modify entity @s hotbar.3 under_pack:scientist/rocket_arrow
execute if score @s ability3 matches 200 run item modify entity @s hotbar.3 under_pack:scientist/rocket_arrow
execute if score @s ability3 matches 180 run item modify entity @s hotbar.3 under_pack:scientist/rocket_arrow
execute if score @s ability3 matches 160 run item modify entity @s hotbar.3 under_pack:scientist/rocket_arrow
execute if score @s ability3 matches 140 run item modify entity @s hotbar.3 under_pack:scientist/rocket_arrow
execute if score @s ability3 matches 120 run item modify entity @s hotbar.3 under_pack:scientist/rocket_arrow
execute if score @s ability3 matches 100 run item modify entity @s hotbar.3 under_pack:scientist/rocket_arrow
execute if score @s ability3 matches 80 run item modify entity @s hotbar.3 under_pack:scientist/rocket_arrow
execute if score @s ability3 matches 60 run item modify entity @s hotbar.3 under_pack:scientist/rocket_arrow
execute if score @s ability3 matches 40 run item modify entity @s hotbar.3 under_pack:scientist/rocket_arrow
execute if score @s ability3 matches 20 run item modify entity @s hotbar.3 under_pack:scientist/rocket_arrow

#iterate the timer
scoreboard players remove @s ability3 1

#give new arrows when done
execute if score @s ability3 matches 0 run item replace entity @s hotbar.3 with tipped_arrow[custom_name='{"color":"light_purple","text":"Rocket Dart"}',custom_data={scientistRocket:1b},potion_contents={custom_color:16711910,custom_effects:[{id:"minecraft:levitation",amplifier:4,duration:30}]}] 1
