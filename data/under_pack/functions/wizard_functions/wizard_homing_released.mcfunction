#remove the tag
execute as @s[team=uRed] as @a[tag=redWizardTarget] run tag @s remove redWizardTarget
execute as @s[team=uBlue] as @a[tag=blueWizardTarget] run tag @s remove blueWizardTarget

#set the count back to 0
scoreboard players set @s wizardCurse 0