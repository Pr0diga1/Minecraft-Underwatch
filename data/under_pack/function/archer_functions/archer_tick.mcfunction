#trigger backstep
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:16711680}}}}] on origin as @s[scores={ability3=140..}] run function under_pack:archer_functions/archer_backstep
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:16711680}}}}] at @s on origin run give @s tipped_arrow[custom_name='{"text":"Heavy Arrow","color":"dark_red","bold":true}',custom_data={archerheavy:1b},potion_contents={custom_color:16711680}] 1
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:16711680}}}}] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:16719871}}}}] on origin as @s[scores={ability3=140..}] run function under_pack:archer_functions/archer_backstep
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:16719871}}}}] at @s on origin run give @s tipped_arrow[custom_name='{"text":"Light Arrow","color":"#FF1FFF","bold":true}',custom_data={archerlight:1b},potion_contents={custom_color:16719871}] 1
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:16719871}}}}] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:shears",count:1,components:{"minecraft:custom_data":{archerReload:1b}}}}] at @s on origin as @s[scores={ability3=140..}] run function under_pack:archer_functions/archer_backstep
execute as @e[type=item,nbt={Item:{id:"minecraft:shears",count:1,components:{"minecraft:custom_data":{archerReload:1b}}}}] at @s on origin run give @s shears[custom_name='"Reloading"',custom_model_data=1,custom_data={archerReload:1b}] 1
execute as @e[type=item,nbt={Item:{id:"minecraft:shears",count:1,components:{"minecraft:custom_data":{archerReload:1b}}}}] run kill @s

#heavy arrow reload
execute unless entity @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{archerheavy:1b}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears"},{Slot:0b}]}] run scoreboard players set @s ability1 60
execute unless entity @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{archerheavy:1b}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears"},{Slot:0b}]}] run item replace entity @s hotbar.0 with shears[custom_name='"Heavy Dart Reloading"',damage=238,custom_model_data=1,custom_data={archerReload:1b}] 1
execute if score @s ability1 matches 1.. run function under_pack:archer_functions/archer_heavy_reload
#heavy arrow damage
execute as @e[nbt={item:{components:{"minecraft:custom_data":{archerheavy:1b}}}}] run data merge entity @s {damage:1.9d}

#light arrow reload
execute unless entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{archerlight:1b}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears"},{Slot:1b}]}] run scoreboard players set @s ability2 60
execute unless entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{archerlight:1b}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears"},{Slot:1b}]}] run item replace entity @s hotbar.1 with shears[custom_name='"Light Dart Reloading"',damage=238,custom_model_data=1,custom_data={archerReload:1b}] 1
execute if score @s ability2 matches 1.. run function under_pack:archer_functions/archer_light_reload
#light arrow damage
execute as @e[nbt={item:{components:{"minecraft:custom_data":{archerlight:1b}}}}] run data merge entity @s {damage:0.6d}
execute as @e[nbt={item:{components:{"minecraft:custom_data":{archerlight:1b}}}}] run function under_pack:archer_functions/archer_light_speed

function under_pack:archer_functions/archer_cooldown
