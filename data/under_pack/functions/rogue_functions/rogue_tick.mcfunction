## Passive abilities
# Perma speed
effect give @s speed 5 0 true

#reset rogue capping for the tick
scoreboard players set @s cantCap 0

## Active abilities
# Ability use detection
execute unless entity @s[tag=cloaked] as @s[nbt={Inventory:[{Slot:1b,tag:{cloak:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{cloak:1b}}},scores={reset=1..}] run function under_pack:rogue_functions/cloak_start
execute as @s[nbt={Inventory:[{Slot:3b,tag:{pocketSand:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pocketSand:1b}}},scores={reset=1..}] run function under_pack:rogue_functions/pocket_sand
execute as @s[nbt={Inventory:[{Slot:4b,tag:{swap:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{swap:1b}}},scores={reset=1..}] run function under_pack:rogue_functions/swap_target
execute as @s[nbt={Inventory:[{Slot:4b,tag:{swap:2b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{swap:2b}}},scores={reset=1..}] run function under_pack:rogue_functions/swap_use
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:crossbow",Slot:2b,tag:{Charged:1b}}]},scores={ability4=..1}] run function under_pack:rogue_functions/poison
# Cloak tick
execute as @s[tag=cloaked] if entity @a[distance=..7] run function under_pack:rogue_functions/cloak
# Cooldowns
execute if entity @s[scores={ability1=1..}] run function under_pack:rogue_functions/cloak_cooldown
execute if entity @s[scores={ability2=1..}] run function under_pack:rogue_functions/pocket_sand_cooldown
execute if entity @s[scores={ability3=1..}] run function under_pack:rogue_functions/swap_cooldown
execute if entity @s[scores={ability4=1..}] run function under_pack:rogue_functions/poison_cooldown
