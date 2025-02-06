#supernova
execute if score @s ability1 matches 1.. run scoreboard players remove @s ability1 1
item modify entity @s hotbar.1 under_pack:celestial/supernova
execute if score @s ability1 matches 1 run item replace entity @s hotbar.1 with carrot_on_a_stick[custom_data={celeswap:1b, celenova:1b},custom_name='{"color":"dark_purple","text":"Supernova"}',unbreakable={}] 1

#sunset
execute if score @s ability2 matches 1.. run scoreboard players remove @s ability2 1
item modify entity @s hotbar.2 under_pack:celestial/sunset
execute if score @s ability2 matches 1 run item replace entity @s hotbar.2 with carrot_on_a_stick[custom_data={celeswap:1b, celeset:1b},custom_name='{"color":"gold","text":"Supernova"}',unbreakable={}] 1


scoreboard players reset @s reset