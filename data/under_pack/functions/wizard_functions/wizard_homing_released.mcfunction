#shoot the thing if it should
execute as @s[team=uRed,scores={wizardCurse=31..}] if entity @a[tag=redWizardTarget] run function under_pack:wizard_functions/wizard_homing_shoot
execute as @s[team=uBlue,scores={wizardCurse=31..}] if entity @a[tag=blueWizardTarget] run function under_pack:wizard_functions/wizard_homing_shoot

#remove the tag
execute as @s[team=uRed] as @a[tag=redWizardTarget] run tag @s remove redWizardTarget
execute as @s[team=uBlue] as @a[tag=blueWizardTarget] run tag @s remove blueWizardTarget

#set the count back to 0
scoreboard players set @s wizardCurse 0