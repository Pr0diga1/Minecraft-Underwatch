execute if score @s ability1 matches 20 run item replace entity @s hotbar.1 with arrow{display:{Name:'{"text":"Nerf Bow on Cooldown"}'}} 5
execute if score @s ability1 matches 40 run item replace entity @s hotbar.1 with arrow{display:{Name:'{"text":"Nerf Bow on Cooldown"}'}} 4
execute if score @s ability1 matches 60 run item replace entity @s hotbar.1 with arrow{display:{Name:'{"text":"Nerf Bow on Cooldown"}'}} 3
execute if score @s ability1 matches 80 run item replace entity @s hotbar.1 with arrow{display:{Name:'{"text":"Nerf Bow on Cooldown"}'}} 2
execute if score @s ability1 matches 100 run item replace entity @s hotbar.1 with arrow{display:{Name:'{"text":"Nerf Bow on Cooldown"}'}} 1

execute if score @s ability2 matches 0 run title @s actionbar ["",{"text":"Charge: ","color":"dark_red"},{"score":{"name":"@s","objective":"engineercap"},"color":"blue"}]
execute if score @s ability2 matches 1..17 run title @s actionbar ["",{"text":"New Heal In: ","color":"blue"},{"text":"3","color":"gold"},{"text":"         Charge: ","color":"dark_red"},{"score":{"name":"@s","objective":"engineercap"},"color":"blue"}]
execute if score @s ability2 matches 18..37 run title @s actionbar ["",{"text":"New Heal In: ","color":"blue"},{"text":"2","color":"gold"},{"text":"        Charge: ","color":"dark_red"},{"score":{"name":"@s","objective":"engineercap"},"color":"blue"}]
execute if score @s ability2 matches 38..55 run title @s actionbar ["",{"text":"New Heal In: ","color":"blue"},{"text":"1","color":"gold"},{"text":"        Charge: ","color":"dark_red"},{"score":{"name":"@s","objective":"engineercap"},"color":"blue"}]
execute if score @s ability2 matches 56 run title @s actionbar ["",{"text":"New Heal in: ","color":"blue"},{"text":"0","color":"gold"},{"text":"        Charge: ","color":"dark_red"},{"score":{"name":"@s","objective":"engineercap"},"color":"blue"}]

execute if score @s ability3 matches 20 run item replace entity @s hotbar.3 with light_blue_stained_glass{display:{Name:'{"text":"Wall on Cooldown"}'}} 8
execute if score @s ability3 matches 40 run item replace entity @s hotbar.3 with light_blue_stained_glass{display:{Name:'{"text":"Wall on Cooldown"}'}} 7
execute if score @s ability3 matches 60 run item replace entity @s hotbar.3 with light_blue_stained_glass{display:{Name:'{"text":"Wall on Cooldown"}'}} 6
execute if score @s ability3 matches 80 run item replace entity @s hotbar.3 with light_blue_stained_glass{display:{Name:'{"text":"Wall on Cooldown"}'}} 5
execute if score @s ability3 matches 100 run item replace entity @s hotbar.3 with light_blue_stained_glass{display:{Name:'{"text":"Wall on Cooldown"}'}} 4
execute if score @s ability3 matches 120 run item replace entity @s hotbar.3 with light_blue_stained_glass{display:{Name:'{"text":"Wall on Cooldown"}'}} 3
execute if score @s ability3 matches 140 run item replace entity @s hotbar.3 with light_blue_stained_glass{display:{Name:'{"text":"Wall on Cooldown"}'}} 2
execute if score @s ability3 matches 160 run item replace entity @s hotbar.3 with light_blue_stained_glass{display:{Name:'{"text":"Wall on Cooldown"}'}} 1

execute if score @s ability4 matches 20 run item replace entity @s hotbar.4 with tube_coral{display:{Name:'{"text":"WD-40 on Cooldown"}'}} 10
execute if score @s ability4 matches 40 run item replace entity @s hotbar.4 with tube_coral{display:{Name:'{"text":"WD-40 on Cooldown"}'}} 9
execute if score @s ability4 matches 60 run item replace entity @s hotbar.4 with tube_coral{display:{Name:'{"text":"WD-40 on Cooldown"}'}} 8
execute if score @s ability4 matches 80 run item replace entity @s hotbar.4 with tube_coral{display:{Name:'{"text":"WD-40 on Cooldown"}'}} 7
execute if score @s ability4 matches 100 run item replace entity @s hotbar.4 with tube_coral{display:{Name:'{"text":"WD-40 on Cooldown"}'}} 6
execute if score @s ability4 matches 120 run item replace entity @s hotbar.4 with tube_coral{display:{Name:'{"text":"WD-40 on Cooldown"}'}} 5
execute if score @s ability4 matches 140 run item replace entity @s hotbar.4 with tube_coral{display:{Name:'{"text":"WD-40 on Cooldown"}'}} 4
execute if score @s ability4 matches 160 run item replace entity @s hotbar.4 with tube_coral{display:{Name:'{"text":"WD-40 on Cooldown"}'}} 3
execute if score @s ability4 matches 180 run item replace entity @s hotbar.4 with tube_coral{display:{Name:'{"text":"WD-40 on Cooldown"}'}} 2
execute if score @s ability4 matches 200 run item replace entity @s hotbar.4 with tube_coral{display:{Name:'{"text":"WD-40 on Cooldown"}'}} 1


