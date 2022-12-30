scoreboard players set @s lumberjack_ult_charge 0
experience set @s 0 levels
kill @e[tag=lumber_giant]
kill @e[tag=lumber_ult]
item replace entity @s hotbar.8 with air
function under_pack:lumberjack_functions/lumberjack_respawn


