# Make sure to check for when they stop clicking
scoreboard players set @s ability1 2
tag @s add playing_axe

# Count down between notes
scoreboard players remove @s ability2 1

# Spawn notes
execute if score @s ability2 matches ..0 run function under_pack:bard_barian/axe_summon

advancement revoke @s only under_pack:play_axe_guitar