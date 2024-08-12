#summon the fireball
execute at @s anchored eyes run summon fireball ^ ^ ^0.5 {Tags:["blueWizardFireball"],ExplosionPower:2}

#reset
scoreboard players reset @s reset
scoreboard players remove @s wizardFireball 1
