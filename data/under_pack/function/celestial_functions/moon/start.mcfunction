clear @s
item replace entity @s[team=uRed] hotbar.0 with snowball[custom_data={celeswap:1b,celedrop:1b,red:1b},custom_name='{"color":"dark_blue","text":"Lunar Drop"}'] 2
item replace entity @s[team=uBlue] hotbar.0 with snowball[custom_data={celeswap:1b,celedrop:1b,blue:1b},custom_name='{"color":"dark_blue","text":"Lunar Drop"}'] 2

item replace entity @s[team=uRed] hotbar.1 with carrot_on_a_stick[custom_data={celeswap:1b, celefull:1b,red:1b},custom_name='{"color":"gray","text":"Full Moon"}',unbreakable={}] 1
item replace entity @s[team=uRed] hotbar.2 with carrot_on_a_stick[custom_data={celeswap:1b, celetidal:1b,red:1b},custom_name='{"color":"dark_purple","text":"Tidal Pull"}',unbreakable={}] 1

item replace entity @s[team=uBlue] hotbar.1 with carrot_on_a_stick[custom_data={celeswap:1b, celefull:1b,blue:1b},custom_name='{"color":"gray","text":"Full Moon"}',unbreakable={}] 1
item replace entity @s[team=uBlue] hotbar.2 with carrot_on_a_stick[custom_data={celeswap:1b, celetidal:1b,blue:1b},custom_name='{"color":"dark_purple","text":"Tidal Pull"}',unbreakable={}] 1

experience set @s 100 levels
experience set @s 741 points
scoreboard players set @s ability3 1
