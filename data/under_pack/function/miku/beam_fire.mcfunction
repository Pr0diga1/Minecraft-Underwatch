function under_pack:miku/give_beam
advancement revoke @s only under_pack:miku/beam

say hi

# Actual raycast
scoreboard players set @s movement 0
execute positioned ~ ~ ~ anchored eyes run function under_pack:miku/beam_raycast_damage