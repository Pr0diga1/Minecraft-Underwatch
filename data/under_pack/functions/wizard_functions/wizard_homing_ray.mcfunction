#the marker has existed for another tick
scoreboard players add distance wizardCurse 1

#kill the marker if its in a block or has existed for 4 seconds
execute unless block ~ ~ ~ #under_pack:non_solid run scoreboard players set hit wizardCurse 1

#hits a player
execute if entity @s[team=uRed] positioned ~-1 ~-1 ~-1 as @a[dx=2,dy=2,dz=2,team=uBlue,limit=1,sort=nearest] run tag @s add redWizardTarget
execute if entity @s[team=uBlue] positioned ~-1 ~-1 ~-1 as @a[dx=2,dy=2,dz=2,team=uRed,limit=1,sort=nearest] run tag @s add blueWizardTarget

#rerun command
execute if score hit wizardCurse matches 0 if score distance wizardCurse matches ..180 positioned ^ ^ ^.5 run function under_pack:wizard_functions/wizard_homing_ray