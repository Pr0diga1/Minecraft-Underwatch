#summon the fireball
execute at @s anchored eyes run summon fireball ^ ^ ^0.5 {Tags:["blueWizardFireball"],ExplosionPower:1}

#reset
scoreboard players reset @s reset

#cooldown
scoreboard players set @s movement 0

#kill the snowball that cast it
kill @e[type=snowball,nbt={Item:{tag:{wizardFireball:1b,blue:1b}}}]