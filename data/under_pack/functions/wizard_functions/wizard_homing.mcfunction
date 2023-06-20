#add one to the curse timer
scoreboard players add @s wizardCurse 1

#run blue particles
execute as @s[team=uRed,scores={wizardCurse=..30}] at @a[tag=redWizardTarget] run particle dust 0 0 1 1 ~ ~1 ~ 0.3 0.6 0.3 0 9 force @s
execute as @s[team=uBlue,scores={wizardCurse=..30}] at @a[tag=blueWizardTarget] run particle dust 0 0 1 1 ~ ~1 ~ 0.3 0.6 0.3 0 9 force @s
execute as @s[team=uRed,scores={wizardCurse=..30}] at @a[tag=redWizardTarget] run particle dust 0 0 0 1 ~ ~1 ~ 0.3 0.6 0.3 0 4 force @s
execute as @s[team=uBlue,scores={wizardCurse=..30}] at @a[tag=blueWizardTarget] run particle dust 0 0 0 1 ~ ~1 ~ 0.3 0.6 0.3 0 4 force @s

#playsound if it hits a player
execute as @s[team=uRed,scores={wizardCurse=31}] if entity @a[tag=redWizardTarget] run playsound entity.arrow.hit_player master @s
execute as @s[team=uBlue,scores={wizardCurse=31}] if entity @a[tag=blueWizardTarget] run playsound entity.arrow.hit_player master @s

#run red particles
execute as @s[team=uRed,scores={wizardCurse=31..}] at @a[tag=redWizardTarget] run particle dust 1 0 0 1 ~ ~1 ~ 0.3 0.6 0.3 0 16 force @s
execute as @s[team=uBlue,scores={wizardCurse=31..}] at @a[tag=blueWizardTarget] run particle dust 1 0 0 1 ~ ~1 ~ 0.3 0.6 0.3 0 16 force @s