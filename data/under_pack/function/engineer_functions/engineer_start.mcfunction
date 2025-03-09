clear @s

#pickaxe
item replace entity @s hotbar.0 with iron_pickaxe[custom_name='{"bold":true,"color":"light_purple","text":"Squeeky Hammer"}',lore=['"Purchased for a very reasonable price"'],unbreakable={show_in_tooltip:false},custom_data={Tags:["enginepick"]},attribute_modifiers=[{id:"armor",type:"attack_damage",amount:2.5,operation:"add_value",slot:"mainhand"},{id:"armor",type:"attack_speed",amount:-3.1,operation:"add_value",slot:"mainhand"}]] 1

#wrench
item replace entity @s hotbar.1 with shears[enchantments={levels:{"minecraft:knockback":2}},custom_name='{"bold":true,"color":"gray","text":"Wrench"}',custom_data={wrench:1b}] 1

#healies
execute if entity @s[team=uRed] run item replace entity @s hotbar.2 with snowball[custom_name='{"color":"blue","text":"5000mg of Ibuprofen"}',custom_data={enginedrug:1b,red:1b}] 1
execute if entity @s[team=uBlue] run item replace entity @s hotbar.2 with snowball[custom_name='{"color":"blue","text":"5000mg of Ibuprofen"}',custom_data={enginedrug:1b,blue:1b}] 1

#viagra
item replace entity @s hotbar.3 with ender_eye[custom_name='{"color":"dark_red","text":"Viagra"}',custom_data={enginedrug:1b}] 2

#wall
item replace entity @s hotbar.4 with ender_eye[custom_name='{"color":"gray","text":"Wall"}',custom_data={enginewall:1b}] 2

#wd-40
item replace entity @s hotbar.5 with carrot_on_a_stick[custom_name='{"color":"blue","text":"WD-40"}',custom_data={enginewd:1b}]

#turret
item replace entity @s hotbar.6 with ender_eye[custom_name='{"color":"dark_red","text":"Thingamabob"}',custom_data={engineburst:1b}] 2

#magnet
item replace entity @s hotbar.7 with carrot_on_a_stick[custom_name='{"color":"red","text":"Magnet"}',custom_data={enginemag:1b}]

#armor
item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:false},dyed_color=16777215] 1
item replace entity @s armor.legs with diamond_leggings[unbreakable={show_in_tooltip:false}]
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:blast_protection":8,"minecraft:depth_strider":2}},attribute_modifiers=[{id:"armor",type:"max_health",amount:0,operation:"add_value",slot:"feet"},{id:"explosion_knockback_resistance",type:"explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"}]] 1

scoreboard players set @s ability1 1
scoreboard players set @s ability2 0
scoreboard players set @s ability3 1
scoreboard players set @s ability5 1
scoreboard players set @s ability4 1
scoreboard players set @s ability7 1

experience set @s 100 levels
experience set @s 742 points

execute as @s[team=uRed] run kill @e[type=marker,tag=redEngineerTurret]
execute as @s[team=uBlue] run kill @e[type=marker,tag=blueEngineerTurret]

execute as @s[team=uRed] run tag @a remove redViagraTarget
execute as @s[team=uBlue] run tag @a remove blueViagraTarget

#run the class select
function under_pack:general_functions/general_character_select