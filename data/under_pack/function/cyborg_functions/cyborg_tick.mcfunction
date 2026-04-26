execute as @s[tag=uDead] run return fail

#capacitence death
execute if score @s cyborgcap matches 740.. run function under_pack:cyborg_functions/cyborg_die

#carrot detection
execute if entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{cyborgspeed:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{cyborgspeed:1b}}}},scores={reset=1..}] as @s run function under_pack:cyborg_functions/cyborg_speed
execute if entity @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{cyborgregen:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{cyborgregen:1b}}}},scores={reset=1..}] as @s run function under_pack:cyborg_functions/cyborg_regen
execute if entity @s[nbt={Inventory:[{Slot:4b,components:{"minecraft:custom_data":{cyborgzap:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{cyborgzap:1b}}}},scores={reset=1..}] as @s run function under_pack:cyborg_functions/cyborg_zap

#size stuffs
execute if score @s cyborgsizebuffer matches 1.. run scoreboard players remove @s cyborgsizebuffer 1
execute if score @s cyborgsizebuffer matches 0 if score @s cyborgsize matches ..99 run function under_pack:cyborg_functions/cyborg_size_reset

#zap stuff
execute if score @s cyborgzaptimer matches 1.. run function under_pack:cyborg_functions/cyborg_zap_tick

#preservation
execute if score @s cyborgpreserve matches 1.. as @s[predicate=!under_pack:cyborg_res_check] run scoreboard players remove @s cyborgpreserve 1
execute if score @s cyborgpreserve matches 1 run function under_pack:cyborg_functions/cyborg_regen_reset

#vent tracking
execute if score @s ability7 matches 0.. run scoreboard players remove @s ability7 1
execute if score @s ability7 matches 0 run function under_pack:cyborg_functions/cyborg_vent_end

#acceleration
execute if score @s ability1 matches 1.. run scoreboard players remove @s ability1 1
execute if score @s ability2 matches 1.. run scoreboard players remove @s ability2 1
execute if score @s ability3 matches 1.. run scoreboard players remove @s ability3 1
execute if score @s ability4 matches 1.. run scoreboard players remove @s ability4 1
execute if score @s ability5 matches 1.. run scoreboard players remove @s ability5 1
#find current level
scoreboard players set @s cyborgaccellevel 0
execute if score @s ability1 matches 1.. run scoreboard players set @s cyborgaccellevel 1
execute if score @s ability2 matches 1.. run scoreboard players set @s cyborgaccellevel 2
execute if score @s ability3 matches 1.. run scoreboard players set @s cyborgaccellevel 3
execute if score @s ability4 matches 1.. run scoreboard players set @s cyborgaccellevel 4
execute if score @s ability5 matches 1.. run scoreboard players set @s cyborgaccellevel 5
#buffer
execute unless score @s cyborgaccellevel = @s cyborgaccellevelbuffer run function under_pack:cyborg_functions/cyborg_speed_update
scoreboard players operation @s cyborgaccellevelbuffer = @s cyborgaccellevel

#subtitle display
title @s actionbar [{"text":""},{"text":"Acceleration level: ","color":"blue"},{"score":{"name":"@s","objective":"cyborgaccellevel"},"bold":true,"color":"red"}]

#lower caps
execute if score @s cyborgcap matches 1.. run scoreboard players remove @s cyborgcap 1
execute if score @s cyborgcap matches 1.. run experience add @s -1 points
execute if score @s cyborgcap matches 0 run experience set @s 0 points
execute if score @s cyborgcap matches 0 run experience set @s 100 levels

#warning
execute if score @s cyborgcap matches 590.. unless score @s cyborgcapbuffer matches 590.. run title @s title {"color":"red","text":"Overheating"}
scoreboard players operation @s cyborgcapbuffer = @s cyborgcap

scoreboard players reset @s reset
