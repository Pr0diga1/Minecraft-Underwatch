#resets the damage timer
scoreboard players set @s elementalFireHit 0
#summon the arrow for damage
execute at @s run summon arrow ~ ~3 ~ {NoGravity:1b,damage:0.5d,Motion:[0.0,-5.0,0.0],Tags:["ElementalFireArrow"]}
execute at @s[team=uRed] run data modify entity @e[type=arrow,limit=1,sort=nearest,tag=ElementalFireArrow] Owner set from entity @a[scores={class=12},team=uBlue,limit=1,sort=nearest] UUID
execute at @s[team=uBlue] run data modify entity @e[type=arrow,limit=1,sort=nearest,tag=ElementalFireArrow] Owner set from entity @a[scores={class=12},team=uRed,limit=1,sort=nearest] UUID
