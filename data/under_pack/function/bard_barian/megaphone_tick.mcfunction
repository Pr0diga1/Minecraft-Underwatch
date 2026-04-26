advancement revoke @s only under_pack:bard_barian/use_megaphone
scoreboard players add @s ability4 1
scoreboard players set @s ability5 3
scoreboard players operation @s ability6 = @s ability4
scoreboard players operation @s ability6 %= 2 constant
execute if score @s ability3 matches 1 at @s run function under_pack:bard_barian/march/march_boost_tick
execute if score @s ability3 matches 2 if score @s ability6 matches 0 at @s run function under_pack:bard_barian/lovers/lover_boost_tick
execute if score @s ability3 matches 3 if score @s ability5 matches 2 at @s run function under_pack:bard_barian/stand/stand_boost_tick
