execute as @s[tag=ninjaDashResist] run effect clear @s resistance

#carror on a stick detection
execute as @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{ninjaDash:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{ninjaDash:1b}}}},scores={reset=1..}] if score @s ability1 matches 41.. run function under_pack:ninja_functions/ninja_dash
execute as @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{ninjaToss:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{ninjaToss:1b}}}},scores={reset=1..}] if score @s ability2 matches 0 run function under_pack:ninja_functions/ninja_toss
execute as @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{ninjaHyperventilate:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{ninjaHyperventilate:1b}}}},scores={reset=1..}] if score @s ability3 matches 0 run function under_pack:ninja_functions/ninja_hyperventilate

#reset reset
scoreboard players set @s reset 0

execute at @s as @e[type=arrow,tag=!tossMoved,tag=nared] rotated as @a[team=uRed,scores={class=6},limit=1,sort=nearest] anchored eyes run function under_pack:ninja_functions/ninja_toss_velo
execute at @s as @e[type=arrow,tag=!tossMoved,tag=nablue] rotated as @a[team=uBlue,scores={class=6},limit=1,sort=nearest] anchored eyes run function under_pack:ninja_functions/ninja_toss_velo

#hyperventilate ability1
execute if score @s ninjaHyperventilate matches 1.. run function under_pack:ninja_functions/ninja_hyperventilate_tick

#cooldowns
function under_pack:ninja_functions/ninja_cooldown
