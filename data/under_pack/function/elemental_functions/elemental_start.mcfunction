clear @s

#elements
item replace entity @s hotbar.0 with ender_eye[custom_name='{"color":"gold","text":"Fire"}'] 1
item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name='{"color":"white","text":"Wind"}',custom_data={elementalWind:1b}] 1
item replace entity @s hotbar.2 with carrot_on_a_stick[custom_name='{"color":"dark_aqua","text":"Water"}',custom_data={elementalWater:1b}] 1
item replace entity @s hotbar.3 with carrot_on_a_stick[custom_name='{"color":"gray","text":"Earth"}',custom_data={elementalEarth:1b}] 1

#armor
item replace entity @s armor.feet with iron_boots[attribute_modifiers=[{id:"explosion_knockback_resistance",type:"generic.explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"}],unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:blast_protection":8,"minecraft:depth_strider":2}}] 1
item replace entity @s armor.legs with diamond_leggings[unbreakable={show_in_tooltip:false}]
item replace entity @s armor.head with chainmail_helmet[unbreakable={show_in_tooltip:false}]

#variables
scoreboard players set @s elementalBar 740
scoreboard players set @s elementalBarBuffer 740
scoreboard players set @s elementalWaterState 0
execute as @s[team=uRed] run scoreboard players set @a[team=uBlue] elementalFireHit 0
execute as @s[team=uBlue] run scoreboard players set @a[team=uRed] elementalFireHit 0
execute as @s[team=uRed] run scoreboard players set @a[team=uRed] elementalWaterHit 0
execute as @s[team=uBlue] run scoreboard players set @a[team=uBlue] elementalWaterHit 0
execute as @s[team=uRed] run scoreboard players set @a[team=uRed] elementalEarthTimer 0
execute as @s[team=uBlue] run scoreboard players set @a[team=uBlue] elementalEarthTimer 0

#constants
scoreboard players set ElementalWaterTiming constant 7
scoreboard players set ElementalFireTiming constant 7

#clean spare arrows
kill @e[type=arrow,tag=ElementalFireArrow]
kill @e[type=arrow,tag=elementalEarthArrow]

scoreboard players set @s elementalBarTimer 0

#clean markers
execute as @s[team=uRed] run kill @e[type=marker,tag=redElementalWater]
execute as @s[team=uBlue] run kill @e[type=marker,tag=blueElementalWater]
kill @e[type=marker,tag=elementalStun]
execute as @s[team=uRed] run kill @e[type=block_display,tag=redElementalEarth]
execute as @s[team=uBlue] run kill @e[type=block_display,tag=blueElementalEarth]

#run the class select
function under_pack:general_functions/general_character_select

#xp
experience set @s 100 levels
experience set @s 741 points