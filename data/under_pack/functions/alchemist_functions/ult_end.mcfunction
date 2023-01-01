#reseting ult scoreboards
scoreboard players set @s ultKills 0
scoreboard players set @s ultKillsBuffer 0
scoreboard players set @s ultTicks 0
scoreboard players set @s ultDamage 0
scoreboard players set @s ultCharge 0

#removes xp
experience set @s 0 levels
experience set @s 0 points

# Removes tag and bottle
tag @s remove ulting
clear @s glass_bottle