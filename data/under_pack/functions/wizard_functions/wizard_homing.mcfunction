#add one to the curse timer
scoreboard players add @s wizardCurse 1

#run blue particles
execute as @s[team=uRed,scores={wizardCurse=..40}] at @a[tag=redWizardTarget] run particle dust 0 0 1 1 ~ ~2 ~ 0.4 0 0.4 0 5 force @s
execute as @s[team=uBlue,scores={wizardCurse=..40}] at @a[tag=blueWizardTarget] run particle dust 0 0 1 1 ~ ~2 ~ 0.4 0 0.4 0 5 force @s

#run red particles
execute as @s[team=uRed,scores={wizardCurse=41..}] at @a[tag=redWizardTarget] run particle dust 1 0 0 1 ~ ~2 ~ 0.4 0 0.4 0 5 force @s
execute as @s[team=uBlue,scores={wizardCurse=41..}] at @a[tag=blueWizardTarget] run particle dust 1 0 0 1 ~ ~2 ~ 0.4 0 0.4 0 5 force @s