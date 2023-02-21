clear @s

#elements
item replace entity @s hotbar.0 with ender_eye{display:{Name:'{"text":"Fire","color":"gold"}'}} 1
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Wind","color":"white"}'},elementalWind:1b} 1
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Water","color":"dark_aqua"}'},elementalWater:1b} 1
item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"Earth","color":"gray"}'},elementalEarth:1b} 1

#variables
scoreboard players set @s elementalBar 740
scoreboard players set @s elementalBarBuffer 740
scoreboard players set @s elementalWaterState 0

#clean tags
tag @s remove elementalLocked

#clean markers
execute as @s[team=uRed] run kill @e[type=marker,tag=redElementalWater]
execute as @s[team=uBlue] run kill @e[type=marker,tag=blueElementalWater]

#run the class select
function under_pack:general_functions/general_character_select

#xp
experience set @s 100 levels
experience set @s 741 points