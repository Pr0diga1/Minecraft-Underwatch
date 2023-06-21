clear @s

#elements
item replace entity @s hotbar.0 with ender_eye{display:{Name:'{"text":"Fire","color":"gold"}'}} 1
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Wind","color":"white"}'},elementalWind:1b} 1
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Water","color":"dark_aqua"}'},elementalWater:1b} 1
item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"Earth","color":"gray"}'},elementalEarth:1b} 1

#armor
item replace entity @s armor.feet with iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:8s},{id:"minecraft:depth_strider",lvl:2s}]}
item replace entity @s armor.legs with diamond_leggings{Unbreakable:1b}
item replace entity @s armor.head with chainmail_helmet{Unbreakable:1b}

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