#jump cooldown indications
execute if score @s movement matches 20 run item replace entity @s hotbar.1 with iron_boots{CustomModelData:2,display:{Name:'{"text":"Jump on Cooldown"}'}} 1
execute if score @s movement matches 40 run item replace entity @s hotbar.1 with iron_boots{CustomModelData:3,display:{Name:'{"text":"Jump on Cooldown"}'}} 1
execute if score @s movement matches 60 run item replace entity @s hotbar.1 with iron_boots{CustomModelData:4,display:{Name:'{"text":"Jump on Cooldown"}'}} 1
#Sweep cooldown indications
execute if score @s ability1 matches 20 run item replace entity @s hotbar.2 with stone_axe{CustomModelData:2,display:{Name:'{"text":"Sweep on Cooldown"}'}} 1
execute if score @s ability1 matches 40 run item replace entity @s hotbar.2 with stone_axe{CustomModelData:3,display:{Name:'{"text":"Sweep on Cooldown"}'}} 1
execute if score @s ability1 matches 60 run item replace entity @s hotbar.2 with stone_axe{CustomModelData:4,display:{Name:'{"text":"Sweep on Cooldown"}'}} 1
execute if score @s ability1 matches 80 run item replace entity @s hotbar.2 with stone_axe{CustomModelData:5,display:{Name:'{"text":"Sweep on Cooldown"}'}} 1
execute if score @s ability1 matches 100 run item replace entity @s hotbar.2 with stone_axe{CustomModelData:6,display:{Name:'{"text":"Sweep on Cooldown"}'}} 1
execute if score @s ability1 matches 120 run item replace entity @s hotbar.2 with stone_axe{CustomModelData:7,display:{Name:'{"text":"Sweep on Cooldown"}'}} 1
execute if score @s ability1 matches 140 run item replace entity @s hotbar.2 with stone_axe{CustomModelData:8,display:{Name:'{"text":"Sweep on Cooldown"}'}} 1
execute if score @s ability1 matches 160 run item replace entity @s hotbar.2 with stone_axe{CustomModelData:9,display:{Name:'{"text":"Sweep on Cooldown"}'}} 1
execute if score @s ability1 matches 180 run item replace entity @s hotbar.2 with stone_axe{CustomModelData:10,display:{Name:'{"text":"Sweep on Cooldown"}'}} 1
