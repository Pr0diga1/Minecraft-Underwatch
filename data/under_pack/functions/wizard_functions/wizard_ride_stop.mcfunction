#reset the ability 
scoreboard players set @s ability5 0
scoreboard players set @s wizardRideTimer 0
#dismount
ride @s dismount
#kill chicken
execute as @s[team=uRed] run tp @e[type=chicken,tag=redWizardRiden] 0 -64 0
execute as @s[team=uBlue] run tp @e[type=chicken,tag=blueWizardRiden] 0 -64 0
execute as @s[team=uRed] run kill @e[type=marker,tag=redWizardMark]
execute as @s[team=uBlue] run kill @e[type=marker,tag=blueWizardMark]