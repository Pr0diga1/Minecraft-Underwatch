#jump cooldown indications
execute if score @s movement matches 20 run item replace entity @s hotbar.1 with potato{CustomModelData:2,display:{Name:'{"text":"Jump on Cooldown"}'}} 1
execute if score @s movement matches 40 run item replace entity @s hotbar.1 with potato{CustomModelData:3,display:{Name:'{"text":"Jump on Cooldown"}'}} 1
execute if score @s movement matches 60 run item replace entity @s hotbar.1 with potato{CustomModelData:4,display:{Name:'{"text":"Jump on Cooldown"}'}} 1
#Sweep cooldown indications
execute if score @s ability1 matches 2 run title @s actionbar ["",{"text":"Can I Axe You A Question? will be ready in: ","color": "dark_green"},{"text": "10","color": "dark_gray"}]
execute if score @s ability1 matches 20 run title @s actionbar ["",{"text":"Can I Axe You A Question? will be ready in: ","color": "dark_green"},{"text": "9","color": "dark_gray"}]
execute if score @s ability1 matches 40 run title @s actionbar ["",{"text":"Can I Axe You A Question? will be ready in: ","color": "dark_green"},{"text": "8","color": "dark_gray"}]
execute if score @s ability1 matches 60 run title @s actionbar ["",{"text":"Can I Axe You A Question? will be ready in: ","color": "dark_green"},{"text": "7","color": "dark_gray"}]
execute if score @s ability1 matches 80 run title @s actionbar ["",{"text":"Can I Axe You A Question? will be ready in: ","color": "dark_green"},{"text": "6","color": "dark_gray"}]
execute if score @s ability1 matches 100 run title @s actionbar ["",{"text":"Can I Axe You A Question? will be ready in: ","color": "dark_green"},{"text": "5","color": "dark_gray"}]
execute if score @s ability1 matches 120 run title @s actionbar ["",{"text":"Can I Axe You A Question? will be ready in: ","color": "dark_green"},{"text": "4","color": "dark_gray"}]
execute if score @s ability1 matches 140 run title @s actionbar ["",{"text":"Can I Axe You A Question? will be ready in: ","color": "dark_green"},{"text": "3","color": "dark_gray"}]
execute if score @s ability1 matches 160 run title @s actionbar ["",{"text":"Can I Axe You A Question? will be ready in: ","color": "dark_green"},{"text": "2","color": "dark_gray"}]
execute if score @s ability1 matches 180 run title @s actionbar ["",{"text":"Can I Axe You A Question? will be ready in: ","color": "dark_green"},{"text": "1","color": "dark_gray"}]
execute if score @s ability1 matches 199.. run title @s actionbar ["",{"text":"Can I Axe You A Question? is ready ","color": "dark_green"},{"text": "now","color": "dark_gray"}]