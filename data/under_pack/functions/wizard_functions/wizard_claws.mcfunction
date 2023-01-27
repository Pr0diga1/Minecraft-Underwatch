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
execute at @e[type=marker,tag=wizardClaw,limit=1] anchored feet positioned ^ ^ ^2 anchored feet run function under_pack:wizard_functions/wizard_claws_ray
kill @e[type=marker,tag=wizardClaw]
#schedule the claw deleting
execute as @s[team=uRed] run schedule function under_pack:wizard_functions/wizard_claws_red 8t
execute as @s[team=uBlue] run schedule function under_pack:wizard_functions/wizard_claws_blue 8t
scoreboard players set @s ability2 0
item replace entity @s hotbar.3 with air