#carrot on a stick detection
execute if entity @s[nbt={Inventory:[{Slot:1b,tag:{lumberjump:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{lumberjump:1b}}},scores={reset=1..}] as @s run function under_pack:lumberjack_functions/lumberjack_jump
execute if entity @s[nbt={Inventory:[{Slot:0b,tag:{lumberthrow:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{lumberthrow:1b}}},scores={reset=1..}] as @s[scores={ability1=200..},nbt={OnGround:0b}] run function under_pack:lumberjack_functions/lumberjack_throw

scoreboard players reset @s reset

#lumber drop
execute as @s[tag=lumberDrop] run function under_pack:lumberjack_functions/lumberjack_throw_tick
execute if score @s ability1 matches ..200 run scoreboard players add @s ability1 1

#clear levitation
execute as @s[nbt={ActiveEffects:[{Id:25,Amplifier:56b,Duration:38}]}] run effect clear @s levitation

#jump cooldown
execute if score @s movement matches ..80 run scoreboard players add @s movement 1
execute if score @s movement matches 80 run item replace entity @s hotbar.1 with carrot_on_a_stick{CustomModelData:27,display:{Name:'{"text":"Strong Jump","color":"blue"}'},lumberjump:1b} 1

function under_pack:lumberjack_functions/lumberjack_cooldown
