#damage
execute at @s run damage @s 6.5 player_attack by @a[tag=dashing,limit=1,sort=nearest]
#sweep particle and sound
execute at @s run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~
execute at @s run particle minecraft:sweep_attack ~ ~1 ~
#give the hit tag
tag @s add ninjaHit