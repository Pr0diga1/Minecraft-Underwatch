#bite
title @s actionbar [{"color":"dark_red","text":"Bite Recharging: "},{"score":{"name":"@s","objective":"ability1"}}]
execute if score @s ability1 matches 5.. run scoreboard players remove @s ability1 5

#taint
item modify entity @s hotbar.1 under_pack:vamp/tainted
execute if score @s ability2 matches 1 run item replace entity @s hotbar.1 with ghast_tear[custom_name='{"text":"Tainted Fangs"}',custom_data={vamptaint:1b}]
execute if score @s ability2 matches 1.. run scoreboard players remove @s ability2 1