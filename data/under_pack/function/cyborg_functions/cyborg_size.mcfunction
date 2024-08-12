scoreboard players add @s cyborgcap 1
experience add @s 1 levels
execute store result score @s cyborgsize run attribute @s generic.scale base get 100
scoreboard players operation @s cyborgsize -= 2 constant
scoreboard players set @s cyborgsizebuffer 80
execute store result storage cyborg size.red double .01 run scoreboard players get @s[team=uRed] cyborgsize 
execute store result storage cyborg size.blue double .01 run scoreboard players get @s[team=uBlue] cyborgsize
function under_pack:cyborg_functions/cyborg_size_mod with storage cyborg size