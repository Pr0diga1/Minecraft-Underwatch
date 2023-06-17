#tide pool
execute if score @s ability1 matches 299 run item replace entity @s hotbar.2 with heart_of_the_sea{display:{Name:'{"text":"Tide Pool on Cooldown"}'}} 15
execute if score @s ability1 matches 280 run item replace entity @s hotbar.2 with heart_of_the_sea{display:{Name:'{"text":"Tide Pool on Cooldown"}'}} 14
execute if score @s ability1 matches 260 run item replace entity @s hotbar.2 with heart_of_the_sea{display:{Name:'{"text":"Tide Pool on Cooldown"}'}} 13
execute if score @s ability1 matches 240 run item replace entity @s hotbar.2 with heart_of_the_sea{display:{Name:'{"text":"Tide Pool on Cooldown"}'}} 12
execute if score @s ability1 matches 220 run item replace entity @s hotbar.2 with heart_of_the_sea{display:{Name:'{"text":"Tide Pool on Cooldown"}'}} 11
execute if score @s ability1 matches 200 run item replace entity @s hotbar.2 with heart_of_the_sea{display:{Name:'{"text":"Tide Pool on Cooldown"}'}} 10
execute if score @s ability1 matches 180 run item replace entity @s hotbar.2 with heart_of_the_sea{display:{Name:'{"text":"Tide Pool on Cooldown"}'}} 9
execute if score @s ability1 matches 160 run item replace entity @s hotbar.2 with heart_of_the_sea{display:{Name:'{"text":"Tide Pool on Cooldown"}'}} 8
execute if score @s ability1 matches 140 run item replace entity @s hotbar.2 with heart_of_the_sea{display:{Name:'{"text":"Tide Pool on Cooldown"}'}} 7
execute if score @s ability1 matches 120 run item replace entity @s hotbar.2 with heart_of_the_sea{display:{Name:'{"text":"Tide Pool on Cooldown"}'}} 6
execute if score @s ability1 matches 100 run item replace entity @s hotbar.2 with heart_of_the_sea{display:{Name:'{"text":"Tide Pool on Cooldown"}'}} 5
execute if score @s ability1 matches 80 run item replace entity @s hotbar.2 with heart_of_the_sea{display:{Name:'{"text":"Tide Pool on Cooldown"}'}} 4
execute if score @s ability1 matches 60 run item replace entity @s hotbar.2 with heart_of_the_sea{display:{Name:'{"text":"Tide Pool on Cooldown"}'}} 3
execute if score @s ability1 matches 40 run item replace entity @s hotbar.2 with heart_of_the_sea{display:{Name:'{"text":"Tide Pool on Cooldown"}'}} 2
execute if score @s ability1 matches 20 run item replace entity @s hotbar.2 with heart_of_the_sea{display:{Name:'{"text":"Tide Pool on Cooldown"}'}} 1

#burst
execute if score @s mermaidburst matches 0 run title @s actionbar ["",{"text":"Hits Until Burst: ","color":"blue"},{"text":"3","color":"yellow"}]
execute if score @s mermaidburst matches 1 run title @s actionbar ["",{"text":"Hits Until Burst: ","color":"blue"},{"text":"2","color":"yellow"}]
execute if score @s mermaidburst matches 2 run title @s actionbar ["",{"text":"Hits Until Burst: ","color":"blue"},{"text":"1","color":"yellow"}]
execute if score @s mermaidburst matches 3.. run title @s actionbar ["",{"text":"Hits Until Burst: ","color":"blue"},{"text":"0","color":"yellow"}]