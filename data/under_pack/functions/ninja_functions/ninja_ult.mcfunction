#ult is active
scoreboard players set @s ninjaUltActive 1
scoreboard players set @s ninjaUltTiming 160

#effect
effect give @s speed 8 1
#clears carrot on stick
item replace entity @s hotbar.8 with air

#give 8 levels
experience set @s 8 levels