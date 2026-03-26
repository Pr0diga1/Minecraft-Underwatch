scoreboard players set @s ability1 1
scoreboard players set @s ability2 0
scoreboard players set @s ability3 1
scoreboard players set @s ability4 1
scoreboard players set @s ability5 1
scoreboard players set @s ability6 1
scoreboard players set @s ability7 1

tag @a remove graved
kill @e[tag=enginehole]

scoreboard players set @s engineerTurretDuration 0

kill @e[tag=enginetrack] 
kill @e[type=snowball]

execute if entity @s[team=uBlue] run kill @e[type=marker,tag=enginewall,tag=blue]
execute if entity @s[team=uRed] run kill @e[type=marker,tag=enginewall,tag=red]

item replace entity @s hotbar.0 with iron_pickaxe[custom_name={"bold":true,"color":"light_purple","text":"Squeeky Hammer"},lore=["Purchased for a very reasonable price"],unbreakable={},custom_data={Tags:["enginepick"]},attribute_modifiers=[{id:"armor",type:"attack_damage",amount:3,operation:"add_value"},{id:"armor",type:"attack_speed",amount:-2.7,operation:"add_value"}]] 1
#healies
execute if entity @s[team=uRed] run item replace entity @s hotbar.2 with snowball[custom_name={"color":"blue","text":"5000mg of Ibuprofen"},custom_data={enginedrug:1b,red:1b}] 1
execute if entity @s[team=uBlue] run item replace entity @s hotbar.2 with snowball[custom_name={"color":"blue","text":"5000mg of Ibuprofen"},custom_data={enginedrug:1b,blue:1b}] 1

#magnet tags reset
execute if entity @s[team=uRed] run tag @a[team=uBlue] remove magneticred
execute if entity @s[team=uBlue] run tag @a[team=uRed] remove magneticblue
execute if entity @s[team=uRed] run scoreboard players reset red engineermagnet 
execute if entity @s[team=uBlue] run scoreboard players reset blue engineermagnet 
execute if entity @s[team=uBlue] run advancement revoke @a[team=uRed] only under_pack:magnet
execute if entity @s[team=uRed] run advancement revoke @a[team=uBlue] only under_pack:magnet