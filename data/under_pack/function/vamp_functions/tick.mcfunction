execute as @s[tag=uDead] run return fail

#ticky
execute as @s[team=uRed] run function under_pack:vamp_functions/tick_red
execute as @s[team=uBlue] run function under_pack:vamp_functions/tick_blue

#cooldowns
execute if score @s ability1 matches 1.. run function under_pack:vamp_functions/bat_cooldown
execute if score @s ability2 matches 1.. run function under_pack:vamp_functions/bomb_cooldown

#bite tick
execute as @s[tag=vampdashing] run function under_pack:vamp_functions/attack_tick

#bite cooldowns
execute if score @s ability3 matches ..239 run scoreboard players add @s ability3 1
execute if score @s ability3 matches 240 run title @s actionbar ["",{"text":"Bite ","color":"dark_red"},{"text":"fully charged","color":"blue"}]
execute if score @s ability3 matches 1 run title @s actionbar ["",{"text":"Bite will be ready in: ","color":"dark_red"},{"text":"12","color":"blue"}]
execute if score @s ability3 matches 20 run title @s actionbar ["",{"text":"Bite will be ready in: ","color":"dark_red"},{"text":"11","color":"blue"}]
execute if score @s ability3 matches 40 run title @s actionbar ["",{"text":"Bite will be ready in: ","color":"dark_red"},{"text":"10","color":"blue"}]
execute if score @s ability3 matches 60 run title @s actionbar ["",{"text":"Bite will be ready in: ","color":"dark_red"},{"text":"9","color":"blue"}]
execute if score @s ability3 matches 80 run title @s actionbar ["",{"text":"Bite will be ready in: ","color":"dark_red"},{"text":"8","color":"blue"}]
execute if score @s ability3 matches 100 run title @s actionbar ["",{"text":"Bite will be ready in: ","color":"dark_red"},{"text":"7","color":"blue"}]
execute if score @s ability3 matches 120 run title @s actionbar ["",{"text":"Bite will be ready in: ","color":"dark_red"},{"text":"6","color":"blue"}]
execute if score @s ability3 matches 140 run title @s actionbar ["",{"text":"Bite will be ready in: ","color":"dark_red"},{"text":"5","color":"blue"}]
execute if score @s ability3 matches 160 run title @s actionbar ["",{"text":"Bite will be ready in: ","color":"dark_red"},{"text":"4","color":"blue"}]
execute if score @s ability3 matches 180 run title @s actionbar ["",{"text":"Bite will be ready in: ","color":"dark_red"},{"text":"3","color":"blue"}]
execute if score @s ability3 matches 200 run title @s actionbar ["",{"text":"Bite will be ready in: ","color":"dark_red"},{"text":"2","color":"blue"}]
execute if score @s ability3 matches 220 run title @s actionbar ["",{"text":"Bite will be ready in: ","color":"dark_red"},{"text":"1","color":"blue"}]

#goodnight logic
execute if score @s ability8 matches 741 if score @s vampattack matches 1.. run scoreboard players remove @s vampattack 1

#xp bar
execute if score @s ability8 matches ..719 run experience add @s 30
execute if score @s ability8 matches ..719 run scoreboard players add @s ability8 30
execute if score @s ability8 matches 720 run item modify entity @s hotbar.0 under_pack:vamp/shearadd
execute if score @s ability8 matches 720 run experience set @s 741 points
execute if score @s ability8 matches 720 run scoreboard players set @s ability8 741