#add one to the curse timer
scoreboard players add @s wizardCurse 1

#run blue particles
execute as @s[team=uRed,scores={wizardCurse=..30}] at @a[tag=redWizardTarget] run particle dust 0 0 1 1 ~ ~2 ~ 0.3 0 0.3 0 5 force @s
execute as @s[team=uBlue,scores={wizardCurse=..30}] at @a[tag=blueWizardTarget] run particle dust 0 0 1 1 ~ ~2 ~ 0.3 0 0.3 0 5 force @s

#tell them if its locked
execute as @s[team=uRed,scores={wizardCurse=31}] if entity @a[tag=redWizardTarget] run title @s actionbar {"text":"curse locked","color": "black"}
execute as @s[team=uBlue,scores={wizardCurse=31}] if entity @a[tag=blueWizardTarget] run title @s actionbar {"text":"curse locked","color": "black"}

#run red particles
execute as @s[team=uRed,scores={wizardCurse=31..}] at @a[tag=redWizardTarget] run particle dust 1 0 0 1 ~ ~2 ~ 0.3 0 0.3 0 5 force @s
execute as @s[team=uBlue,scores={wizardCurse=31..}] at @a[tag=blueWizardTarget] run particle dust 1 0 0 1 ~ ~2 ~ 0.3 0 0.3 0 5 force @s