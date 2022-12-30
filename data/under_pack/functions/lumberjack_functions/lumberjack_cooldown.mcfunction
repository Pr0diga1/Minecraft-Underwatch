#jump cooldown indications
execute if score @s movement matches 20 run item replace entity @s hotbar.1 with iron_boots{Damage:162,display:{Name:'{"text":"Jump on Cooldown"}'}} 1
execute if score @s movement matches 40 run item replace entity @s hotbar.1 with iron_boots{Damage:130,display:{Name:'{"text":"Jump on Cooldown"}'}} 1
execute if score @s movement matches 60 run item replace entity @s hotbar.1 with iron_boots{Damage:97,display:{Name:'{"text":"Jump on Cooldown"}'}} 1
execute if score @s movement matches 80 run item replace entity @s hotbar.1 with iron_boots{Damage:65,display:{Name:'{"text":"Jump on Cooldown"}'}} 1
execute if score @s movement matches 100 run item replace entity @s hotbar.1 with iron_boots{Damage:32,display:{Name:'{"text":"Jump on Cooldown"}'}} 1
#throw cooldown indications
execute if score @s ability1 matches 20 run item replace entity @s hotbar.2 with stone_axe{Damage:118,display:{Name:'{"text":"Throw on Cooldown"}'}} 1
execute if score @s ability1 matches 40 run item replace entity @s hotbar.2 with stone_axe{Damage:105,display:{Name:'{"text":"Throw on Cooldown"}'}} 1
execute if score @s ability1 matches 60 run item replace entity @s hotbar.2 with stone_axe{Damage:92,display:{Name:'{"text":"Throw on Cooldown"}'}} 1
execute if score @s ability1 matches 80 run item replace entity @s hotbar.2 with stone_axe{Damage:79,display:{Name:'{"text":"Throw on Cooldown"}'}} 1
execute if score @s ability1 matches 100 run item replace entity @s hotbar.2 with stone_axe{Damage:66,display:{Name:'{"text":"Throw on Cooldown"}'}} 1
execute if score @s ability1 matches 120 run item replace entity @s hotbar.2 with stone_axe{Damage:53,display:{Name:'{"text":"Throw on Cooldown"}'}} 1
execute if score @s ability1 matches 140 run item replace entity @s hotbar.2 with stone_axe{Damage:40,display:{Name:'{"text":"Throw on Cooldown"}'}} 1
execute if score @s ability1 matches 160 run item replace entity @s hotbar.2 with stone_axe{Damage:27,display:{Name:'{"text":"Throw on Cooldown"}'}} 1
execute if score @s ability1 matches 180 run item replace entity @s hotbar.2 with stone_axe{Damage:14,display:{Name:'{"text":"Throw on Cooldown"}'}} 1
