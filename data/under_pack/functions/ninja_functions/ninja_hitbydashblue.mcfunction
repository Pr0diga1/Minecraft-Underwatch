#damage
execute if entity @a[team=uBlue,scores={ninjaUltActive=1}] at @s run summon arrow ~ ~3 ~ {NoGravity:1b,damage:1.8d,Motion:[0.0,-5.0,0.0],Tags:["ninjaDashArrow"]}
execute if entity @a[team=uBlue,scores={ninjaUltActive=0}] at @s run summon arrow ~ ~3 ~ {NoGravity:1b,damage:1.4d,Motion:[0.0,-5.0,0.0],Tags:["ninjaDashArrow"]}
execute at @s run data modify entity @e[type=arrow,limit=1,sort=nearest,tag=ninjaDashArrow] Owner set from entity @a[tag=dashing,limit=1,sort=nearest] UUID
#sweep particle and sound
execute at @s run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~
execute at @s run particle minecraft:sweep_attack ~ ~1 ~
#give the hit tag
tag @s add ninjaHit