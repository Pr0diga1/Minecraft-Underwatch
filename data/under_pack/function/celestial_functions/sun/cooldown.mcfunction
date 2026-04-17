#supernova
execute if score @s ability1 matches 1.. run scoreboard players remove @s ability1 1
item modify entity @s hotbar.1 under_pack:celestial/supernova
execute if score @s[team=uRed] ability1 matches 1 run item replace entity @s hotbar.1 with carrot_on_a_stick[custom_data={celeswap:1b, celenova:1b,red:1b},custom_name={"color":"dark_purple","text":"Supernova"},unbreakable={},item_model="sunflower"] 1
execute if score @s[team=uBlue] ability1 matches 1 run item replace entity @s hotbar.1 with carrot_on_a_stick[custom_data={celeswap:1b, celenova:1b,blue:1b},custom_name={"color":"dark_purple","text":"Supernova"},unbreakable={},item_model="sunflower"] 1


#sunset
execute if score @s ability2 matches 1.. run scoreboard players remove @s ability2 1
item modify entity @s hotbar.2 under_pack:celestial/sunset
execute if score @s[team=uRed] ability2 matches 1 run item replace entity @s hotbar.2 with carrot_on_a_stick[custom_data={celeswap:1b, celeset:1b,red:1b},custom_name={"color":"gold","text":"Sunset"},unbreakable={},item_model="ochre_froglight"] 1
execute if score @s[team=uBlue] ability2 matches 1 run item replace entity @s hotbar.2 with carrot_on_a_stick[custom_data={celeswap:1b, celeset:1b,blue:1b},custom_name={"color":"gold","text":"Sunset"},unbreakable={},item_model="ochre_froglight"] 1


scoreboard players reset @s reset