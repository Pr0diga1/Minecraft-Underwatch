advancement revoke @s only under_pack:miku/rifle

# Make sure delay is accurate
execute if score @s ability1 matches 1.. run return fail
scoreboard players set @s movement 0
execute anchored eyes run function under_pack:miku/rifle_raycast
scoreboard players set @s ability1 10

#playsound minecraft:item.crossbow.shoot master @a ~ ~ ~ 1 1
playsound minecraft:item.mace.smash_ground master @a ~ ~ ~ 0.3 2
playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 0.5 0.1
#execute anchored eyes run particle campfire_cosy_smoke ^ ^ ^1 0 0 0 0.01 3