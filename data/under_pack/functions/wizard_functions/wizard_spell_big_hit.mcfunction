#marks that they have recently been hit by a spell
execute as @s[team=uRed] run scoreboard players set @s wizardBlueHit 10
execute as @s[team=uBlue] run scoreboard players set @s wizardRedHit 10

#summon the arrow for damage
execute at @s run summon arrow ~ ~3 ~ {NoGravity:1b,damage:1.4d,Motion:[0.0,-5.0,0.0],Tags:["wizardBigSpellArrow"]}
execute at @s[team=uRed] run data modify entity @e[type=arrow,limit=1,sort=nearest,tag=wizardBigSpellArrow] Owner set from entity @a[scores={class=10},team=uBlue,limit=1,sort=nearest] UUID
execute at @s[team=uBlue] run data modify entity @e[type=arrow,limit=1,sort=nearest,tag=wizardBigSpellArrow] Owner set from entity @a[scores={class=10},team=uRed,limit=1,sort=nearest] UUID
