#update thing's durability
execute if score @s ability1 matches 160 run item modify entity @s hotbar.2 under_pack:scientist/movement_arrow
execute if score @s ability1 matches 140 run item modify entity @s hotbar.2 under_pack:scientist/movement_arrow
execute if score @s ability1 matches 120 run item modify entity @s hotbar.2 under_pack:scientist/movement_arrow
execute if score @s ability1 matches 100 run item modify entity @s hotbar.2 under_pack:scientist/movement_arrow
execute if score @s ability1 matches 80 run item modify entity @s hotbar.2 under_pack:scientist/movement_arrow
execute if score @s ability1 matches 60 run item modify entity @s hotbar.2 under_pack:scientist/movement_arrow
execute if score @s ability1 matches 40 run item modify entity @s hotbar.2 under_pack:scientist/movement_arrow
execute if score @s ability1 matches 20 run item modify entity @s hotbar.2 under_pack:scientist/movement_arrow

#iterate the timer
scoreboard players remove @s ability1 1

#give new arrows when done
execute if score @s ability1 matches 0 run item replace entity @s hotbar.2 with tipped_arrow{display:{Name:'{"text":"Movement Dart","color":"dark_green"}'},scientistMovement:1b,CustomPotionEffects:[{Id:1,Amplifier:5b,Duration:45},{Id:8,Amplifier:5b,Duration:45}],CustomPotionColor:2327040} 1
