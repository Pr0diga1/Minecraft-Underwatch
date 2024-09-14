clear @s
tag @s remove ungame
gamemode adventure @s
spawnpoint @s 57 147 7
scoreboard players reset @s Kills
effect clear @s
effect give @s minecraft:saturation infinite 255 true
execute as @s[scores={heart=13..20}] run effect give @s instant_damage 1 1
execute as @s[scores={heart=21..}] run effect give @s instant_damage 1 2
effect give @s regeneration 2 50
team join white @s
scoreboard players set @s class 0
tp @s 57 147 7
scoreboard players set @s Reset 0
scoreboard players set @s hitByFreeze 0
function under_pack:trigger_functions/unlock

#removes xp
experience set @s 0 levels
experience set @s 0 points