#reset the ability 
scoreboard players set @s ability5 0
#clear resistance
effect clear @s resistance
#dismount
ride @s dismount
#kill chicken
execute as @s[team=uRed] run tp @e[type=chicken,tag=redWizardRiden] 0 -70 0
execute as @s[team=uBlue] run tp @e[type=chicken,tag=blueWizardRiden] 0 -70 0
execute as @s[team=uRed] as @e[type=chicken,tag=redWizardRiden] run kill @s
execute as @s[team=uBlue] as @e[type=chicken,tag=blueWizardRiden] run kill @s
execute as @s[team=uRed] run kill @e[type=marker,tag=redWizardMark]
execute as @s[team=uBlue] run kill @e[type=marker,tag=blueWizardMark]
#say wizardRide has not been running
scoreboard players set @s wizardRide 0