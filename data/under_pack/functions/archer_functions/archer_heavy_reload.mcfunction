#update thing's durability
item modify entity @s hotbar.0 under_pack:archer/heavy_arrow

#iterate the timer
scoreboard players remove @s ability1 1

#give new arrows when done
execute if score @s ability1 matches 0 run item replace entity @s hotbar.0 with tipped_arrow{display:{Name:'{"text":"Heavy Arrow","color":"dark_red","bold":true}'},archerheavy:1b,CustomPotionColor:16711680,Potion:"minecraft:empty"} 3