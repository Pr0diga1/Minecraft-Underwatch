scoreboard players set @s ability1 0
scoreboard players set @s ability2 0
scoreboard players set @s ability3 0
scoreboard players set @s ability4 219

scoreboard players set @s ability7 299
tag @a remove graved
kill @e[tag=enginehole]

function under_pack:engineer_functions/engineer_turret_destroy
scoreboard players set @s engineerTurretDuration 0

kill @e[tag=enginetrack] 
kill @e[nbt={Item:{tag:{enginedrug:1b}}}]
kill @e[type=snowball]

execute if entity @s[team=uBlue] run kill @e[type=marker,tag=enginewall,tag=blue]
execute if entity @s[team=uRed] run kill @e[type=marker,tag=enginewall,tag=red]

item replace entity @s hotbar.0 with iron_pickaxe[custom_name='{"bold":true,"color":"light_purple","text":"Squeeky Hammer"}',lore=['"Purchased for a very reasonable price"'],unbreakable={show_in_tooltip:false},custom_model_data=1,custom_data={Tags:["enginepick"]},attribute_modifiers={modifiers:[{id:"armor",type:"generic.attack_damage",amount:3,operation:"add_value"},{id:"armor",type:"generic.attack_speed",amount:-2.7,operation:"add_value"}],show_in_tooltip:false}] 1
#healies
execute if entity @s[team=uRed] run item replace entity @s hotbar.2 with snowball[custom_name='{"color":"blue","text":"5000mg of Ibuprofen"}',custom_model_data=3,custom_data={enginedrug:1b,red:1b}] 1
execute if entity @s[team=uBlue] run item replace entity @s hotbar.2 with snowball[custom_name='{"color":"blue","text":"5000mg of Ibuprofen"}',custom_model_data=3,custom_data={enginedrug:1b,blue:1b}] 1

#magnet tags reset
execute if entity @s[team=uRed] run tag @a[team=uBlue] remove magneticred
execute if entity @s[team=uBlue] run tag @a[team=uRed] remove magneticblue
execute if entity @s[team=uRed] run scoreboard players reset red engineermagnet 
execute if entity @s[team=uBlue] run scoreboard players reset blue engineermagnet 