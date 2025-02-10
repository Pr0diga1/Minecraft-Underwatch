#capacitence death
execute if score @s cyborgcap matches 740.. run damage @s 100 explosion
execute if score @s cyborgcap matches 740.. run experience set @s 100 levels
execute if score @s cyborgcap matches 740.. run experience set @s 0 points
execute if score @s cyborgcap matches 740.. run scoreboard players set @s cyborgcap 0

#carrot detection
execute if entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{cyborgspeed:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{cyborgspeed:1b}}}},scores={reset=1..}] as @s run function under_pack:cyborg_functions/cyborg_speed
execute if entity @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{cyborgregen:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{cyborgregen:1b}}}},scores={reset=1..}] as @s run function under_pack:cyborg_functions/cyborg_regen
execute if entity @s[nbt={Inventory:[{Slot:4b,components:{"minecraft:custom_data":{cyborgzap:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{cyborgzap:1b}}}},scores={reset=1..}] as @s run function under_pack:cyborg_functions/cyborg_zap

#size stuffs
execute if score @s cyborgsizebuffer matches 1.. run scoreboard players remove @s cyborgsizebuffer 1
execute if score @s cyborgsizebuffer matches 0 if score @s cyborgsize matches ..99 run function under_pack:cyborg_functions/cyborg_size_reset

#zap stuff
execute if score @s cyborgzaptimer matches 1.. run function under_pack:cyborg_functions/cyborg_zap_tick

#lower caps
execute if score @s cyborgcap matches 1.. run scoreboard players remove @s cyborgcap 1
execute if score @s cyborgcap matches 1.. run experience add @s -1 points
execute if score @s cyborgcap matches 0 run experience set @s 0 points
execute if score @s cyborgcap matches 0 run experience set @s 100 levels

execute if score @s cyborgcap matches 590.. run title @s actionbar {"color":"red","text":"Warning: Overheating"}

scoreboard players reset @s reset
