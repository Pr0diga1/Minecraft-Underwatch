effect give @s speed 1 30 true
effect give @s absorption 3 0 true
particle minecraft:dust{color:[0.020,0.314,1.000],scale:1} ~ ~ ~ 1.5 0 1.5 0 200 normal
item replace entity @s hotbar.5 with barrier[custom_name={"text":"WD-40 on cooldown"}] 11
scoreboard players set @s ability6 220