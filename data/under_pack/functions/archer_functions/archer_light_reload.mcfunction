#update thing's durability
item modify entity @s hotbar.1 under_pack:archer/light_arrow

#iterate the timer
scoreboard players remove @s ability2 1

#give new arrows when done
execute if score @s ability2 matches 0 run item replace entity @s hotbar.1 with tipped_arrow{display:{Name:'{"text":"Light Arrow","color":"#FF1FFF","bold":true}'},archerlight:1b,CustomPotionColor:16719871,Potion:"minecraft:empty"} 4