# Ends cloaked effects
effect clear @s
tag @s remove cloaked

# Gives extra damage until next hit
tag @s add assasin
scoreboard players set @s ultDamage 0

# Start cooldown
scoreboard players set @s ability1 101