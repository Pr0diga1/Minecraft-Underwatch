execute at @s[team=uRed] anchored eyes run summon fireball ^ ^ ^0.5 {Tags:["redWizardFireball"],ExplosionPower:2}
execute at @s[team=uBlue] anchored eyes run summon fireball ^ ^ ^0.5 {Tags:["blueWizardFireball"],ExplosionPower:2}

#reset
scoreboard players reset @s reset

#cooldown
scoreboard players set @s movement 0
item replace entity @s hotbar.1 with carrot_on_a_stick{Damage:25,display:{Name:'{"text":"Ignis Sphaerus","color":"gold","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"It\'s wizard time"}']},wizardFireball:1b} 1
