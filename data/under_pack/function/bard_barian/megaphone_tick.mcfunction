advancement revoke @s only under_pack:bard_barian/use_megaphone
scoreboard players add @s ability4 1
scoreboard players set @s ability5 3
execute if score @s ability3 matches 1 at @s run function under_pack:bard_barian/march/march_boost_tick
