#damage
execute at @s run summon arrow ~ ~3 ~ {NoGravity:1b,damage:1.5d,Motion:[0.0,-5.0,0.0]}
#sweep particle and sound
execute at @s run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~
execute at @s run particle minecraft:sweep_attack ~ ~1 ~
#give the hit tag
tag @s add ninjaHit