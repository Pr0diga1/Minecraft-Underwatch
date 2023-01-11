#carrot on stick detection
execute if entity @s[nbt={Inventory:[{Slot:1b,tag:{paladinBubble:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{paladinBubble:1b}}},scores={reset=1..}] if score @s ability1 matches 340.. at @s run function under_pack:paladin_functions/paladin_bubble
execute if entity @s[nbt={Inventory:[{Slot:2b,tag:{paladinScream:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{paladinScream:1b}}},scores={reset=1..}] if score @s ability2 matches 240.. at @s run function under_pack:paladin_functions/paladin_scream
execute if entity @s[nbt={Inventory:[{Slot:8b,tag:{paladinUlt:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{paladinUlt:1b}}},scores={reset=1..}] run function under_pack:paladin_functions/paladin_ult

#reset reset
scoreboard players reset @s reset

#shield breaks
execute unless entity @s[nbt={Inventory:[{id:"minecraft:shield"},{Slot:-106b}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:oak_planks"},{Slot:-106b}]}] run function under_pack:paladin_functions/paladin_shield_break

#shield delay
execute if score @s paladinIsBlocking matches 1 run scoreboard players set @s shieldDelay 60

#run shield delay down
execute if entity @s[scores={paladinIsBlocking=0,shieldDelay=1..}] run scoreboard players remove @s shieldDelay 1

#shield is not blocking logic
execute if entity @s[scores={paladinIsBlocking=0,shieldStatus=..249,shieldDelay=0,movement=0}] run scoreboard players add @s shieldStatus 1

#give new shield at 1
execute if score @s shieldStatus matches 1 if score @s paladinIsBlocking matches 0 run item replace entity @s weapon.offhand with shield{display:{Name:'{"text":"Piece of Driftwood"}'},HideFlags:1,Unbreakable:1b} 1

#actionbar
title @s actionbar ["",{"score":{"name":"@s","objective":"shieldStatus"},"color":"dark_red"},{"text":"/250","color":"dark_blue"}]

#cooldowns
function under_pack:paladin_functions/paladin_cooldown

#ult
execute if score @s paladinUltActive matches 1 run scoreboard players remove @s paladinUltTiming 1
scoreboard players operation @s paladinUltTimingBuffer = @s paladinUltTiming
scoreboard players operation @s paladinUltTimingBuffer %= TheNumberFive constant

execute if score @s paladinUltActive matches 1 if score @s paladinUltTimingBuffer matches 0 at @s run function under_pack:paladin_functions/paladin_ult_tick

#ult charge
execute if score @s paladinUltActive matches 0 run function under_pack:paladin_functions/paladin_ult_charge

#is player blocking for the next tick
scoreboard players set @s paladinIsBlocking 0