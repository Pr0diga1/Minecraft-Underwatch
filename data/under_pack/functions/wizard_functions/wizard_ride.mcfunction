#summon the snowball
execute at @s[team=uRed] anchored eyes run summon snowball ^ ^ ^0.5 {Tags:["redWizardRide"],Item:{id:"minecraft:blaze_rod",Count:1b}}
execute at @s[team=uBlue] anchored eyes run summon snowball ^ ^ ^0.5 {Tags:["blueWizardRide"],Item:{id:"minecraft:blaze_rod",Count:1b}}

#set the velo
#snowball set its velo
execute as @s[team=uRed] as @e[type=snowball,tag=!snowballMoved,tag=redWizardRide] at @s rotated as @p[team=uRed] run function under_pack:wizard_functions/wizard_ride_velo
execute as @s[team=uBlue] as @e[type=snowball,tag=blueWizardRide] at @s rotated as @p[team=uBlue] run function under_pack:wizard_functions/wizard_ride_velo

#reset
scoreboard players reset @s reset