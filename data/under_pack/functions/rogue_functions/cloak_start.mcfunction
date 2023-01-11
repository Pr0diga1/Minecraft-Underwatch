# Tags for the cloak tick
tag @s add cloaked

# Makes sword invisible
item modify entity @s hotbar.0 under_pack:rogue/cloak_sword

# Resets reset
scoreboard players reset @s reset

# Sets up forced exit scores
scoreboard players set @s ultDamage 0
scoreboard players set @s damageTaken 0

# Sound and particles
playsound minecraft:item.armor.equip_elytra master @s ~ ~ ~ 1 0
particle minecraft:campfire_signal_smoke ~ ~0.5 ~ 0.4 1 0.4 0 50 normal