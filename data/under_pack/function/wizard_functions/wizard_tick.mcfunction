execute as @s[tag=uDead] run return fail

#detect carrot on stick
execute as @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{wizardWand:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{wizardWand:1b}}}},scores={reset=1..}] if score @s ability3 matches 50.. run function under_pack:wizard_functions/wizard_spell
execute as @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{wizardClaws:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{wizardClaws:1b}}}},scores={reset=1..}] at @s if score @s ability2 matches 0 run function under_pack:wizard_functions/wizard_claws

# RUN TEAM SPECIFIC TICKS

execute as @s[team=uRed] run function under_pack:wizard_functions/wizard_tick_red
execute as @s[team=uBlue] run function under_pack:wizard_functions/wizard_tick_blue

#reset reset
scoreboard players reset @s reset

#wizard curse logic
execute if score @s wizardCurse matches 1 at @s anchored eyes positioned ^ ^ ^ anchored feet run function under_pack:wizard_functions/wizard_homing_target

execute if score @s wizardCurse matches 1.. if score @s wizardCurseBuffer = @s wizardCurse run function under_pack:wizard_functions/wizard_homing_released

#set the buffer for next tick
scoreboard players operation @s wizardCurseBuffer = @s wizardCurse

#detect if ride was run for the final tick
execute if score @s wizardRide matches 1 run function under_pack:wizard_functions/wizard_ride_stop
execute if score @s wizardRide matches 1.. run scoreboard players remove @s wizardRide 1

#run the cooldown
function under_pack:wizard_functions/wizard_cooldown