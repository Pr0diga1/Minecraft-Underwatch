# Ends cloaked effects
effect clear @s
tag @s remove cloaked

# Makes sword unvisible
item modify entity @s hotbar.0 under_pack:rogue/uncloak_sword

# Gives extra damage until next hit
tag @s add assasin
scoreboard players set @s ultDamage 0
scoreboard players set @s damageTaken 0

# Start cooldown
scoreboard players set @s ability1 101
item replace entity @s hotbar.1 with barrier{CustomModelData:19}