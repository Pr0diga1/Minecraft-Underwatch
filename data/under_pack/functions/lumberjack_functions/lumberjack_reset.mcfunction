#ult charge
scoreboard players set @s ultKills 0
scoreboard players set @s ultKillsBuffer 0
scoreboard players set @s ultTicks 0
scoreboard players set @s ultDamage 0
scoreboard players set @s ultCharge 0
#removes xp
experience set @s 0 levels
experience set @s 0 points
scoreboard players set @s lumberjack_ult_casts 0
kill @e[tag=lumber_giant]
kill @e[tag=lumber_ult]
item replace entity @s hotbar.8 with air
function under_pack:lumberjack_functions/lumberjack_respawn


