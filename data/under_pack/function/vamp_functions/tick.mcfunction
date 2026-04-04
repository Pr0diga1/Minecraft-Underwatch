#attack buffer
execute if score @s vampattack matches 1.. if score @s vampattack = @s vampattackbuffer run function under_pack:vamp_functions/attack_ended
scoreboard players operation @s vampattackbuffer = @s vampattack

#ticky
execute as @s[team=uRed] run function under_pack:vamp_functions/tick_red
execute as @s[team=uBlue] run function under_pack:vamp_functions/tick_blue


execute if score @s ability1 matches 1.. run function under_pack:vamp_functions/bat_cooldown
execute if score @s ability2 matches 1.. run function under_pack:vamp_functions/bomb_cooldown