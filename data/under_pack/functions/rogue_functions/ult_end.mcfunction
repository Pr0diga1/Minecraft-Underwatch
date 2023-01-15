#reseting ult scoreboards
scoreboard players set @s ultKills 0
scoreboard players set @s ultKillsBuffer 0
scoreboard players set @s ultTicks 0
scoreboard players set @s ultDamage 0
scoreboard players set @s ultCharge 0
scoreboard players set @s rogueUltActive 0
scoreboard players set @s rogueUltTiming 0
scoreboard players set @s rogueUltTimingBuffer 0

#removes xp
experience set @s 0 levels
experience set @s 0 points

# Remove various tags and items
tag @s remove executing
item replace entity @s hotbar.8 with air
