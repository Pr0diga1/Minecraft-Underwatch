scoreboard players set hit wizardCurse 0
scoreboard players set distance wizardCurse 0
function under_pack:wizard_functions/wizard_homing_ray
particle dust 0 0 0 1 ^ ^ ^1 0 0 0 0 1 force @s
particle dust 0 0 0 1 ^ ^ ^2 0 0 0 0 1 force @s
execute as @s[team=uRed] if entity @a[tag=redWizardTarget] run title @s actionbar {"text":"curse found target","color": "black"}
execute as @s[team=uBlue] if entity @a[tag=blueWizardTarget] run title @s actionbar {"text":"curse found target","color": "black"}