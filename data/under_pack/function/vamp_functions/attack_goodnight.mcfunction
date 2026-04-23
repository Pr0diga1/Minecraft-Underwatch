#reset goodnight
scoreboard players set @s vampgoodnight 0
scoreboard players set @s vampattack 0
tag @s add blackflash
#left and right
execute at @s run function under_pack:vamp_functions/attack_2
execute at @s run function under_pack:vamp_functions/attack_4
tag @a remove vamphitbyray
tag @s remove blackflash