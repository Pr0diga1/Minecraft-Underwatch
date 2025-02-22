execute if score @s ability4 matches 1.. run scoreboard players remove @s ability4 1
item modify entity @s hotbar.1 under_pack:celestial/fullmoon
execute if score @s[team=uRed] ability4 matches 1 run item replace entity @s hotbar.1 with carrot_on_a_stick[custom_data={celeswap:1b, celefull:1b,red:1b},custom_name='{"color":"gray","text":"Full Moon"}',unbreakable={}] 1
execute if score @s[team=uBlue] ability4 matches 1 run item replace entity @s hotbar.1 with carrot_on_a_stick[custom_data={celeswap:1b, celefull:1b,blue:1b},custom_name='{"color":"gray","text":"Full Moon"}',unbreakable={}] 1

execute if score @s ability5 matches 1.. run scoreboard players remove @s ability5 1
item modify entity @s hotbar.2 under_pack:celestial/tidalpull
execute if score @s[team=uRed] ability5 matches 1 run item replace entity @s hotbar.2 with heart_of_the_sea[consumable={consume_seconds:100000000,animation:"bow",sound:"block.note_block.bass",has_consume_particles:false},custom_data={celeswap:1b, celetidal:true,red:1b},custom_name='{"color":"dark_purple","text":"Tidal Pull"}',unbreakable={}] 1
execute if score @s[team=uBlue] ability5 matches 1 run item replace entity @s hotbar.2 with heart_of_the_sea[consumable={consume_seconds:100000000,animation:"bow",sound:"block.note_block.bass",has_consume_particles:false},custom_data={celeswap:1b, celetidal:true,blue:1b},custom_name='{"color":"dark_purple","text":"Tidal Pull"}',unbreakable={}] 1
