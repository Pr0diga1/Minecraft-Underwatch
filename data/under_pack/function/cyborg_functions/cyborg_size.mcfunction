scoreboard players add @s cyborgcap 8
experience add @s 8 points
execute store result score @s cyborgsize run attribute @s scale base get 100
scoreboard players operation @s cyborgsize -= 2 constant
scoreboard players set @s cyborgsizebuffer 105
execute store result storage cyborg size.red double .01 run scoreboard players get @s[team=uRed] cyborgsize 
execute store result storage cyborg size.blue double .01 run scoreboard players get @s[team=uBlue] cyborgsize
execute unless score @s cyborgsize matches ..30 run function under_pack:cyborg_functions/cyborg_size_mod with storage cyborg size

advancement revoke @s only under_pack:cyborg/size