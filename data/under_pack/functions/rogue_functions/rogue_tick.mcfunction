## Passive abilities
# Perma speed
effect give @s speed 5 0 true

## Active abilities
# Ability use detection
execute unless entity @s[tag=cloaked] as @s[nbt={Inventory:[{Slot:1b,tag:{cloak:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{cloak:1b}}},scores={reset=1..}] run function under_pack:rogue_functions/cloak_start
execute as @s[nbt={Inventory:[{Slot:2b,tag:{pocketSand:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pocketSand:1b}}},scores={reset=1..}] run function under_pack:rogue_functions/pocket_sand
# Cloak tick
execute if entity @s[tag=cloaked] run function under_pack:rogue_functions/cloak
# Cooldowns
execute if entity @s[scores={ability1=1..}] run function under_pack:rogue_functions/cloak_cooldown
execute if entity @s[scores={ability2=1..}] run function under_pack:rogue_functions/pocket_sand_cooldown
