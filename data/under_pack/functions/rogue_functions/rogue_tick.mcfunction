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

## Ult first phase
# Track ult
execute if score @s rogueUltActive matches 0 run function under_pack:rogue_functions/ult_track
# Add to tick tracker
scoreboard players add @s ultTicks 1
# Use ult
execute if entity @s[nbt={Inventory:[{Slot:8b,tag:{rogueUlt:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{rogueUlt:1b}}},scores={reset=1..}] run function under_pack:rogue_functions/ult_start
execute if entity @s[nbt={Inventory:[{Slot:8b,tag:{useUlt:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{rogueUlt:1b}}},scores={reset=1..}] run function under_pack:rogue_functions/ult_attack
# Ult tick
execute unless entity @s[tag=executing] if entity @s[scores={rogueUltActive=1..},team=uBlue] as @e[type=marker,tag=rogueUlt,tag=uBlue] at @s run function under_pack:rogue_functions/ult_tick_blue
execute unless entity @s[tag=executing] if entity @s[scores={rogueUltActive=1..},team=uRed] as @e[type=marker,tag=rogueUlt,tag=uRed] at @s run function under_pack:rogue_functions/ult_tick_red
# Keeps rogue in place
execute unless entity @s[tag=executing] if entity @s[scores={rogueUltActive=1..}] rotated as @s at @e[tag=tp_to,limit=1,sort=nearest] run tp @s ~ ~ ~

## Ult second phase
# Tp to current target
execute if entity @s[tag=executing] run function under_pack:rogue_functions/ult_tick