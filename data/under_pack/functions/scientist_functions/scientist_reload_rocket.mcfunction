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
execute if score @s ability3 matches 0 run item replace entity @s hotbar.3 with tipped_arrow{CustomModelData:1,display:{Name:'{"text":"Rocket Dart","color":"light_purple"}'},scientistRocket:1b,CustomPotionEffects:[{Id:25,Amplifier:4b,Duration:30}],CustomPotionColor:16711910} 1
