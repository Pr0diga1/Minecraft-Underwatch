# Gives effects
effect give @s invisibility 5 0 true
effect give @s speed 5 1 true
effect give @s strength 5 2 true

execute if score @s onPoint matches 1 run effect give @s glowing 2 0 true

# Checks for cloak end conditions
execute if entity @s[scores={ultDamage=1..}] run function under_pack:rogue_functions/cloak_end
execute if entity @s[scores={damageTaken=1..}] run function under_pack:rogue_functions/cloak_end