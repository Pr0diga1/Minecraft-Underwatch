item modify entity @s hotbar.2 under_pack:vamp/bomb
execute if score @s ability2 matches 1 run item replace entity @s[team=uRed] hotbar.2 with snowball[custom_data={vampbomb:1b,red:1b},custom_name={"color":"dark_red","text":"Blood Bomb"}] 1
execute if score @s ability2 matches 1 run item replace entity @s[team=uBlue] hotbar.2 with snowball[custom_data={vampbomb:1b,blue:1b},custom_name={"color":"dark_red","text":"Blood Bomb"}] 1

scoreboard players remove @s ability2 1
