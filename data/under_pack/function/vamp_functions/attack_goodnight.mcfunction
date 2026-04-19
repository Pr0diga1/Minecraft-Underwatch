#reset goodnight
scoreboard players set @s vampgoodnight 0
scoreboard players set @s vampattack 0

#left and right
execute at @s run function under_pack:vamp_functions/attack_2
execute at @s run function under_pack:vamp_functions/attack_4