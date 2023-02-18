#amount of times the ray has been cast
scoreboard players set @s wizardDistance 0
#has the ray hit a block yet
scoreboard players set @s wizardHit 0
#summon the guy
summon marker ~ ~ ~ {Tags:["wizardClaw"]}
#tp the guy
tp @e[type=marker,tag=wizardClaw] @s
#reposition the guy
execute store result entity @e[type=marker,tag=wizardClaw,limit=1] Rotation[1] float 1 run scoreboard players get TheNumberZero constant
#run the ray
execute at @e[type=marker,tag=wizardClaw,limit=1] anchored feet positioned ^0.5 ^ ^2.3 anchored feet run function under_pack:wizard_functions/wizard_claws_ray
#amount of times the ray has been cast
scoreboard players set @s wizardDistance 0
#has the ray hit a block yet
scoreboard players set @s wizardHit 0
#run the ray again
execute at @e[type=marker,tag=wizardClaw,limit=1] anchored feet positioned ^-0.5 ^ ^1.7 anchored feet run function under_pack:wizard_functions/wizard_claws_ray
#kill the marker
kill @e[type=marker,tag=wizardClaw]
#set the claw teams
execute as @e[type=evoker_fangs,tag=red] at @s run data modify entity @s Owner set from entity @a[team=uRed,scores={class=10},limit=1,sort=nearest] UUID
execute as @e[type=evoker_fangs,tag=blue] at @s run data modify entity @s Owner set from entity @a[team=uBlue,scores={class=10},limit=1,sort=nearest] UUID

scoreboard players set @s ability2 0
item replace entity @s hotbar.3 with air