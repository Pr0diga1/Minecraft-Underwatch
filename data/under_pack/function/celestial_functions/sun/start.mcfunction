item replace entity @s hotbar.0 with golden_sword[attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:2.5,operation:"add_value"},{id:"attack_speed",type:"attack_speed",amount:-2.75,operation:"add_value"}],custom_data={celeswap:1b, celeshine:1b},custom_name='{"color":"yellow","text":"Shine"}',unbreakable={}] 1



scoreboard players set @s celestance 1

execute as @s[team=uRed] run scoreboard players reset @a[team=uRed] celeadjust
execute as @s[team=uBlue] run scoreboard players reset @a[team=uBlue] celeadjust
