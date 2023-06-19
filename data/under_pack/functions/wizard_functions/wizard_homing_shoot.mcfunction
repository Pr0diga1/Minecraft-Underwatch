#summon the shulker shell
execute as @s[team=uRed] at @s anchored eyes run summon shulker_bullet ^ ^ ^1 {Steps:15,Tags:["redWizardShell"]}
execute as @s[team=uBlue] at @s anchored eyes run summon shulker_bullet ^ ^ ^1 {Steps:15,Tags:["blueWizardShell"]}
execute as @s[team=uRed] at @s anchored eyes run summon shulker_bullet ^.5 ^ ^1 {Steps:15,Tags:["redWizardShell"]}
execute as @s[team=uBlue] at @s anchored eyes run summon shulker_bullet ^.5 ^ ^1 {Steps:15,Tags:["blueWizardShell"]}
execute as @s[team=uRed] at @s anchored eyes run summon shulker_bullet ^-.5 ^ ^1 {Steps:15,Tags:["redWizardShell"]}
execute as @s[team=uBlue] at @s anchored eyes run summon shulker_bullet ^-.5 ^ ^1 {Steps:15,Tags:["blueWizardShell"]}

execute at @s[team=uRed] as @e[type=shulker_bullet,tag=redWizardShell] run data modify entity @s Owner set from entity @a[team=uRed,scores={class=10},limit=1,sort=nearest] UUID
execute at @s[team=uRed] as @e[type=shulker_bullet,tag=redWizardShell] run data modify entity @s Target set from entity @a[tag=redWizardTarget,limit=1,sort=nearest] UUID

execute at @s[team=uBlue] as @e[type=shulker_bullet,tag=blueWizardShell] run data modify entity @s Owner set from entity @a[team=uBlue,scores={class=10},limit=1,sort=nearest] UUID
execute at @s[team=uBlue] as @e[type=shulker_bullet,tag=blueWizardShell] run data modify entity @s Target set from entity @a[tag=blueWizardTarget,limit=1,sort=nearest] UUID

#playsound
execute at @s run playsound minecraft:entity.pillager.celebrate master @a ~ ~ ~ 10 1.4

#replace the inventory slot
item replace entity @s hotbar.4 with air
#reset the cooldown
scoreboard players set @s ability4 0