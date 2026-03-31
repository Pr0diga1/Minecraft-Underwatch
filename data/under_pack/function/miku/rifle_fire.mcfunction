advancement revoke @s only under_pack:miku/rifle

# Make sure delay is accurate
execute if score @s ability1 matches 1.. run return fail
scoreboard players set @s ability1 10

# Juice dimension
playsound minecraft:item.crossbow.shoot master @a ~ ~ ~ 1 1
playsound minecraft:item.mace.smash_ground master @a ~ ~ ~ 0.3 2
playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 0.5 0.1
#playsound minecraft:block.note_block.harp master @a ~ ~ ~ 1 2
particle note ~ ~1 ~ 0.5 0.5 0.5 0.01 5

# Ammo reduced
scoreboard players remove @s ability2 1
# If ammo out replace with crossbow
execute if score @s ability2 matches 0 run function under_pack:miku/rifle_unloaded

# Actual raycast
scoreboard players set @s movement 0
execute positioned ~ ~ ~ anchored eyes run function under_pack:miku/rifle_raycast