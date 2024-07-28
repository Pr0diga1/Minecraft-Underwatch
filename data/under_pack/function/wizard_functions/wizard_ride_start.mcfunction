#start the timer
scoreboard players set @s wizardRideTimer 0
#summon the cloud
execute at @s[team=uRed] run summon chicken ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["redWizardRiden"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:200,show_particles:0b}]}
execute at @s[team=uBlue] run summon chicken ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["blueWizardRiden"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:200,show_particles:0b}]}
#summon the markers
execute at @s[team=uRed] run summon marker ~ ~ ~ {Tags:["redWizardMark"]}
execute at @s[team=uBlue] run summon marker ~ ~ ~ {Tags:["blueWizardMark"]}
