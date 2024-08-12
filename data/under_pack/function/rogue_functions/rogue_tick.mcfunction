## Passive abilities
#reset rogue capping for the tick
scoreboard players set @s cantCap 0

## Active abilities
# Ability use detection
execute unless entity @s[tag=cloaked] as @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{cloak:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{cloak:1b}}}},scores={reset=1..}] run function under_pack:rogue_functions/cloak_start
execute as @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{swap:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{swap:1b}}}},scores={reset=1..}] run function under_pack:rogue_functions/swap_target
execute as @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{swap:2b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{swap:2b}}}},scores={reset=1..}] run function under_pack:rogue_functions/swap_use
# Cloak tick
execute as @s[tag=cloaked] if entity @a[distance=..7] run function under_pack:rogue_functions/cloak
# Cooldowns
execute if entity @s[scores={ability1=1..}] run function under_pack:rogue_functions/cloak_cooldown
execute if entity @s[scores={ability3=1..}] run function under_pack:rogue_functions/swap_cooldown