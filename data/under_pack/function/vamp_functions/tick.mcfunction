#attack buffer
execute if score @s vampattack matches 1.. if score @s vampattack = @s vampattackbuffer run function under_pack:vamp_functions/attack_ended
scoreboard players operation @s vampattackbuffer = @s vampattack

#ticky
execute as @s[team=uRed] run function under_pack:vamp_functions/tick_red
execute as @s[team=uBlue] run function under_pack:vamp_functions/tick_blue


execute if score @s ability1 matches 1.. run function under_pack:vamp_functions/bat_cooldown
execute if score @s ability2 matches 1.. run function under_pack:vamp_functions/bomb_cooldown

#xp bar bar_cooldown
execute if score @s ability8 matches ..719 run experience add @s 24
execute if score @s ability8 matches ..719 run scoreboard players add @s ability8 24
execute if score @s ability8 matches 720 run item modify entity @s hotbar.0 under_pack:vamp/shearadd
execute if score @s ability8 matches 720 run experience set @s 741 points
execute if score @s ability8 matches 720 run scoreboard players set @s ability8 741