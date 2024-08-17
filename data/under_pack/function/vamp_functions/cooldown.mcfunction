#bite
title @s actionbar [{"text":"Bite Recharging:"},{"score":{"name":"@s","objective":"ability1"}}]
execute if score @s ability1 matches 5.. run scoreboard players remove @s ability1 5