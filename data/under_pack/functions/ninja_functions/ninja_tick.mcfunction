#carror on a stick detection
execute as @s[nbt={Inventory:[{Slot:0b,tag:{ninjaDash:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ninjaDash:1b}}},scores={reset=1..}] if score @s ability1 matches 160.. run function under_pack:ninja_functions/ninja_dash
execute as @s[nbt={Inventory:[{Slot:1b,tag:{ninjaToss:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ninjaToss:1b}}},scores={reset=1..}] if score @s ability2 matches 140.. run function under_pack:ninja_functions/ninja_toss
execute as @s[nbt={Inventory:[{Slot:2b,tag:{ninjaHyperventilate:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ninjaHyperventilate:1b}}},scores={reset=1..}] if score @s ability3 matches 300.. run function under_pack:ninja_functions/ninja_hyperventilate
execute as @s[nbt={Inventory:[{Slot:8b,tag:{ninjaUlt:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ninjaUlt:1b}}},scores={reset=1..}] run function under_pack:ninja_functions/ninja_ult


#reset reset
scoreboard players set @s reset 0
#add to tick tracker
scoreboard players add @s ultTicks 1

#arrow velo setting
function under_pack:ninja_functions/ninja_toss_tick

#hyperventilate ability1
execute if score @s ninjaHyperventilate matches 1.. run function under_pack:ninja_functions/ninja_hyperventilate_tick

#ult tracking
execute if score @s ninjaUltActive matches 0 run function under_pack:ninja_functions/ninja_ult_track

#running the ult
execute if score @s ninjaUltTiming matches 2.. run function under_pack:ninja_functions/ninja_ult_tick

#ending the ult
execute if score @s ninjaUltTiming matches 1 run function under_pack:ninja_functions/ninja_ult_end

#cooldowns
function under_pack:ninja_functions/ninja_cooldown
