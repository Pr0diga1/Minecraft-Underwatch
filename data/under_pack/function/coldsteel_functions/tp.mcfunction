execute at @s[team=uRed] positioned ~ ~1.5 ~ summon ender_pearl run function under_pack:coldsteel_functions/tp_velo_red
execute at @s[team=uBlue] positioned ~ ~1.5 ~ summon ender_pearl run function under_pack:coldsteel_functions/tp_velo_blue

execute at @s run playsound minecraft:entity.ender_pearl.throw master @s ~ ~ ~ 5 1

scoreboard players reset @s reset
scoreboard players set @s ability2 80