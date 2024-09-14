#make the firework
summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16740421,14271024,3583346,11689686,4875007]},{Type:1,Colors:[I;16740421,14271024,3583346,11689686,4875007]},{Type:1,Colors:[I;16740421,14271024,3583346,11689686,4875007]},{Type:1,Colors:[I;16740421,14271024,3583346,11689686,4875007]},{Type:2,Colors:[I;16711680]},{Type:2,Colors:[I;16711680]}]}}}}

#deal damage
execute if score @s[tag=redWizardRainbow] wizardDistance matches ..40 as @a[team=uBlue,distance=..3] at @s run summon arrow ~ ~3 ~ {NoGravity:1b,damage:1.2d,Motion:[0.0,-5.0,0.0],Tags:["redWizardArrow"]}
execute if score @s[tag=blueWizardRainbow] wizardDistance matches ..40 as @a[team=uRed,distance=..3] at @s run summon arrow ~ ~3 ~ {NoGravity:1b,damage:1.2d,Motion:[0.0,-5.0,0.0],Tags:["blueWizardArrow"]}


execute if score @s[tag=redWizardRainbow] wizardDistance matches 41..80 as @a[team=uBlue,distance=..2] at @s run summon arrow ~ ~3 ~ {NoGravity:1b,damage:2.3d,Motion:[0.0,-5.0,0.0],Tags:["redWizardArrow"]}
execute if score @s[tag=redWizardRainbow] wizardDistance matches 41..80 as @a[team=uBlue,distance=2..4] at @s run summon arrow ~ ~3 ~ {NoGravity:1b,damage:1.7d,Motion:[0.0,-5.0,0.0],Tags:["redWizardArrow"]}
execute if score @s[tag=blueWizardRainbow] wizardDistance matches 41..80 as @a[team=uRed,distance=..2] at @s run summon arrow ~ ~3 ~ {NoGravity:1b,damage:2.3d,Motion:[0.0,-5.0,0.0],Tags:["blueWizardArrow"]}
execute if score @s[tag=blueWizardRainbow] wizardDistance matches 41..80 as @a[team=uRed,distance=2..4] at @s run summon arrow ~ ~3 ~ {NoGravity:1b,damage:1.7d,Motion:[0.0,-5.0,0.0],Tags:["blueWizardArrow"]}


execute if score @s[tag=redWizardRainbow] wizardDistance matches 81.. as @a[team=uBlue,distance=..3] at @s run summon arrow ~ ~3 ~ {NoGravity:1b,damage:3.3d,Motion:[0.0,-5.0,0.0],Tags:["redWizardArrow"]}
execute if score @s[tag=redWizardRainbow] wizardDistance matches 81.. as @a[team=uBlue,distance=3..5] at @s run summon arrow ~ ~3 ~ {NoGravity:1b,damage:2.4d,Motion:[0.0,-5.0,0.0],Tags:["redWizardArrow"]}
execute if score @s[tag=blueWizardRainbow] wizardDistance matches 81.. as @a[team=uRed,distance=..3] at @s run summon arrow ~ ~3 ~ {NoGravity:1b,damage:3.3d,Motion:[0.0,-5.0,0.0],Tags:["blueWizardArrow"]}
execute if score @s[tag=blueWizardRainbow] wizardDistance matches 81.. as @a[team=uRed,distance=3..5] at @s run summon arrow ~ ~3 ~ {NoGravity:1b,damage:2.4d,Motion:[0.0,-5.0,0.0],Tags:["blueWizardArrow"]}


#set the arrow owner
execute at @s[tag=redWizardRainbow] run data modify entity @e[type=arrow,limit=1,sort=nearest,tag=redWizardArrow] Owner set from entity @a[scores={class=10},limit=1,sort=nearest,team=uRed] UUID
execute at @s[tag=blueWizardRainbow] run data modify entity @e[type=arrow,limit=1,sort=nearest,tag=blueWizardArrow] Owner set from entity @a[scores={class=10},limit=1,sort=nearest,team=uBlue] UUID

#kill the marker
kill @s