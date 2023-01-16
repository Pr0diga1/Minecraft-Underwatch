#ult carrot detection
execute if entity @s[nbt={Inventory:[{Slot:8b,tag:{archerult:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{archerult:1b}}},scores={reset=1..}] run function under_pack:archer_functions/archer_ult
#heavy arrow reload
execute unless entity @s[nbt={Inventory:[{Slot:0b,tag:{archerheavy:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:chainmail_chestplate"},{Slot:0b}]}] run scoreboard players set @s ability1 25
execute unless entity @s[nbt={Inventory:[{Slot:0b,tag:{archerheavy:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:chainmail_chestplate"},{Slot:0b}]}] run item replace entity @s hotbar.0 with chainmail_chestplate{Damage:240}
execute if score @s ability1 matches 1.. run function under_pack:archer_functions/archer_heavy_reload
#heavy arrow damage
execute as @e[nbt={Color:16711680}] run data merge entity @s {damage:3d}

#light arrow reload
execute unless entity @s[nbt={Inventory:[{Slot:1b,tag:{archerlight:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:chainmail_chestplate"},{Slot:1b}]}] run scoreboard players set @s ability2 25
execute unless entity @s[nbt={Inventory:[{Slot:1b,tag:{archerlight:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:chainmail_chestplate"},{Slot:1b}]}] run item replace entity @s hotbar.1 with chainmail_chestplate{Damage:240}
execute if score @s ability2 matches 1.. run function under_pack:archer_functions/archer_light_reload
#light arrow damage
execute as @e[nbt={Color:16719871}] run data merge entity @s {damage:1d}
execute as @e[nbt={Color:16719871}] run function under_pack:archer_functions/archer_light_speed

#grapple
function under_pack:archer_functions/archer_grapple
#grapple cooldown
execute unless entity @s[nbt={Inventory:[{Slot:2b,tag:{archergrapple:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:lead"},{Slot:2b}]}] run scoreboard players set @s ability3 0
execute unless entity @s[nbt={Inventory:[{Slot:2b,tag:{archergrapple:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:lead"},{Slot:2b}]}] run item replace entity @s hotbar.2 with lead{display:{Name:'{"text":"Grapple on Cooldown"}'}} 12
execute if score @s ability3 matches ..240 run scoreboard players add @s ability3 1
execute if score @s ability3 matches 240 run item replace entity @s hotbar.2 with tipped_arrow{display:{Name:'{"text":"Grapple Shot","color":"#009900","bold":true}'},archergrapple:1b,CustomPotionColor:39168,Potion:"minecraft:empty"} 1

#ult
execute if score @s archerultactive matches 1..160 run item replace entity @s hotbar.8 with crossbow{display:{Name:'{"text":"Machine Gun","color":"black"}'},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:10s}],ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b} 1
execute if score @s archerultactive matches 1 run item replace entity @s hotbar.8 with air
execute if score @s archerultactive matches 1..160 run scoreboard players remove @s archerultactive 1

function under_pack:archer_functions/archer_ult_charge
scoreboard players add @s ultTicks 1

function under_pack:archer_functions/archer_cooldown