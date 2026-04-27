execute as @s[tag=uDead] run return fail

#reset reset
scoreboard players reset @s reset

#damage arrow reload
execute unless entity @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{scientistDamage:1b}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears",Slot:0b}]}] run scoreboard players set @s scientistDamageReload 20
execute unless entity @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{scientistDamage:1b}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears",Slot:0b}]}] run item replace entity @s hotbar.0 with shears[custom_name="Damage Dart Reloading",damage=238] 1
execute if score @s scientistDamageReload matches 1.. run function under_pack:scientist_functions/scientist_reload_damage

#healing arrow reload
execute unless entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{scientistHealing:1b}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears",Slot:1b}]}] run scoreboard players set @s scientistHealingReload 20
execute unless entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{scientistHealing:1b}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears",Slot:1b}]}] run item replace entity @s hotbar.1 with shears[custom_name="Healing Dart Reloading",damage=238] 1
execute if score @s scientistHealingReload matches 1.. run function under_pack:scientist_functions/scientist_reload_healing

#lightning
execute unless entity @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{scientistLightning:1b}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears",Slot:2b}]}] run scoreboard players set @s ability2 240
execute unless entity @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{scientistLightning:1b}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears",Slot:2b}]}] run item replace entity @s hotbar.2 with shears[custom_name="Electric Dart Reloading",damage=238] 1
execute if score @s ability2 matches 1.. run function under_pack:scientist_functions/scientist_reload_lightning

#rocket reload
#execute unless entity @s[nbt={Inventory:[{Slot:3b,components:{"minecraft:custom_data":{scientistRocket:1b}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears",Slot:3b}]}] run scoreboard players set @s ability3 240
#execute unless entity @s[nbt={Inventory:[{Slot:3b,components:{"minecraft:custom_data":{scientistRocket:1b}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears",Slot:3b}]}] run item replace entity @s hotbar.3 with shears[custom_name="Rocket Dart Reloading",damage=238] 1
#execute if score @s ability3 matches 1.. run function under_pack:scientist_functions/scientist_reload_rocket

#team ticks
execute as @s[team=uRed] run function under_pack:scientist_functions/scientist_tick_red
execute as @s[team=uBlue] run function under_pack:scientist_functions/scientist_tick_blue