scoreboard players set @s ability3 0

execute unless entity @s[tag=parried] run return run playsound minecraft:item.shield.break master @s ~ ~ ~ 1 1
tag @s remove parried