scoreboard players reset @s reset

execute at @s run particle dust 0.010 0.616 1.000 1 ~ ~ ~ 2.5 .1 2.5 1 1000 force
execute if entity @s[team=uRed] at @s run effect give @a[distance=..3,team=uBlue] speed 1 50 true
execute if entity @s[team=uBlue] at @s run effect give @a[distance=..3,team=uRed] speed 1 50 true
execute at @s run effect give @s speed 1 50 true
scoreboard players set @s engineer_wd 4

scoreboard players set @s ability4 0
item replace entity @s hotbar.4 with potato{CustomModelData:1,display:{Name:'{"text":"WD-40 on Cooldown"}'}} 1 
