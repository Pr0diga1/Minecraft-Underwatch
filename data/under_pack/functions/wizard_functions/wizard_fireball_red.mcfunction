#summon the fireball
execute at @s anchored eyes run summon fireball ^ ^ ^0.5 {Tags:["redWizardFireball"],ExplosionPower:1}

#reset
scoreboard players reset @s reset

#kill the snowball that cast it
kill @e[type=snowball,nbt={Item:{tag:{wizardFireball:1b,red:1b}}}]