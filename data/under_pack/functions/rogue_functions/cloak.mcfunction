# Gives effects
effect give @s invisibility 5 0 true
effect give @s speed 5 1 true

# Checks for damage taken or delt
execute if entity @s[scores={ultDamage=1..}] run function under_pack:rogue_functions/cloak_end
execute if entity @s[scores={damageTaken=1..}] run function under_pack:rogue_functions/cloak_end