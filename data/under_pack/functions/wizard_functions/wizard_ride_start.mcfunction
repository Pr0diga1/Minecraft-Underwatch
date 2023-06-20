#start the timer
scoreboard players set @s wizardRideTimer 0
#summon the cloud
execute at @s[team=uRed] run summon chicken ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["redWizardRiden"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:200,ShowParticles:0b}]}
execute at @s[team=uBlue] run summon chicken ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["blueWizardRiden"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:200,ShowParticles:0b}]}
#summon the markers
execute at @s[team=uRed] run summon marker ~ ~ ~ {Tags:["redWizardMark"]}
execute at @s[team=uBlue] run summon marker ~ ~ ~ {Tags:["blueWizardMark"]}