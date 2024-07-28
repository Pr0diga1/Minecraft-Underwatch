#tallying for the Backstep
execute if score @s ability3 matches ..140 run scoreboard players add @s ability3 1
#intervals for the Backstep
execute if score @s ability3 matches 0..1 run title @s actionbar ["",{"text":"Backstep available in: ","color":"dark_green"},{"text":"7","color":"gold"}]
execute if score @s ability3 matches 20 run title @s actionbar ["",{"text":"Backstep available in: ","color":"dark_green"},{"text":"6","color":"gold"}]
execute if score @s ability3 matches 40 run title @s actionbar ["",{"text":"Backstep available in: ","color":"dark_green"},{"text":"5","color":"gold"}]
execute if score @s ability3 matches 60 run title @s actionbar ["",{"text":"Backstep available in: ","color":"dark_green"},{"text":"4","color":"gold"}]
execute if score @s ability3 matches 80 run title @s actionbar ["",{"text":"Backstep available in: ","color":"dark_green"},{"text":"3","color":"gold"}]
execute if score @s ability3 matches 100 run title @s actionbar ["",{"text":"Backstep available in: ","color":"dark_green"},{"text":"2","color":"gold"}]
execute if score @s ability3 matches 120 run title @s actionbar ["",{"text":"Backstep available in: ","color":"dark_green"},{"text":"1","color":"gold"}]
execute if score @s ability3 matches 140.. run title @s actionbar ["",{"text":"Backstep available ","color":"dark_green"},{"text":"now","color":"gold"}]
