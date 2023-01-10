## Give inventory
clear @s
# Main weapon


## Ult stuff
# Ult charge
scoreboard players set @s ultKills 0
scoreboard players set @s ultKillsBuffer 0
scoreboard players set @s ultTicks 0
scoreboard players set @s ultDamage 0
scoreboard players set @s ultCharge 0
# Removes xp
experience set @s 0 levels
experience set @s 0 points
# Ult on scores
scoreboard players set @s alchemistUltActive 0
scoreboard players set @s alchemistUltTiming 0

## Ult Config
# Constants for ult charge
scoreboard players set alchemistUltKills modifier 600
# ULT PERCENT IS ULT GOAL /100
scoreboard players set alchemistUltPercent modifier 50
#goal is 4500