function under_pack:miku/give_beam
advancement revoke @s only under_pack:miku/beam

playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 1 2
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 2
particle flash{color:[0.400,0.900,1.000,1.000]} ~ ~ ~ 0 0 0 0 1 force @a

# Actual raycast
scoreboard players set @s movement 0
execute positioned ~ ~ ~ anchored eyes run function under_pack:miku/beam_raycast_damage