#summon the shulker shell
execute as @s[team=uRed] at @s anchored eyes run summon shulker_bullet ^ ^ ^1 {Steps:15,Tags:["redWizardShell"]}
execute as @s[team=uBlue] at @s anchored eyes run summon shulker_bullet ^ ^ ^1 {Steps:15,Tags:["blueWizardShell"]}

execute at @s[team=uRed] run data modify entity @e[type=shulker_bullet,tag=redWizardShell,limit=1,sort=nearest] Owner set from entity @s UUID
execute at @s[team=uRed] run data modify entity @e[type=shulker_bullet,tag=redWizardShell,limit=1,sort=nearest] Target set from entity @a[tag=redWizardTarget,limit=1,sort=nearest] UUID

execute at @s[team=uBlue] run data modify entity @e[type=shulker_bullet,tag=blueWizardShell,limit=1,sort=nearest] Owner set from entity @s UUID
execute at @s[team=uBlue] run data modify entity @e[type=shulker_bullet,tag=blueWizardShell,limit=1,sort=nearest] Target set from entity @a[tag=blueWizardTarget,limit=1,sort=nearest] UUID

#replace the inventory slot
item replace entity @s hotbar.4 with air
#reset the cooldown
scoreboard players set @s ability4 0