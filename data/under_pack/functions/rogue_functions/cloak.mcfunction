# Gives effects
effect give @s invisibility 5 0 true
effect give @s speed 5 1 true
effect give @s strength 5 2 false

# Checks for cloak end conditions
execute if entity @s[scores={ultDamage=1..}] run function under_pack:rogue_functions/cloak_end
execute if entity @s[scores={damageTaken=1..}] run function under_pack:rogue_functions/cloak_end
execute if entity @s[nbt={Inventory:[{Slot:1b,tag:{cloak:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{cloak:1b}}},scores={reset=1..}] run function under_pack:rogue_functions/cloak_end
