#crossbow detection
execute if score @s ability1 matches 121 if entity @s[nbt=!{Inventory:[{id:"minecraft:crossbow",Slot:1b,tag:{Charged:1b}}]}] run function under_pack:engineer_functions/engineer_crossbow

#healies
function under_pack:engineer_functions/engineer_heal
kill @e[type=item,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{enginedrug:1b}}}]

#wall
execute if score @s ability3 matches 181 if entity @s[nbt={Inventory:[{Slot:3b,tag:{enginewall:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{enginewall:1b}}},scores={reset=1..}] as @s run function under_pack:engineer_functions/engineer_wall

#WD-40
execute if score @s ability4 matches 221 if entity @s[nbt={Inventory:[{Slot:4b,tag:{engineslip:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{engineslip:1b}}},scores={reset=1..}] as @s run function under_pack:engineer_functions/engineer_slip
execute if score @s engineer_wd matches 1..4 run scoreboard players remove @s engineer_wd 1
execute if score @s engineer_wd matches 1 run effect clear @a speed

#crossbow cooldown
execute if score @s ability1 matches ..120 run scoreboard players add @s ability1 1
execute if score @s ability1 matches 120 run item replace entity @s hotbar.1 with crossbow{display:{Name:'{"text":"Nerf Bow","color":"#FF7500"}'},HideFlags:3,Tags:["enginecross"],Enchantments:[{id:"minecraft:piercing",lvl:2s}],ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:24,Amplifier:100b,Duration:100}],CustomPotionColor:16777001}},{},{}],Charged:1b} 1

execute if score @s ability3 matches ..180 run scoreboard players add @s ability3 1
execute if score @s ability3 matches 180 run item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"Cardboard and Duct Tape","color":"gold"}'},enginewall:1b} 1

execute if score @s ability4 matches ..220 run scoreboard players add @s ability4 1 
execute if score @s ability4 matches 220 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"WD-40","color":"dark_blue"}'},engineslip:1b} 1

#capicitor chestpate
#capicitor damage tracking
execute if score @s engineerdamage matches 1..20 run scoreboard players add @s engineercap 7
execute if score @s engineerdamage matches 21..40 run scoreboard players add @s engineercap 14
execute if score @s engineerdamage matches 41..59 run scoreboard players add @s engineercap 17
execute if score @s engineerdamage matches 60.. run scoreboard players add @s engineercap 20
scoreboard players set @s engineerdamage 0
execute if score @s engineercap matches 100.. as @s[scores={engineercap=100..}] at @s run function under_pack:engineer_functions/engineer_capacitor
#capacitor explotion tick
#execute if score @s movement matches 1..10 as @a[tag=capped] at @s run tp @s @e[tag=enginecap,sort=nearest,limit=1]
execute if score @s[team=uRed] movement matches 1..10 as @e[tag=enginecap,tag=red] at @s run tp @a[tag=capped,limit=1,sort=nearest,team=uBlue] ~ ~ ~
execute if score @s[team=uRed] movement matches 1..10 run scoreboard players remove @s movement 1
execute if score @s[team=uRed] movement matches 0 run kill @e[tag=enginecap,tag=red]
execute if score @s[team=uRed] movement matches 0 run tag @a[team=uBlue] remove capped

execute if score @s[team=uBlue] movement matches 1..10 as @e[tag=enginecap,tag=blue] at @s run tp @a[tag=capped,limit=1,sort=nearest,team=uRed] ~ ~ ~
execute if score @s[team=uBlue] movement matches 1..10 run scoreboard players remove @s movement 1
execute if score @s[team=uBlue] movement matches 0 run kill @e[tag=enginecap,tag=blue]
execute if score @s[team=uBlue] movement matches 0 run tag @a[team=uRed] remove capped

function under_pack:engineer_functions/engineer_cooldown
#set arrow damage
execute as @e[type=arrow,nbt={Color:16777001}] run data merge entity @s {damage:1.50d}

scoreboard players reset @s reset