scoreboard players operation @s cyborgsize += 2 constant
execute store result storage cyborg size.red double .01 run scoreboard players get @s[team=uRed] cyborgsize 
execute store result storage cyborg size.blue double .01 run scoreboard players get @s[team=uBlue] cyborgsize
function under_pack:cyborg_functions/cyborg_size_mod with storage cyborg size