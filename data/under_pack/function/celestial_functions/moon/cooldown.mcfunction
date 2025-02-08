execute if score @s ability4 matches 1.. run scoreboard players remove @s ability4 1
item modify entity @s hotbar.1 under_pack:celestial/fullmoon
execute if score @s ability4 matches 1 run item replace entity @s hotbar.1 with carrot_on_a_stick[custom_data={celeswap:1b, celefull:1b},custom_name='{"color":"gray","text":"Full Moon"}',unbreakable={}] 1