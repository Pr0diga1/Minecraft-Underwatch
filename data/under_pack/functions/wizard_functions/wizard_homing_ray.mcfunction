#the marker has existed for another tick
scoreboard players add distance wizardCurse 1

#kill the marker if its in a block or has existed for 4 seconds
execute unless block ~ ~ ~ #under_pack:non_solid run scoreboard players set hit wizardCurse 1

#particle
particle dust 0 0 0 1 ^ ^ ^2 0 0 0 0 1 force @s

#hits a player
execute if entity @s[team=uRed] positioned ~-1 ~-1 ~-1 as @a[dx=2,dy=2,dz=2,team=uBlue,limit=1,sort=nearest] run tag @s add redWizardTarget
execute if entity @s[team=uBlue] positioned ~-1 ~-1 ~-1 as @a[dx=2,dy=2,dz=2,team=uRed,limit=1,sort=nearest] run tag @s add blueWizardTarget

#playsound
execute as @s[team=uRed] if entity @a[tag=redWizardTarget] at @s run playsound entity.arrow.hit_player master @s
execute as @s[team=uBlue] if entity @a[tag=blueWizardTarget] at @s run playsound entity.arrow.hit_player master @s

#rerun command
execute as @s[team=uRed] if score hit wizardCurse matches 0 unless entity @a[tag=redWizardTarget] if score distance wizardCurse matches ..180 positioned ^ ^ ^.5 run function under_pack:wizard_functions/wizard_homing_ray
execute as @s[team=uBlue] if score hit wizardCurse matches 0 unless entity @a[tag=blueWizardTarget] if score distance wizardCurse matches ..180 positioned ^ ^ ^.5 run function under_pack:wizard_functions/wizard_homing_ray