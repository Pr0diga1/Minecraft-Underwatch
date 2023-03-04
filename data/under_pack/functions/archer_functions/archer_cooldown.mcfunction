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

execute if score @s ability3 matches 0..1 run item replace entity @s hotbar.2 with barrier{CustomModelData:68,display:{Name:'{"text":"Backstep on cooldown!","color":"green"}'}} 1
execute if score @s ability3 matches 20 run item replace entity @s hotbar.2 with barrier{CustomModelData:69,display:{Name:'{"text":"Backstep on cooldown!","color":"green"}'}} 1
execute if score @s ability3 matches 40 run item replace entity @s hotbar.2 with barrier{CustomModelData:70,display:{Name:'{"text":"Backstep on cooldown!","color":"green"}'}} 1
execute if score @s ability3 matches 60 run item replace entity @s hotbar.2 with barrier{CustomModelData:71,display:{Name:'{"text":"Backstep on cooldown!","color":"green"}'}} 1
execute if score @s ability3 matches 80 run item replace entity @s hotbar.2 with barrier{CustomModelData:72,display:{Name:'{"text":"Backstep on cooldown!","color":"green"}'}} 1
execute if score @s ability3 matches 100 run item replace entity @s hotbar.2 with barrier{CustomModelData:73,display:{Name:'{"text":"Backstep on cooldown!","color":"green"}'}} 1
execute if score @s ability3 matches 120 run item replace entity @s hotbar.2 with barrier{CustomModelData:74,display:{Name:'{"text":"Backstep on cooldown!","color":"green"}'}} 1

execute if score @s ability3 matches 140 run item replace entity @s hotbar.2 with carrot_on_a_stick{CustomModelData:50,display:{Name:'{"text":"Backstep","color":"green"}'},archerBackstep:1b} 1