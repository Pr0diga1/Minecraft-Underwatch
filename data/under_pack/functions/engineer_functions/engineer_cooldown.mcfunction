execute if score @s ability1 matches 20 run item replace entity @s hotbar.1 with arrow{CustomModelData:1,display:{Name:'{"text":"Nerf Bow on Cooldown"}'}} 8
execute if score @s ability1 matches 40 run item replace entity @s hotbar.1 with arrow{CustomModelData:1,display:{Name:'{"text":"Nerf Bow on Cooldown"}'}} 7
execute if score @s ability1 matches 60 run item replace entity @s hotbar.1 with arrow{CustomModelData:1,display:{Name:'{"text":"Nerf Bow on Cooldown"}'}} 6
execute if score @s ability1 matches 80 run item replace entity @s hotbar.1 with arrow{CustomModelData:1,display:{Name:'{"text":"Nerf Bow on Cooldown"}'}} 5
execute if score @s ability1 matches 100 run item replace entity @s hotbar.1 with arrow{CustomModelData:1,display:{Name:'{"text":"Nerf Bow on Cooldown"}'}} 4
execute if score @s ability1 matches 120 run item replace entity @s hotbar.1 with arrow{CustomModelData:1,display:{Name:'{"text":"Nerf Bow on Cooldown"}'}} 3
execute if score @s ability1 matches 140 run item replace entity @s hotbar.1 with arrow{CustomModelData:1,display:{Name:'{"text":"Nerf Bow on Cooldown"}'}} 2
execute if score @s ability1 matches 160 run item replace entity @s hotbar.1 with arrow{CustomModelData:1,display:{Name:'{"text":"Nerf Bow on Cooldown"}'}} 1

execute if score @s ability2 matches 1..17 run title @s actionbar ["",{"text":"New Heal In: ","color":"blue"},{"text":"3","color":"gold"}]
execute if score @s ability2 matches 18..37 run title @s actionbar ["",{"text":"New Heal In: ","color":"blue"},{"text":"2","color":"gold"}]
execute if score @s ability2 matches 38..55 run title @s actionbar ["",{"text":"New Heal In: ","color":"blue"},{"text":"1","color":"gold"}]
execute if score @s ability2 matches 56 run title @s actionbar ["",{"text":"New Heal in: ","color":"blue"},{"text":"0","color":"gold"}]
execute if score @s ability2 matches 69 run title @s actionbar [{"text":"   "}]

execute if score @s ability3 matches 20 run item replace entity @s hotbar.3 with barrier{CustomModelData:60,display:{Name:'{"text":"Wall on Cooldown"}'}} 1
execute if score @s ability3 matches 40 run item replace entity @s hotbar.3 with barrier{CustomModelData:61,display:{Name:'{"text":"Wall on Cooldown"}'}} 1
execute if score @s ability3 matches 60 run item replace entity @s hotbar.3 with barrier{CustomModelData:62,display:{Name:'{"text":"Wall on Cooldown"}'}} 1
execute if score @s ability3 matches 80 run item replace entity @s hotbar.3 with barrier{CustomModelData:63,display:{Name:'{"text":"Wall on Cooldown"}'}} 1
execute if score @s ability3 matches 100 run item replace entity @s hotbar.3 with barrier{CustomModelData:64,display:{Name:'{"text":"Wall on Cooldown"}'}} 1
execute if score @s ability3 matches 120 run item replace entity @s hotbar.3 with barrier{CustomModelData:65,display:{Name:'{"text":"Wall on Cooldown"}'}} 1
execute if score @s ability3 matches 140 run item replace entity @s hotbar.3 with barrier{CustomModelData:66,display:{Name:'{"text":"Wall on Cooldown"}'}} 1
execute if score @s ability3 matches 160 run item replace entity @s hotbar.3 with barrier{CustomModelData:67,display:{Name:'{"text":"Wall on Cooldown"}'}} 1

execute if score @s ability4 matches 20 run item replace entity @s hotbar.4 with tube_coral{CustomModelData:1,display:{Name:'{"text":"WD-40 on Cooldown"}'}} 10
execute if score @s ability4 matches 40 run item replace entity @s hotbar.4 with tube_coral{CustomModelData:2,display:{Name:'{"text":"WD-40 on Cooldown"}'}} 9
execute if score @s ability4 matches 60 run item replace entity @s hotbar.4 with tube_coral{CustomModelData:3,display:{Name:'{"text":"WD-40 on Cooldown"}'}} 8
execute if score @s ability4 matches 80 run item replace entity @s hotbar.4 with tube_coral{CustomModelData:4,display:{Name:'{"text":"WD-40 on Cooldown"}'}} 7
execute if score @s ability4 matches 100 run item replace entity @s hotbar.4 with tube_coral{CustomModelData:5,display:{Name:'{"text":"WD-40 on Cooldown"}'}} 6
execute if score @s ability4 matches 120 run item replace entity @s hotbar.4 with tube_coral{CustomModelData:6,display:{Name:'{"text":"WD-40 on Cooldown"}'}} 5
execute if score @s ability4 matches 140 run item replace entity @s hotbar.4 with tube_coral{CustomModelData:7,display:{Name:'{"text":"WD-40 on Cooldown"}'}} 4
execute if score @s ability4 matches 160 run item replace entity @s hotbar.4 with tube_coral{CustomModelData:8,display:{Name:'{"text":"WD-40 on Cooldown"}'}} 3
execute if score @s ability4 matches 180 run item replace entity @s hotbar.4 with tube_coral{CustomModelData:9,display:{Name:'{"text":"WD-40 on Cooldown"}'}} 2
execute if score @s ability4 matches 200 run item replace entity @s hotbar.4 with tube_coral{CustomModelData:10,display:{Name:'{"text":"WD-40 on Cooldown"}'}} 1

execute if score @s engineercap matches 0..19 run item replace entity @s armor.chest with leather_chestplate{display:{color:16777215},Unbreakable:1b}
execute if score @s engineercap matches 20..39 run item replace entity @s armor.chest with leather_chestplate{display:{color:9877247},Unbreakable:1b}
execute if score @s engineercap matches 40..59 run item replace entity @s armor.chest with leather_chestplate{display:{color:7373823},Unbreakable:1b}
execute if score @s engineercap matches 60..79 run item replace entity @s armor.chest with leather_chestplate{display:{color:3367935},Unbreakable:1b}
execute if score @s engineercap matches 80.. run item replace entity @s armor.chest with leather_chestplate{display:{color:526591},Unbreakable:1b}
execute if score @s engineercap matches 100.. run item replace entity @s armor.chest with leather_chestplate{display:{color:129},Unbreakable:1b}
