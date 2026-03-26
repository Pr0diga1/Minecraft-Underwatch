#tallying for the toss 
execute if score @s ability2 matches 1.. run scoreboard players remove @s ability2 1
#intervals for the toss
item modify entity @s hotbar.1 under_pack:ninja/throw
execute if score @s ability2 matches 1 run item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name={"color":"blue","text":"Shuriken Throw"},custom_data={ninjaToss:1b}] 1

#tallying for the 1.8
execute if score @s ability3 matches 1.. if score @s ninjaHyperventilate matches 0 run scoreboard players remove @s ability3 1

#intervals for the 1.8
item modify entity @s hotbar.2 under_pack:ninja/knuckles
execute if score @s ability3 matches 1 run item replace entity @s hotbar.2 with carrot_on_a_stick[custom_name={"color":"gold","text":"Brass Knuckles"},lore=["Right Click to hyperventilate"],custom_data={ninjaHyperventilate:1b},attribute_modifiers=[{id:"armor",type:"attack_damage",amount:2,operation:"add_value",slot:"mainhand"},{id:"armor",type:"attack_speed",amount:-2,operation:"add_value",slot:"mainhand"}]] 1

#tallying for the dash
execute if score @s ability1 matches ..199 run scoreboard players add @s ability1 1
#intervals for the dash
scoreboard players operation @s ninjadashbuffer = @s ability1
scoreboard players operation @s ninjadashbuffer %= 8 constant
execute if score @s ability1 matches 48..192 if score @s ninjadashbuffer matches 0 run scoreboard players add @s ninjadashbufferbuffer 5
execute if entity @s[team=uRed] store result storage ninja dash.red int 1 run scoreboard players get @s ninjadashbufferbuffer
execute if entity @s[team=uBlue] store result storage ninja dash.blue int 1 run scoreboard players get @s ninjadashbufferbuffer

execute if score @s ability1 matches 0..1 run title @s actionbar ["",{"text":"Dash recharging","color":"dark_purple"}]
execute if score @s ability1 matches 20 run title @s actionbar ["",{"text":"Dash recharging","color":"dark_purple"}]
execute if score @s ability1 matches 48..192 run function under_pack:ninja_functions/ninja_dash_cooldown with storage ninja dash

execute if score @s ability1 matches 200.. run title @s actionbar ["",{"text":"Dash ","color":"dark_purple"},{"text":"fully charged","color":"blue"}]
execute if score @s ability1 matches 200.. run scoreboard players reset @s ninjadashbufferbuffer