#carrot on stick
execute as @s[nbt={Inventory:[{Slot:2b,tag:{archerBackstep:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{archerBackstep:1b}}},scores={reset=1..}] if score @s ability3 matches 140.. run function under_pack:archer_functions/archer_backstep

#trigger backstep
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:16711680}}}] on origin as @s[scores={ability3=140..}] run function under_pack:archer_functions/archer_backstep
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:16711680}}}] at @s on origin run give @s tipped_arrow{display:{Name:'{"text":"Heavy Arrow","color":"dark_red","bold":true}'},archerheavy:1b,CustomPotionColor:16711680,Potion:"minecraft:empty"} 1
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:16711680}}}] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:16719871}}}] on origin as @s[scores={ability3=140..}] run function under_pack:archer_functions/archer_backstep
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:16719871}}}] at @s on origin run give @s tipped_arrow{display:{Name:'{"text":"Light Arrow","color":"#FF1FFF","bold":true}'},archerlight:1b,CustomPotionColor:16719871,Potion:"minecraft:empty"} 1
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:16719871}}}] run kill @s


#heavy arrow reload
execute unless entity @s[nbt={Inventory:[{Slot:0b,tag:{archerheavy:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears"},{Slot:0b}]}] run scoreboard players set @s ability1 60
execute unless entity @s[nbt={Inventory:[{Slot:0b,tag:{archerheavy:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears"},{Slot:0b}]}] run item replace entity @s hotbar.0 with shears{CustomModelData:1,Damage:238}
execute if score @s ability1 matches 1.. run function under_pack:archer_functions/archer_heavy_reload
#heavy arrow damage
execute as @e[nbt={Color:16711680}] run data merge entity @s {damage:2.2d}

#light arrow reload
execute unless entity @s[nbt={Inventory:[{Slot:1b,tag:{archerlight:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears"},{Slot:1b}]}] run scoreboard players set @s ability2 60
execute unless entity @s[nbt={Inventory:[{Slot:1b,tag:{archerlight:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears"},{Slot:1b}]}] run item replace entity @s hotbar.1 with shears{CustomModelData:1,Damage:238}
execute if score @s ability2 matches 1.. run function under_pack:archer_functions/archer_light_reload
#light arrow damage
execute as @e[nbt={Color:16719871}] run data merge entity @s {damage:0.7d}
execute as @e[nbt={Color:16719871}] run function under_pack:archer_functions/archer_light_speed

function under_pack:archer_functions/archer_cooldown