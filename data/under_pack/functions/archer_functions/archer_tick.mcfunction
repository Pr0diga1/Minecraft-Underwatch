#carrot on stick
execute as @s[nbt={Inventory:[{Slot:2b,tag:{archerBackstep:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{archerBackstep:1b}}},scores={reset=1..}] if score @s ability3 matches 140.. run function under_pack:archer_functions/archer_backstep

#heavy arrow reload
execute unless entity @s[nbt={Inventory:[{Slot:0b,tag:{archerheavy:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:chainmail_chestplate"},{Slot:0b}]}] run scoreboard players set @s ability1 60
execute unless entity @s[nbt={Inventory:[{Slot:0b,tag:{archerheavy:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:chainmail_chestplate"},{Slot:0b}]}] run item replace entity @s hotbar.0 with chainmail_chestplate{Damage:240}
execute if score @s ability1 matches 1.. run function under_pack:archer_functions/archer_heavy_reload
#heavy arrow damage
execute as @e[nbt={Color:16711680}] run data merge entity @s {damage:2.4d}

#light arrow reload
execute unless entity @s[nbt={Inventory:[{Slot:1b,tag:{archerlight:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:chainmail_chestplate"},{Slot:1b}]}] run scoreboard players set @s ability2 60
execute unless entity @s[nbt={Inventory:[{Slot:1b,tag:{archerlight:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:chainmail_chestplate"},{Slot:1b}]}] run item replace entity @s hotbar.1 with chainmail_chestplate{Damage:240}
execute if score @s ability2 matches 1.. run function under_pack:archer_functions/archer_light_reload
#light arrow damage
execute as @e[nbt={Color:16719871}] run data merge entity @s {damage:1.3d}
execute as @e[nbt={Color:16719871}] run function under_pack:archer_functions/archer_light_speed

function under_pack:archer_functions/archer_cooldown