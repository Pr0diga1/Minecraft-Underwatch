scoreboard players reset @s reset
#execute unless entity @s[scores={coldsteellunge=-1},nbt={OnGround:0b}] run return fail
execute unless entity @s[scores={coldsteellunge=-1}] run return fail

#trigger the dash
scoreboard players set @s coldsteellunge 1
