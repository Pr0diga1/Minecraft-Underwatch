#wrench ability 2
execute if score @s ability3 matches 80 run item replace entity @s hotbar.1 with iron_ingot 4
execute if score @s ability3 matches 60 run item replace entity @s hotbar.1 with iron_ingot 3
execute if score @s ability3 matches 40 run item replace entity @s hotbar.1 with iron_ingot 2
execute if score @s ability3 matches 20 run item replace entity @s hotbar.1 with iron_ingot 1
execute if score @s ability3 matches 0 run item replace entity @s hotbar.1 with shears{display:{Name:'{"text":"Wrench","color":"gray","bold":true}'},wrench:1b} 1

#viagra ability5
execute if score @s ability5 matches 0 run item replace entity @s hotbar.3 with potato 10
execute if score @s ability5 matches 20 run item replace entity @s hotbar.3 with potato 9
execute if score @s ability5 matches 40 run item replace entity @s hotbar.3 with potato 8
execute if score @s ability5 matches 60 run item replace entity @s hotbar.3 with potato 7
execute if score @s ability5 matches 80 run item replace entity @s hotbar.3 with potato 6
execute if score @s ability5 matches 100 run item replace entity @s hotbar.3 with potato 5
execute if score @s ability5 matches 120 run item replace entity @s hotbar.3 with potato 4
execute if score @s ability5 matches 140 run item replace entity @s hotbar.3 with potato 3
execute if score @s ability5 matches 160 run item replace entity @s hotbar.3 with potato 2
execute if score @s ability5 matches 180 run item replace entity @s hotbar.3 with potato 1
execute if score @s ability5 matches ..199 run scoreboard players add @s ability5 1

#wall ability6

#turret ability7
execute if score @s ability7 matches 0 run item replace entity @s hotbar.6 with potato 15
execute if score @s ability7 matches 20 run item replace entity @s hotbar.6 with potato 14
execute if score @s ability7 matches 40 run item replace entity @s hotbar.6 with potato 13
execute if score @s ability7 matches 60 run item replace entity @s hotbar.6 with potato 12
execute if score @s ability7 matches 80 run item replace entity @s hotbar.6 with potato 11
execute if score @s ability7 matches 100 run item replace entity @s hotbar.6 with potato 10
execute if score @s ability7 matches 120 run item replace entity @s hotbar.6 with potato 9
execute if score @s ability7 matches 140 run item replace entity @s hotbar.6 with potato 8
execute if score @s ability7 matches 160 run item replace entity @s hotbar.6 with potato 7
execute if score @s ability7 matches 180 run item replace entity @s hotbar.6 with potato 6
execute if score @s ability7 matches 200 run item replace entity @s hotbar.6 with potato 5
execute if score @s ability7 matches 220 run item replace entity @s hotbar.6 with potato 4
execute if score @s ability7 matches 240 run item replace entity @s hotbar.6 with potato 3
execute if score @s ability7 matches 260 run item replace entity @s hotbar.6 with potato 2
execute if score @s ability7 matches 280 run item replace entity @s hotbar.6 with potato 1
execute if score @s ability7 matches ..299 run scoreboard players add @s ability7 1